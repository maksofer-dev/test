<?php session_start(); #СОЗДАЕМ СЕССИЮ
if (isset($_POST['loginBtn'])){
    if($_POST['login'] != null and $_POST['pass'] != null){
        try{
            $login = "admin";
            $pass = "admin";
            #$result=mysqli_query($db, $query); #ЗАПУСК ЗАПРОСА
            #$row = mysqli_fetch_array($result); #ПОЛУЧАЕМ МАССИВ С БД

            if ($_POST['login'] == $login and $_POST['pass'] == $pass){ #ПАРСИМ МАССИВ С БД 
                header('Location: /admin.php'); #ПЕРЕКИДЫВАЕТ НА СЛЕД СТРАНИЦУ
                $_SESSION['order_id'] = $row['order_id']; #$row['firstname'] ВЫБИРАЕМ НУЖНЫЕ МОМЕНТЫ В БД [firstname] - НАЗВАНИЕ СТОЛБЦА
                $_SESSION['autorize'] = "true";
            }
            else{
                echo '<html><body align="center" style="font-size:30px"><p>Ошибка, данные неверные</p><form method="POST"><button style="font-size:20px" name="backbtn">Назад</button></form></body></html>';
            }
        }
        catch (error $ex){
            echo "error connect db".$ex;
        }
    }
    else{
        echo '<html><body align="center" style="font-size:30px"><p>Ошибка, данные не введены</p><form method="POST"><button style="font-size:20px" name="backbtn">Назад</button></form></body></html>';
    }
}
if (isset($_POST['backbtn'])){
    header('Location: /index.php'); 
}
if (isset($_POST['unloginBtn'])){
    session_destroy(); #УНИЧТОЖАЕМ СЕССИЮ
    header('Location: /index.php');
}
?>

