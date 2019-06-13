<?php
use yii\helpers\Url;
use frontend\models\Category;
use backend\models\CategorySearch;

$category = new CategorySearch();
$dataProvider = $category->search(Yii::$app->request->queryParams)->query->all();
?>

<header class="nav">

  <div class="nav__holder nav--sticky">
    <div class="container relative">

      <div class="flex-parent">

        <!-- Mobile Menu Button -->
        <button class="nav-icon-toggle" id="nav-icon-toggle" aria-label="Open mobile menu">
          <span class="nav-icon-toggle__box">
            <span class="nav-icon-toggle__inner"></span>
          </span>
        </button> <!-- end mobile menu button -->

        <!-- Logo -->
        <a href="<?= Url::home(); ?>" class="logo">
          <img class="logo__img" src="<?= Url::to('@web/img/logo_light.png'); ?>" alt="logo">
        </a>

        <!-- Nav-wrap -->
        <nav class="flex-child nav__wrap d-none d-lg-block">
          <ul class="nav__menu">

            <li class="nav__dropdown active">
              <a href="<?= Url::toRoute('news'); ?>">News</a>
              <ul class="nav__dropdown-menu">
                <li>
                  <a href="">Recent News</a>
                </li>
                <li>
                  <a href="">Most Popular</a>
                </li>
                <li>
                  <a href="">Most Liked</a>
                </li>
              </ul>
            </li>

            <li class="nav__dropdown">
              <a href="categories.html">Category</a>
              <ul class="nav__dropdown-menu">
              <?php foreach($dataProvider as $data): ?>
                <li><a href="single-post.html"><?= $data->category?></a></li>
                <?php endforeach ?>
              </ul>
            </li>

            <li class="nav__dropdown">
              <a href="catalog.html">Local News</a>
              <ul class="nav__dropdown-menu">
                <li><a href="categories.html">Categories</a></li>
                <li><a href="about.html">About</a></li>
                <li><a href="contact.html">Contact</a></li>
                <li><a href="404.html">404</a></li>
              </ul>
            </li>

            <?php if (!Yii::$app->user->isGuest) {
             echo '<li class="nav__dropdown">
              <a href="'.Url::to(['post/index']).'">My Post</a>
            </li>';
            } else {

            }
            ?>

            <!-- <li>
              <a href="#">Purchase</a>
            </li> -->


          </ul> <!-- end menu -->
        </nav> <!-- end nav-wrap -->

        <!-- Nav Right -->
        <div class="nav__right nav--align-right d-none d-lg-flex">

          <!-- Socials -->
          <div class="nav__right-item socials socials--nobase nav__socials ">
            <a class="social-facebook" href="#" target="_blank">
              <i class="ui-facebook"></i>
            </a>
            <a class="social-twitter" href="#" target="_blank">
              <i class="ui-twitter"></i>
            </a>
            <a class="social-youtube" href="#" target="_blank">
              <i class="ui-youtube"></i>
            </a>
          </div>

          <div class="nav__right-item">
            <?php if (Yii::$app->user->isGuest) {
              echo '<button class="btn"><a href="' . Url::to(['site/login']) . '">LOGIN</a></button>';
            } else {
              echo '<form action="/advanced/frontend/web/site/logout" method="post">
        <input type="hidden" name="_csrf-frontend"><button type="submit" class="btn">Logout (' . Yii::$app->user->identity->username . ')</button></form>';
            } ?>
          </div>

          <!-- Search -->
          <div class="nav__right-item nav__search">
            <a href="#" class="nav__search-trigger" id="nav__search-trigger">
              <i class="ui-search nav__search-trigger-icon"></i>
            </a>
            <div class="nav__search-box" id="nav__search-box">
              <form class="nav__search-form">
                <input type="text" placeholder="Search an article" class="nav__search-input">
                <button type="submit" class="nav__search-button btn btn-md btn-color btn-button">
                  <i class="ui-search nav__search-icon"></i>
                </button>
              </form>
            </div>

          </div>

        </div> <!-- end nav right -->

      </div> <!-- end flex-parent -->
    </div> <!-- end container -->

  </div>
</header> <!-- end navigation -->