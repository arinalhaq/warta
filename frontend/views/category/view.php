<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model frontend\models\Category */

$this->title = $model->category;
$this->params['breadcrumbs'][] = ['label' => 'Categories', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
\yii\web\YiiAsset::register($this);
?>
<div class="category-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <!-- <p>
        <?= Html::a('Update', ['update', 'id' => $model->id_category], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Delete', ['delete', 'id' => $model->id_category], [
            'class' => 'btn btn-danger',
            'data' => [
                'confirm' => 'Are you sure you want to delete this item?',
                'method' => 'post',
            ],
        ]) ?>
    </p>

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'id_category',
            'category',
        ],
    ]) ?> -->

    <div class="main-container" id="main-container">

        <!-- Content -->
        <section class="section-wrap pb-30">
            <div class="container">
                <div class="row">

                    <!-- Posts -->
                    <div class="col-md-8 blog__content mb-30">

                        <div class="row mt-30">

                            <div class="col-md-6">
                                <article class="entry">
                                    <div class="entry__img-holder">
                                        <a href="single-post.html">
                                            <div class="thumb-container">
                                                <img data-src="img/blog/grid_post_img_1.jpg" src="img/blog/grid_post_img_1.jpg" class="entry__img lazyload" alt="" />
                                            </div>
                                        </a>
                                    </div>

                                    <div class="entry__body">
                                        <div class="entry__header">
                                            <a href="categories.html" class="entry__meta-category">devices</a>
                                            <h2 class="entry__title">
                                                <a href="single-post.html">Satelite cost tens of millions or even hundreds of millions of dollars to build</a>
                                            </h2>
                                            <ul class="entry__meta">
                                                <li class="entry__meta-date">
                                                    21 October, 2017
                                                </li>
                                                <li class="entry__meta-author">
                                                    by <a href="#">DeoThemes</a>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="entry__excerpt">
                                            <p>Point of Sale hardware, the till at a shop check out, has become very complex over the past ten years. Modern POS hardware includes the cash till, bar-code readers...</p>
                                        </div>
                                    </div>
                                </article>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

    </div>