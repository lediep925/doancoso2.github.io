
<!--Xem từng sản phẩm-->
<section class="home">
        <div class="home_hinhnen">
            
        </div>
        
    </section>
    <?php foreach($detailProduct as $item) { ?>
        <section class="product-details spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6">
                    <div class="product__details__pic">
                        <div class="product__details__pic__item">
                            <img class="product__details__pic__item--large"
                                src="<?= $item['product_image'];?>" alt="">
                        </div>
                        <div class="product__details__pic__slider owl-carousel fixheight">
                            <?php foreach($images as $image)  {?>
                                <img data-imgbigurl="<?= $image['URL'] ?>"
                                src="<?= $image['URL'] ?>" alt="">
                            <?php } ?>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <div class="product__details__text">
                        <h3><?= $item['product_name'];?></h3>
                        
                        <div class="product__details__price"><?= number_format($item['product_price']);?> đ</div>
                        <p class="text-left"><?= $item['product_content'];?></p>
                        <a href="?act=cart&xuli=add&id=<?= $item['product_id'];?>" class="primary-btn">ADD TO CART</a>
                       
                        <ul>
                           <!-- <li><b>Availability</b> <span>In Stock</span></li>
                            <li><b>Weight</b> <span>0.5 kg</span></li>-->
                            <li><b>Share on</b>
                                <div class="share">
                                    <a href="https://www.facebook.com/Litiflorist/"><i class="fa fa-facebook"></i></a>
                                    <a href="#"><i class="fa fa-twitter"></i></a>
                                    <a href="https://www.instagram.com/litiflorist/"><i class="fa fa-instagram"></i></a>
                                    <a href="#"><i class="fa fa-pinterest"></i></a>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-12">
                <div class="product__details__tab">
                        <ul class="nav nav-tabs" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link active" data-toggle="tab" href="#tabs-1" role="tab"
                                    aria-selected="true">Description</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" data-toggle="tab" href="#tabs-2" role="tab"
                                    aria-selected="false">Comments</a>
                            </li>
                        </ul>
                        <div class="tab-content">
                            <div class="tab-pane active" id="tabs-1" role="tabpanel">
                                <div class="product__details__tab__desc">
                                    <h6>Products Infomation</h6>
                                    <p><?= $item['product_desc']; ?></p>
                                </div>
                            </div>
                            <div class="tab-pane " id="tabs-2" role="tabpanel">
                                <div class="product__details__tab__desc">
                                    <h6>Comments</h6>
                                    <ul class="cmt-list" id="display_comment" >
                                    </ul>
                                    <?php if(isset($_SESSION['login'])) {?>
                                        <form method="POST" id="comment_form">
                                            <input name="comment_content" class="cmt-input" type="text" placeholder="Comment...">
                                            <input name="productID" class="cmt-input" type="hidden" value="<?= $item['product_id']?>">
                                            <input name="userID" class="cmt-input" type="hidden" value="<?= $_SESSION['login']['user_id'] ?>">
                                            <input type="submit" name="submit" id="submit" class="cmt-btn" value="Submit" />
                                        </form>
                                    <?php } else { ?>
                                        <h2>Vui lòng đăng nhập để có thể bình luận!!</h2>
                                    <?php } ?>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <?php  }?>
    <!-- Product Details Section End -->
   <!-- Related Product Section Begin -->
<section class="related-product">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="section-title related__product__title">
                    <h2>Related Product</h2>
                </div>
            </div>
        </div>
        <div class="row">
            <?php
            // Check if $productByCates is an array before iterating
            if (is_array($productByCates)) {
                foreach ($productByCates as $productByCate) {
                    ?>
                    <div class="col-lg-3 col-md-4 col-sm-6">
                        <!-- Your existing code for product display -->
                    </div>
                    <?php
                }
            } else {
                // Handle the case where $productByCates is not an array (e.g., display a message or take appropriate action)
            }
            ?>
        </div>
    </div>
</section>


    <script  >
$(document).ready(function(){
    $('#comment_form').on('submit', function(event){
        event.preventDefault();
        var form_data = $(this).serialize();
        $.ajax({
            url:"Views/ShopDelis/addComment.php",
            method:"POST",
            data:form_data,
            dataType:"JSON",
            success:function(data) {
                if(data.error != '') {
                    $('#comment_form')[0].reset();
                    load_comment();
                }
            }
        })
    });
 
    load_comment();

    function load_comment() {
        $.ajax({
            url:"Views/ShopDelis/fetchComment.php?id=<?= $item['product_id']; ?>",
            method:"POST",
            success:function(data) {
                $('#display_comment').html(data);
            }
        })
    }

});
</script>

