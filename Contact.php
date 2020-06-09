
<?php 
$Counter = 1;
$branches = get_Contact();

$num_each_row = 4;
?>
<?php require_once 'Head.php'; ?>
<body>

    <!-- /.preloader -->
    <div id="preloader"></div>
    <div class="theme-layout">
        
        
    <?php require_once 'AccountPopupSec.php'; ?>
        <?php require_once 'Header.php'; ?>     

        
        <?php require_once 'onePicSliderTop.php'; ?> 
        Contact Us
        <?php require_once 'onePicSliderBottom.php'; ?> 

    <section class="block">

    <div style="background: url(<?= base_url("Themes/cars/dark/").$head[0]['Br_img'] ;?>) repeat scroll 50% 422.28px transparent; background-attachment: fixed;" class="parallax scrolly-invisible  blackish"></div><!-- PARALLAX BACKGROUND IMAGE -->	
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="vehiculs-text-bar">

                <blockquote>
                     
                <p>
                <h1>Head Office</h1>
                <h1> <?=$head[0]['Br_Place'] ?>
                    </h1>
                    <span><?=$head[0]['Br_addr'] ?> <br>
                    <i class="fa fa-phone" aria-hidden="true"></i> <?=$head[0]['Br_Ph1'] ?>
                    <br>
                    <?php
                   if (!$head[0]['Br_Ph2']==''){
                   echo '<i class="fa fa-phone" aria-hidden="true"></i>';
                   
                   echo $head[0]['Br_Ph2'];
                    echo "<br>";
                   }
                   if (!$head[0]['Br_Email']==''){
                    echo '<i class="fa fa-envelope" aria-hidden="true"></i>';
                    echo $head[0]['Br_Email'];
                     echo "<br>";
                    }
                    
                    ?>
                    </span>
                    </p>
                
                
                
                <iframe src="<?=$head[0]['Br_gMap'] ?>" frameborder="0"></iframe>
                
               
          
    </blockquote>
                </div>
            </div>
        </div>
    </div>
</section>
    

<section class="block remove-top">
        <br>
        <div class="heading4">
                    <h2>Branches </h2>
                    <span>Find One Near You!</span>
        </div>
              

    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="vehiculs-sec">
                    <div class="row">
                        <?php foreach($branches as $branch): ?> <!-- Change class="col-md-x" where x can be 12,6,8,4 depending on size in bootstrap -->
                        <div class="col-md-6">
                                        <div class="vehiculs-box">
                                            <div class="vehiculs-thumb">
                                            <img src="<?= base_url("Themes/cars/dark/").$branch['Br_img']?>" alt="" /> 
                                                <span class="spn-status"> <?=$branch['Br_Place'] ?></span>

                                                <div class="user-preview">
                                                    
                                                </div> 
                                                <a class="proeprty-sh-more" href="<?=$branch['Br_gMap'] ?>"><i class="fa fa fa-map-marker"> </i></a>
                                               
                                                <p class="car-info-smal">
                                                <?=$branch['Br_addr'] ?><br>
                                        
                                        <i class="fa fa-phone" aria-hidden="true"></i> <?=$branch['Br_Ph1'] ?>
                            <br>
                            <?php
                            if (!$branch['Br_Ph2']==''){
                            echo '<i class="fa fa-phone" aria-hidden="true"></i>';
                            
                            echo $branch['Br_Ph2'];
                                echo "<br>";
                            }
                            if (!$branch['Br_Email']==''){
                                echo '<i class="fa fa-envelope" aria-hidden="true"></i>';
                                echo $branch['Br_Email'];
                                echo "<br>";
                                }
                                
                                ?>
                                        </p>
                                            </div>
                                            <span class="price"><?=$branch['Br_Place'] ?></span>
                                            
                                        </div><!-- prop Box -->
                        </div> 
                        <?php endforeach;?>
                    </div>
                </div>
            </div>
        </div>
    </div>        
                    
                       
                            
                    
                                    
                            
    
          
</section>


    <section class="block remove-top">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="heading4">
                            <h2></h2>
                        </div>
                        <div class="contact-page-sec">
                            <div class="row">
                                <div class="col-md-6 column">
                                    <div class="contact-form">
                                        <form>
                                            <div class="row">
                                                <div class="col-md-12">
                                                    <i class="fa fa-user"></i>
                                                    <input type="text" placeholder="Name">
                                                </div>
                                                <div class="col-md-12">
                                                    <i class="fa fa-at"></i>
                                                    <input type="text" placeholder="Email">
                                                </div>
                                                <div class="col-md-12">
                                                    <i class="fa fa-pencil"></i>
                                                    <textarea placeholder="Message"></textarea>
                                                </div>
                                                <div class="col-md-12">
                                                    <button class="flat-btn" type="submit">SEND NOW</button>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                                <div class="col-md-6 column">
                                 PUT BEST AGENT'S CONTACT!!!  
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

       <?php require_once 'Footer.php'; ?>
    </div>
    <?php require_once 'Scripts.php'; ?>
</body>
