<?php


use app\models\News;
use app\controllers\NewsController;
use yii\helpers\Html;
use yii\helpers\Url;
use yii\widgets\DetailView;
use yii\widgets\ActiveForm;
use dosamigos\disqus\Comments;

/* @var $this yii\web\View */
/* @var $model frontend\models\News */

$post = $model->post;

$this->title = $post->title;
$this->params['breadcrumbs'][] = ['label' => 'News', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
\yii\web\YiiAsset::register($this);
?>
<div class="news-view">

    <!-- <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Update', ['update', 'id' => $model->id_news], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Delete', ['delete', 'id' => $model->id_news], [
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
            'id_news',
            'id_post',
            'status_news',
            'likes',
            'views',
            'date',
            'id_editor',
        ],
    ]) ?> -->

    <!-- <?php
        //echo $this->render('single-post');
    ?> -->

<body class="single-post">

<!-- Preloader
<div class="loader-mask">
  <div class="loader">
    <div></div>
  </div>
</div> -->

<!-- Bg Overlay -->
<div class="content-overlay"></div>



  <div class="main-container" id="main-container">

    <!-- Content -->
    <section class="section-wrap pt-60 pb-20">
      <div class="container">
        <div class="row">
          
          <!-- post content -->
          <div class="col-md-8 blog__content mb-30">

            <!-- standard post -->
            <article class="entry">
              
              <div class="single-post__entry-header  entry__header">
                
                <h1 class="single-post__entry-title">
                  <?= $post->title; ?>
                </h1>
                
                <ul class="single-post__entry-meta entry__meta">
                  <li>
                    <div class="entry-author">
                      <a href="#" class="entry-author__url">
                        <img src="img/blog/author.png" class="entry-author__img" alt="">
                        <span>by</span>
                        <span class="entry-author__name"><?= $post->user->username;?></span>
                      </a>
                    </div>
                  </li>
                  <li class="entry__meta-date">
                    <?= Yii::$app->formatter->asDate($post->created_at); ?>
                  </li>
                  <li>
                    <span>in</span>
                    <a href="<?= Url::to(['category/view/','id'=> $post->id_category]); ?>" class="entry__meta-category"><?= $post->category->category; ?></a>
                  </li>
                </ul>
              </div>

              <div class="entry__img-holder">
                <figure>
                  <img src="<?= $post->image ?>" alt="" class="entry__img" height=400px>
                  <figcaption>A photo collection samples</figcaption>
                </figure>
              </div>

              <div class="entry__article-holder">

                <!-- Share -->
                <div class="entry__share">
                  <div class="entry__share-inner">
                    <div class="socials">
                      <a href="#" class="social-facebook entry__share-social" aria-label="facebook"><i class="ui-facebook"></i></a>
                      <a href="#" class="social-twitter entry__share-social" aria-label="twitter"><i class="ui-twitter"></i></a>
                      <a href="#" class="social-google-plus entry__share-social" aria-label="google+"><i class="ui-google"></i></a>
                      <a href="#" class="social-instagram entry__share-social" aria-label="instagram"><i class="ui-instagram"></i></a>
                    </div>
                  </div>                    
                </div> <!-- share -->

                <div class="entry__article">
                  <?php echo $post->content; ?>

                  <!-- tags -->
                  <div class="entry__tags">
                  <?php 
                    echo Html::a('Like');
                    echo Html::a('Dislike');
                  ?> 
                  </div> <!-- end tags -->
                  
                </div> <!-- end entry article -->
              </div>

              <!-- Newsletter -->                

            </article> <!-- end standard post -->



            <!-- Comments -->
            <div class="entry-comments mt-30">
            <?php 
              echo Comments::widget([
                // see http://help.disqus.com/customer/portal/articles/472098-javascript-configuration-variables
                'shortname' => 'warta',
                'identifier' => 'article_identifier'
              ]);   
            ?>      
            </div> <!-- end comments -->


            <!-- Comment Form -->
            <!-- <div id="respond" class="comment-respond">
              <h5 class="comment-respond__title">Post a comment</h5>
              <p class="comment-respond__subtitle">Your email address will not be published. Required fields are marked*</p>
              <form id="form" class="comment-form" method="post" action="#">
                <p class="comment-form-comment">
                  <label for="comment">Comment</label>
                  <textarea id="comment" name="comment" rows="5" required="required"></textarea>
                </p>

                <div class="row row-20">
                  <div class="col-lg-4">
                    <label for="name">Name*</label>
                    <input name="name" id="name" type="text">
                  </div>
                  <div class="col-lg-4">
                    <label for="email">Email*</label>
                    <input name="email" id="email" type="email">
                  </div>
                  <div class="col-lg-4">
                    <label for="email">Website</label>
                    <input name="website" id="website" type="text">
                  </div>
                </div>

                <p class="comment-form-submit">
                  <input type="submit" class="btn btn-lg btn-color btn-button" value="Post Comment" id="submit-message">
                </p>
                
              </form>
            </div> end comment form -->
            <div id="respond" class="comment-respond">
            <?php $form = ActiveForm::begin(); ?>
            <p class="comment-form-comment">
            <?= $form->field($komentar, 'content')->textArea() ?>
            </p>
            <div class="form-group">
                <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
            </div>

            <?php ActiveForm::end(); ?>
            </div>

          </div> <!-- end col -->
          
          <!-- Sidebar -->
          <aside class="col-md-4 sidebar sidebar--right">
            
            <!-- Widget Popular Posts -->
            <div class="widget widget-popular-posts">
              <h4 class="widget-title">Popular Posts</h4>
              <ul class="widget-popular-posts__list">
                <li>
                  <article class="clearfix">
                    <div class="widget-popular-posts__img-holder">
                      <span class="widget-popular-posts__number">1</span>
                      <div class="thumb-container">
                        <a href="single-post.html">
                          <img data-src="img/blog/popular_post_1.jpg" src="img/blog/popular_post_1.jpg" alt="" class="lazyload">
                        </a>
                      </div>
                    </div>
                    <div class="widget-popular-posts__entry">
                      <h3 class="widget-popular-posts__entry-title">
                        <a href="single-post.html">How to get better Apple Watch battery life</a>
                      </h3>
                    </div>                      
                  </article>
                </li>
              </ul>
            </div> <!-- end widget popular posts -->

            <!-- Widget Newsletter -->
            <!-- <div class="widget widget_mc4wp_form_widget">
              <h4 class="widget-title">Subscribe for Neotech news and receive daily updates</h4>
              <form id="mc4wp-form-1" class="mc4wp-form" method="post">
                <div class="mc4wp-form-fields">
                  <p>
                    <i class="mc4wp-form-icon ui-email"></i>
                    <input type="email" name="EMAIL" placeholder="Your email" required="">
                  </p>
                  <p>
                    <input type="submit" class="btn btn-md btn-color" value="Subscribe">
                  </p>
                </div>
              </form>
            </div> end widget newsletter -->

            <!-- Widget socials -->
            <div class="widget widget-socials">
              <h4 class="widget-title">Keep up with Neotech</h4>
              <ul class="socials">
                <li>
                  <a class="social-facebook" href="#" title="facebook" target="_blank">
                    <i class="ui-facebook"></i>
                    <span class="socials__text">Facebook</span>
                  </a>
                </li>
                <li>
                  <a class="social-twitter" href="#" title="twitter" target="_blank">
                    <i class="ui-twitter"></i>
                    <span class="socials__text">Twitter</span>
                  </a>
                </li>
                <li>
                  <a class="social-google-plus" href="#" title="google" target="_blank">
                    <i class="ui-google"></i>
                    <span class="socials__text">Google+</span>
                  </a>
                </li>
                <li>
                  <a class="social-instagram" href="#" title="instagram" target="_blank">
                    <i class="ui-instagram"></i>
                    <span class="socials__text">Instagram</span>
                  </a>
                </li>
              </ul>
            </div> <!-- end widget socials -->

            <!-- Widget Banner -->
            <div class="widget widget_media_image">
              <a href="#">
                <img src="img/blog/placeholder_300.jpg" alt="">
              </a>
            </div> <!-- end widget banner -->

            <!-- Widget Facebook -->
            <div class="widget widget-facebook">
              <div class="fb-page" data-href="https://www.facebook.com/deothemes/" data-small-header="false" data-adapt-container-width="true" data-hide-cover="false" data-show-facepile="true"></div>
              <div id="fb-root"></div>
              <script>(function(d, s, id) {
                var js, fjs = d.getElementsByTagName(s)[0];
                if (d.getElementById(id)) return;
                js = d.createElement(s); js.id = id;
                js.src = '../../../connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.12&autoLogAppEvents=1';
                fjs.parentNode.insertBefore(js, fjs);
              }(document, 'script', 'facebook-jssdk'));</script>            
            </div> <!-- end widget facebook -->

            <!-- Widget Latest Reviews -->
            <div class="widget widget-latest-reviews">
              <h4 class="widget-title">Latest Reviews</h4>
              <article class="entry">
                <div class="entry__img-holder">
                  <a href="single-post.html">
                    <div class="thumb-container">
                      <img data-src="img/blog/grid_post_img_8.jpg" src="img/blog/grid_post_img_8.jpg" class="entry__img lazyload" alt="">
                    </div>
                  </a>
                </div>

                <div class="entry__body">
                  <div class="entry__header">
                    <a href="categories.html" class="entry__meta-category">devices</a>
                    <h2 class="entry__title">
                      <a href="single-post.html">8 Hidden Costs of Starting and Running a Business</a>
                    </h2>
                  </div>
                  <ul class="entry__meta">
                    <li class="entry__meta-rating">
                      <i class="ui-star"></i><!--
                      --><i class="ui-star"></i><!--
                      --><i class="ui-star"></i><!--
                      --><i class="ui-star"></i><!--
                      --><i class="ui-star-outline"></i>
                    </li>
                  </ul>
                </div>
              </article>
              <ul class="post-list-small">
                <li class="post-list-small__item">
                  <article class="post-list-small__entry">
                    <a href="single-post.html" class="clearfix">
                      <div class="post-list-small__img-holder">
                        <div class="thumb-container">
                          <img src="img/blog/post_list_small_2.jpg" class="post-list-small__img" alt="">
                        </div>
                      </div>
                      <div class="post-list-small__body">
                        <h3 class="post-list-small__entry-title">
                          The iPhone of Drones Is Being Built by This Teenager
                        </h3>
                        <ul class="entry__meta">
                          <li class="entry__meta-rating">
                            <i class="ui-star"></i><!--
                            --><i class="ui-star"></i><!--
                            --><i class="ui-star"></i><!--
                            --><i class="ui-star"></i><!--
                            --><i class="ui-star"></i>
                          </li>
                        </ul>
                      </div>
                    </a>                                        
                  </article>
                </li>
                <li class="post-list-small__item">
                  <article class="post-list-small__entry">
                    <a href="single-post.html" class="clearfix">
                      <div class="post-list-small__img-holder">
                        <div class="thumb-container">
                          <img src="img/blog/post_list_small_1.jpg" class="post-list-small__img" alt="">
                        </div>
                      </div>
                      <div class="post-list-small__body">
                        <h3 class="post-list-small__entry-title">
                          What Indie Beauty Companies Can Teach Entrepreneurs About Scaling
                        </h3>
                        <ul class="entry__meta">
                          <li class="entry__meta-rating">
                            <i class="ui-star"></i><!--
                            --><i class="ui-star"></i><!--
                            --><i class="ui-star"></i><!--
                            --><i class="ui-star"></i><!--
                            --><i class="ui-star"></i>
                          </li>
                        </ul>
                      </div>
                    </a>                                        
                  </article>
                </li>
              </ul>
            </div> <!-- end widget latest reviews -->

          </aside> <!-- end sidebar -->
    
        </div> <!-- end row -->
      </div> <!-- end container -->
    </section> <!-- end content -->

   

  </div> <!-- end main container -->

  <div id="back-to-top">
    <a href="#top"><i class="ui-arrow-up"></i></a>
  </div>

</main> <!-- end main-wrapper -->

</body>
</div>
