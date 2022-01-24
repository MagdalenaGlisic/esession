<!-- ==== MENU ==== -->
<?php
$links = [
    'Home' => 'home/index',
    'Archive' => 'home/index#archive',
    'Contact' => 'home/index#contact',
    'Meetings' => 'meetings/index',
  //'Login' => 'login'
];
helper('auth');
if(logged_in()){
    $links['Logout'] = 'logout';
    
}else{
    $links['Login']  = 'login';
}

foreach ($links as $text => $url) : ?>
    <li>
        <?= anchor($url, $text, ['class' => 'nav-link scrollto active']) ?>
        <!--active class-->
    </li>
<?php endforeach; ?>