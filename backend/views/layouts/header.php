<?php
use yii\helpers\Url;
?>

<ul id="gn-menu" class="gn-menu-main">
    <?php if(!Yii::$app->user->isGuest) echo
    '<li class="gn-trigger">
        <a class="gn-icon gn-icon-menu"><span>Menu</span></a>
        <nav class="gn-menu-wrapper">
            <div class="gn-scroller">
                <ul class="gn-menu">
                    <li class="gn-search-item">
                        <input placeholder="Search" type="search" class="gn-search">
                        <a class="gn-icon gn-icon-search"><span>Search</span></a>
                    </li>
                    <li>
                        <a class="gn-icon gn-icon-download" data-toggle="collapse">Downloads</a>
                        <ul class="gn-submenu">
                            <li><a class="gn-icon gn-icon-illustrator">Vector Illustrations</a></li>
                            <li><a class="gn-icon gn-icon-photoshop">Photoshop files</a></li>
                        </ul>
                    </li>
                    <li><a class="gn-icon gn-icon-cog">Settings</a></li>
                    <li><a class="gn-icon gn-icon-help">Help</a></li>
                    <li>
                        <a class="gn-icon gn-icon-archive">Archives</a>
                        <ul class="gn-submenu">
                            <li><a class="gn-icon gn-icon-article">Articles</a></li>
                            <li><a class="gn-icon gn-icon-pictures">Images</a></li>
                            <li><a class="gn-icon gn-icon-videos">Videos</a></li>
                        </ul>
                    </li>
                </ul>
            </div><!-- /gn-scroller -->
        </nav>
    </li>'?>
    <li><a href="<?= Url::home();?>">Warta</a></li>
    
    <?php 
    if (Yii::$app->user->isGuest) {
        echo '<li><a class="codrops-icon codrops-icon-drop" href="/site/login"><span>login</span></a></li>';
    } else {
        echo '<li><a class="codrops-icon codrops-icon-prev" href="<?= Url::to();?>"><span>my post</span></a></li>';
        //echo '<li><a class="codrops-icon codrops-icon-drop" href="/site/logout"><span>logout('.Yii::$app->user->identity->username.')</span></a></li>';
        echo '<li><form action="/advanced/backend/web/site/logout" method="post">
        <input type="hidden" name="_csrf-backend"><button type="submit" class="btn">Logout ('.Yii::$app->user->identity->username.')</button></form></li>';
    }
    ?>
    <!-- <li><a class="codrops-icon codrops-icon-drop" href="http://tympanus.net/codrops/?p=16030"><span>Back to the Codrops Article</span></a></li> -->
</ul>