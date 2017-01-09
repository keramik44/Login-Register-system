<?php
require_once 'core/init.php';


if(Session::exists('success')){
	echo Session::flash('success');
}



$user=new User();
if($user->isLoggedIn()){
	Session::put("userNameIndex", $user->data()->username);
?>
	<p>Hello <a href="profile.php?user=<?php  echo escape($user->data()->username); ?>"> <?php  echo escape($user->data()->username); ?></p>

	<ul>
		<li> <a href="logout.php"> Log out </a></li>
		<li> <a href="update.php"> Update your personal information </a></li>
		<li> <a href="changepassword.php"> Change your password </a></li>
	</ul>
<?php

	if($user->hasPermission('admin')){
		echo '<p>You are an administrator!</p>';
	}

}else{
		echo '<p>You need to <a href="login.php">login</a> or <a href = "register.php">register</a></p>';
}
