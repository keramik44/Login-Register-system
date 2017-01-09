<?php
require_once 'core/init.php';

/*echo "Sesja na uzytkowniak: ".Session::get("userNameIndex");
echo "<br>".Input::get('user');
die();*/
!$username = Input::get('user');

if(!$username||!Session::exists("userNameIndex")){
  Redirect::to('index.php');
} else{
  if(Session::get("userNameIndex")==Input::get('user')){                      //dodatkowy if
    $user = new User($username);
    if(!$user->exists()){
      Redirect::to(404);
    } else{
      $data=$user->data();
    }
    ?>
    <h3><?php echo escape($data->username); ?></h3>
    <p>Full name:<?php echo escape($data->name);?></p>
    <?php
  }
}
