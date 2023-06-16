<?php require_once('scripts/code.php')?>
<html>
    <link rel="shortcut icon" href="/images/logo.ico">
    <center><img src="/images/logo.ico" height="190px"></img></center>
    <head><link rel="stylesheet" href="styles/styles.css"><title>Авторизация</title></head>
    <body align="center">
        <h2>Личный кабинет администратора</h2>
        <form method="POST" >
            <button id = "unlogin" name="unloginBtn" type="sumbit" value="Выход">Выйти</button>
        </form>
    </body> 
</html>

<?php
    if($_SESSION["autorize"] == "true"){

        $db = mysqli_connect('localhost', 'root', 'root', 'test_site');
        $query = ('SELECT * FROM orders');
        $result = mysqli_query($db, $query);

        echo "<link rel='stylesheet' href='styles/styles.css'>";
        echo '<h2 id = "tablezakaz">Таблица заказов</h2>';
        echo '<table border="1" align ="center">';
        echo '<tr>';
        echo '<td id = "tdAdmin">ID заказа</td>';
        echo '<td id = "tdAdmin">Номер заказа</td>';
        echo '<td id = "tdAdmin">Дата создания</td>';
        echo '<td id = "tdAdmin">Код клиента</td>';
        echo '<td id = "tdAdmin">Услуги</td>';
        echo '<td id = "tdAdmin">Статус</td>';
        echo '<td id = "tdAdmin">Дата закрытия</td>';
        echo '<td id = "tdAdmin">Код сотрудника</td>';
        echo '<td id = "tdAdmin">Затраченное время</td>';
        echo '</tr>';
        foreach ($result as $tovar){
            echo '<tr>';
            echo '<td id = "tdBD">'. $tovar['id_order'] .'</td>';
            echo '<td id = "tdBD">'. $tovar['order_number'] .'</td>';
            echo '<td id = "tdBD">'. $tovar['date_create'] .'</td>';
            echo '<td id = "tdBD">'. $tovar['client_code'] .'</td>';
            echo '<td id = "tdBD">'. $tovar['uslugi'] .'</td>';
            echo '<td id = "tdBD">'. $tovar['status'] .'</td>';
            echo '<td id = "tdBD">'. $tovar['date_close'] .'</td>';
            echo '<td id = "tdBD">'. $tovar['sotr_code'] .'</td>';
            echo '<td id = "tdBD">'. $tovar['time_good'] .'</td>';
            echo '</tr>';
        }
        echo '</table>';
    }
    else{
        header("Location: /index.php");
    } 
?>