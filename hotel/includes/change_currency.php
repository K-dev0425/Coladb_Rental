<?php
require_once('../common/lib.php');
require_once('../common/define.php');
    
if(isset($db) && $db !== false){
    
    if(isset($_GET['curr']) && is_numeric($_GET['curr']) > 0){

        $curr_id = $_GET['curr'];
        $rate = '';

        $result_currency = $db->query('SELECT * FROM pm_currency WHERE id = '.$curr_id);
        if($result_currency !== false && $db->last_row_count() > 0){
            $row = $result_currency->fetch();
            $code = $row['code'];
            $sign = $row['sign'];
            
            if(DEFAULT_CURRENCY_CODE == $code) $rate = 1;
            elseif(($content = file_get_contents('https://finance.google.com/finance/converter?a=1&from='.DEFAULT_CURRENCY_CODE.'&to='.$code)) !== false){
                $dom = new DOMDocument();
                @$dom->loadHTML($content);
                $rate = preg_replace('/[^0-9.]/', '', $dom->getElementById('currency_converter_result')->getElementsByTagName('span')->item(0)->nodeValue);
            }

            if(is_numeric($rate)){
                $_SESSION['currency']['rate'] = $rate;
                $_SESSION['currency']['code'] = $code;
                $_SESSION['currency']['sign'] = $sign;
            }
        }
    }
}
