<?php

/* @var $this yii\web\View */
use yii\helpers\Url;
$this->title = 'My Yii Application';
?>


<!-- Mirrored from deothemes.com/envato/neotech/index-3.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 28 May 2019 01:58:42 GMT -->


<body>

  <!-- Bg Overlay -->
  <div class="content-overlay"></div>


    
    <div class="main-container" id="main-container">

      <!-- Featured Posts Masonry -->      
      <section class="featured-posts-masonry">
        <div class="container">    

          <div class="featured-posts-masonry__item featured-posts-masonry__item">        
            <article class="entry featured-posts-masonry__entry">
              <div class="thumb-bg-holder" style="background-image: url(img/blog/hero_slider/featured_img_1.jpg);">
                <a href="single-post.html" class="thumb-url"></a>
                <div class="bottom-gradient"></div>
              </div>

              <div class="thumb-text-holder">
                <a href="categories.html" class="entry__meta-category entry__meta-category--label">Startups</a>   
                <h2 class="entry__title--lg entry__title--white">
                  <a href="single-post.html">Technology's impact on marketing</a>
                </h2>
              </div>
            </article>
          </div>

          <div class="featured-posts-masonry__item featured-posts-masonry__item">        
            <article class="entry featured-posts-masonry__entry">
              <div class="thumb-bg-holder" style="background-image: url(img/blog/hero_slider/featured_img_2.jpg);">
                <a href="single-post.html" class="thumb-url"></a>
                <div class="bottom-gradient"></div>
              </div>

              <div class="thumb-text-holder">
                <a href="categories.html" class="entry__meta-category entry__meta-category--label">Startups</a>   
                <h2 class="thumb-entry-title">
                  <a href="single-post.html">The Age of Artificial Intelligence</a>
                </h2>
              </div>
            </article>
          </div>

          <div class="clear"></div>

          <div class="featured-posts-masonry__item">        
            <article class="entry featured-posts-masonry__entry">
              <div class="thumb-bg-holder" style="background-image: url(img/blog/hero_slider/featured_img_3.jpg);">
                <a href="single-post.html" class="thumb-url"></a>
                <div class="bottom-gradient"></div>
              </div>

              <div class="thumb-text-holder">
                <a href="categories.html" class="entry__meta-category entry__meta-category--label">Startups</a>   
                <h2 class="thumb-entry-title">
                  <a href="single-post.html">Technology's impact on marketing</a>
                </h2>
              </div>
            </article>
          </div>

        </div>
      </section> <!-- end featured posts masonry -->

      <!-- Content -->
      <section class="section-wrap pt-50 pb-30">
        <div class="container">
          <div class="row">

            <!-- Posts -->
            <div class="col-md-12 blog__content">

              <!-- Reviews -->
              <div class="section-title-wrap">
                <h3 class="section-title">Reviews</h3>
              </div>
 
              <div class="row">

                
              <?php foreach($dataProvider as $news): ?>
                <div class="col-md-4 col-sm-6">
                  <article class="entry">                
                    <div class="entry__img-holder">
                      <a href="<?= Url::to(['news/view/','id'=> $news->id_news]);?>">
                        <div class="thumb-container">
                          <img data-src="<?= $news->post->image; ?>" src="<?= $news->post->image; ?>" class="entry__img lazyload" alt="" height=300px width=400px/>
                        </div>
                      </a>
                    </div>

                    <div class="entry__body">
                      <div class="entry__header">
                        <a href="<?= Url::to(['category/view/','id'=> $news->post->id_category]);?>" class="entry__meta-category"><?= $news->post->category->category ?></a>
                        <h2 class="entry__title">
                          <a href="<?= Url::to(['news/view/','id'=> $news->id_news]);?>"><?= $news->post->title; ?></a>
                        </h2>
                        <ul class="entry__meta">
                          <li class="entry__meta-date">
                            <?= Yii::$app->formatter->asDate($news->post->created_at); ?>
                          </li>
                          <li class="entry__meta-rating">
                            <i class="ui-star"></i><!--
                            --><i class="ui-star"></i><!--
                            --><i class="ui-star"></i><!--
                            --><i class="ui-star"></i><!--
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
                <?php endforeach?>
              </div> <!-- end reviews -->

            </div> <!-- end posts -->
      
          </div>
        </div>
      </section> <!-- end content -->

      <!-- Ad Banner 728 -->
      <div class="text-center pb-40">
        <a href="#">
          <img src="img/blog/placeholder_728.jpg" alt="">
        </a>
      </div>

     

    </div> <!-- end main container -->

    <div id="back-to-top">
      <a href="#top" aria-label="Go to top"><i class="ui-arrow-up"></i></a>
    </div>

  </main> <!-- end main-wrapper -->


  
  <!-- jQuery Scripts -->


  <script>
    // Twitter Feed
      var config1 = {
      "id": '594366594521804800',
      "domId": 'tweets',
      "showUser": false,
      "showInteraction": false,
      "showPermalinks": false,
      "showTime": false,
      "maxTweets": 2,
      "enableLinks": true
    };

    twitterFetcher.fetch(config1);                    
  </script>

</body>

<!-- Mirrored from deothemes.com/envato/neotech/index-3.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 28 May 2019 01:58:42 GMT -->

