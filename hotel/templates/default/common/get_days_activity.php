<?php
require_once('../../../common/lib.php');
require_once('../../../common/define.php');

if(isset($db) && $db !== false){
        
    if(isset($_POST['currentMonth']) && is_numeric($_POST['currentMonth'])
    && isset($_POST['currentYear']) && is_numeric($_POST['currentYear'])){

        $currentMonth = $_POST['currentMonth'];
        $currentYear = $_POST['currentYear'];
        
        if(isset($_POST['activity']) && is_numeric($_POST['activity'])) $activity_id = $_POST['activity'];
        else $activity_id = 0;

        $bookings = array();
        $booked_sessions = array();
        $sessions = array();
        $days = array('booked' => array(), 'free' => array());

        $start_month = gm_strtotime($currentYear.'-'.$currentMonth.'-1 00:00:00');
        $nb_days = gmdate('t', $start_month);
        $end_month = gm_strtotime($currentYear.'-'.$currentMonth.'-'.$nb_days.' 00:00:00');
        $today = gm_strtotime(gmdate('Y').'-'.gmdate('n').'-'.gmdate('j').' 00:00:00');

        $query_session = 'SELECT start_date, end_date, days, id_activity_session, start_h, start_m, max_people FROM pm_activity, pm_activity_session, pm_activity_session_hour WHERE start_date <= '.$end_month.' AND end_date >= '.$start_month.' AND id_activity_session = pm_activity_session.id AND id_activity = pm_activity.id';
        if($activity_id != 0) $query_session .= ' AND id_activity = '.$activity_id;
        $query_session .= ' GROUP BY pm_activity_session_hour.id ORDER BY id_activity_session';
        $result_session = $db->query($query_session);
        if($result_session !== false){
            foreach($result_session as $i => $row){
                $start_date = $row['start_date'];
                $end_date = $row['end_date'];
                $start_h = $row['start_h'];
                $start_m = $row['start_m'];
                $opening_days = explode(',', $row['days']);
                
                $d = 0;

                $start = ($start_date < $start_month) ? $start_month : $start_date;
                $end = ($end_date > $end_month) ? $end_month : $end_date;
                
                if($start < $today) $start = $today;
                
                $d = (int)gmdate('j', $start);
                
                for($date = $start; $date <= $end; $date += 86400){

                    $n = ((gmdate('w', $date)+6)%7)+1;
                    
                    $time = gm_strtotime($currentYear.'-'.$currentMonth.'-'.$d.' '.$start_h.':'.$start_m.':00');
                    
                    $sessions[$d][] = $time;
                    
                    if(in_array($n, $opening_days) && !in_array($d, $days['free']) && $time > gmtime()+86400)
                        $days['free'][] = $d;
                    
                    $d++;
                }
            }
        }
        
        $query_book = '
            SELECT date, max_people, ba.adults, ba.children, id_activity, from_date, to_date
            FROM pm_booking as b, pm_booking_activity as ba, pm_activity as a
            WHERE lang = '.DEFAULT_LANG.'
                AND id_booking = b.id
                AND id_activity = a.id
                AND (status = 4 OR (status = 1 AND (add_date > '.(time()-900).' OR payment_method IN(\'On arrival\',\'Check\'))))
                AND date <= '.$end_month.'
                AND date >= '.$start_month;
        if($activity_id != 0) $query_book .= ' AND id_activity = '.$activity_id;
        $query_book .= ' GROUP BY b.id';
        $result_book = $db->query($query_book);
        if($result_book !== false){
            foreach($result_book as $i => $row){
                $date = $row['date'];
                $max_people = $row['max_people'];
                $num_adults = $row['adults'];
                $num_children = $row['children'];
                
                $num_people = $num_adults+$num_children;
                
                $bookings[$date] = isset($bookings[$date]) ? $bookings[$date]+$num_people : $num_people;
                if($bookings[$date] >= $max_people && !in_array($date, $booked_sessions)) $booked_sessions[] = $date;
                $d++;
            }
        }
        
        for($d = 1; $d <= $nb_days; $d++){
            if(isset($sessions[$d])){
                $booked = true;
                foreach($sessions[$d] as $time){
                    if(!in_array($time, $booked_sessions)){
                        $booked = false;
                        break;
                    }
                }
                if($booked === true) $days['booked'][] = $d;
            }
        }
        echo json_encode($days);
    }
}
