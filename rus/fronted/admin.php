<?php require_once('../phpCode/code.php')?>
<html>
    <center><img src="/images/logo.png" height="190px"></img></center>
    <head><title>Авторизация</title></head>
    <body align="center" style="background-color:#bf7206;">
        <h2 style='color:black;'>Личный кабинет</h2>
        <img src=<?php echo $_SESSION['picture']?> height="190px"></img>
        <p style='color:black; font-size:20px'>Имя: <?php echo $_SESSION['firstname']?></p>
        <p style='color:black; font-size:20px'>Фамилия: <?php echo $_SESSION['sername']?></p>
        <form method="POST" >
            <button style='color:white;background-color:red;' name="unloginBtn" type="sumbit" value="Выход">Выйти</button>
        </form>
    </body> 
</html>

<?php
    if($_SESSION["autorize"] == "true"){

        $db = mysqli_connect('localhost', 'root', 'root', 'test_site');
        $query = ('SELECT * FROM tovar');
        $result = mysqli_query($db, $query);

        echo '<h2 style="color:white;">Таблица заказов</h2>';
        echo '<table border="1" align ="center">';
        echo '<tr>';
        echo '<td style="color:white;">Название заказа</td>';
        echo '<td style="color:white;">Описание заказа</td>';
        echo '<td style="color:white;">Цена</td>';
        echo '</tr>';
        foreach ($result as $tovar){
            echo '<tr>';
            echo '<td style="color:white;">'. $tovar['name_tovar'] .'</td>';
            echo '<td style="color:white;">'. $tovar['count'] .'</td>';
            echo '<td style="color:white;">'. $tovar['price'] .'</td>';
            echo '</tr>';
        }

        echo '</table>';
    }
    else{
        header("Location: /index.php");
    } 
?>