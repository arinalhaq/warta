<?php

use yii\helpers\Html;
use yii\helpers\Url;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model frontend\models\Location */

$this->title = $model->city;
$this->params['breadcrumbs'][] = ['label' => 'Locations', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
\yii\web\YiiAsset::register($this);
?>
<div class="location-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <!-- <p>
        <?= Html::a('Update', ['update', 'id' => $model->id_location], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Delete', ['delete', 'id' => $model->id_location], [
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
            'id_location',
            'city',
            'region',
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

          <?php foreach ($dataProvider as $news) : ?>
            <div class="col-md-4 col-sm-6">
              <article class="entry">
                <div class="entry__img-holder">
                  <a href="<?= Url::to(['news/view/', 'id' => $news->id_news]); ?>">
                    <div class="thumb-container">
                      <img data-src="<?= $news->post->image; ?>" src="<?= $news->post->image; ?>" class="entry__img lazyload" alt="" height=150px width=200px />
                    </div>
                  </a>
                </div>

                <div class="entry__body">
                  <div class="entry__header">
                    <a href="<?= Url::to(['category/view/', 'id' => $news->post->id_category]); ?>" class="entry__meta-category"><?= $news->post->category->category ?></a>
                    <h2 class="entry__title">
                      <a href="<?= Url::to(['news/view/', 'id' => $news->id_news]); ?>"><?= $news->post->title; ?></a>
                    </h2>
                    <ul class="entry__meta">
                      <li class="entry__meta-date">
                        <?= Yii::$app->formatter->asDate($news->post->created_at); ?>
                      </li>
                      <li class="entry__meta-rating">
                        <i class="ui-star"></i>
                        <!--
                            --><i class="ui-star"></i>
                        <!--
                            --><i class="ui-star"></i>
                        <!--
                            --><i class="ui-star"></i>
                        <!--
                            --><i class="ui-star-outline"></i>
                      </li>
                    </ul>
                  </div>
                  <!-- <div class="entry__excerpt">
                        <p>Point of Sale hardware, the till at a shop check out, has become very complex over the past ten years. Modern POS hardware includes the cash till, bar-code readers...</p>
                      </div> -->
                </div>
              </article>
            </div>
          <?php endforeach ?>

        </div>
      </div>
    </div>
  </div>

  <div>
    <?php echo \yii\widgets\LinkPager::widget([
      'pagination' => $pagination,
    ]);
    ?>
  </div>
</section>

</div>

</div>
