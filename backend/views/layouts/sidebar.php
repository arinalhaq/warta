<?php
use yii\helpers\Url;
?>

<li class="gn-trigger">
        <a class="gn-icon gn-icon-menu"><span>Menu</span></a>
        <nav class="gn-menu-wrapper">
            <div class="gn-scroller">
                <ul class="gn-menu">
                    <!-- <li class="gn-search-item">
                        <input placeholder="Search" type="search" class="gn-search">
                        <a class="gn-icon gn-icon-search"><span>Search</span></a>
                    </li> -->
                    <li>
                        <a class="gn-icon gn-icon-article" data-toggle="collapse">Post</a>
                        <ul class="gn-submenu">
                            <li><a href="<?php echo Url::to(['post/index'])?>">All Post</a></li>
                            <li><a>Unpublished Post</a></li>
                        </ul>
                    </li>
                    <li><a class="gn-icon gn-icon-article" href="<?php echo Url::to(['news/index'])?>">News</a></li>
                    <li>
                        <a class="gn-icon gn-icon-archive" data-toggle="collapse">Data</a>
                        <ul class="gn-submenu">
                            <li><a href="<?php echo Url::to(['user/index'])?>">User</a></li>
                            <li><a href="<?php echo Url::to(['category/index'])?>">Category</a></li>
                            <li><a href="<?php echo Url::to(['location/index'])?>">Location</a></li>
                        </ul>
                    </li>
                    <li><a class="gn-icon gn-icon-account">Account</a></li>
                    <!-- <li>
                        <a class="gn-icon gn-icon-archive">Archives</a>
                        <ul class="gn-submenu">
                            <li><a class="gn-icon gn-icon-pictures">Images</a></li>
                            <li><a class="gn-icon gn-icon-pictures">Images</a></li>
                            <li><a class="gn-icon gn-icon-videos">Videos</a></li>
                        </ul>
                    </li> -->
                </ul>
            </div><!-- /gn-scroller -->
        </nav>
    </li>