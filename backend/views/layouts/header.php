<?php
use yii\helpers\Url;
?>

<ul id="gn-menu" class="gn-menu-main">
    <?php if(!Yii::$app->user->isGuest) echo $this->render('sidebar');?>
    <li><a href="<?= Url::home();?>">Warta</a></li>
    
    <?php 
    if (Yii::$app->user->isGuest) {
        echo '<li><a class="codrops-icon codrops-icon-drop"><span>login</span></a></li>';
    } else {
        //echo '<li><a class="codrops-icon codrops-icon-prev" href=""><span>my post</span></a></li>';
        //echo '<li><a class="codrops-icon codrops-icon-drop" href="/site/logout"><span>logout('.Yii::$app->user->identity->username.')</span></a></li>';
        echo '<li><form action="/advanced/backend/web/site/logout" method="post">
        <input type="hidden" name="_csrf-backend"><button type="submit" class="btn">Logout ('.Yii::$app->user->identity->username.')</button></form></li>';
    }
    ?>
    <!-- <li><a class="codrops-icon codrops-icon-drop" href="http://tympanus.net/codrops/?p=16030"><span>Back to the Codrops Article</span></a></li> -->
</ul>