<?php session_start(); #СОЗДАЕМ СЕССИЮ
if (isset($_POST['loginBtn'])){
    if($_POST['login'] != null and $_POST['pass'] != null){
        try{
            $login = $_POST['login'];

            $db = mysqli_connect('localhost', 'root', 'root', 'test_site'); #ПОДКЛЮЧЕНИЕ К БД
            $query="SELECT * FROM users WHERE username = '$login'"; #ПРОПИСЫВАЕМ ЗАПРОС
            $result=mysqli_query($db, $query); #ЗАПУСК ЗАПРОСА

            $row = mysqli_fetch_array($result); #ПОЛУЧАЕМ МАССИВ С БД
            if (isset($row)){ #ПАРСИМ МАССИВ С БД
                if ($_POST['pass'] == $row['password']){
                    header('Location: /fronted/admin.php'); #ПЕРЕКИДЫВАЕТ НА СЛЕД СТРАНИЦУ
                    $_SESSION['firstname'] = $row['firstname']; #$row['firstname'] ВЫБИРАЕМ НУЖНЫЕ МОМЕНТЫ В БД [firstname] - НАЗВАНИЕ СТОЛБЦА
                    $_SESSION['sername'] = $row['sername'];
                    $_SESSION['picture'] = $row['photo'];
                    $_SESSION['autorize'] = "true";
                }
                else{
                    echo '<html><body align="center" style="font-size:30px"><p>Ошибка, пароль неверный</p><form method="POST"><button style="font-size:20px" name="backbtn">Назад</button></form></body></html>';
                }
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
    header('Location: /fronted/index.php'); 
}
if (isset($_POST['unloginBtn'])){
    session_destroy(); #уНИЧТОЖАЕМ СЕССИЮ
    header('Location: /fronted/index.php');
}
?>

