
<!--Gallery-->

<section class="home">
        <div class="home_hinhnen">
            
        </div>
        
    </section>
    <div class="gallery_tieude">
      <h2 class="gallery_h2">
        LITI FLORIST 
      </h2>
      <div class="gallery_nd">
        Liti Florist mong muốn mang đến những bó hoa tươi tắn và đa dạng màu sắc để thể hiện lòng biết ơn và tình cảm chân thành dành cho phụ nữ trong những dịp đặc biệt.
      </div>
  </div>
    <section class="gallery_vc">
        <div class="wrapper">
            <?php foreach($images as $image) {?>
                <div class="image">
                  <img src="<?= $image['image_url'];?>">
                </div>
              <?php } ?>
        </div>
      
          <div class="gallery">
            <span class="control prev_ga">
              <i class="fas fa-chevron-left"></i>
            </span>
            <span class="control next_ga">
              <i class="fas fa-chevron-right"></i>
            </span>
            <div class="gallery-inner">
              <img src="" alt="" />
            </div>
            <i class="fas fa-times close_ga"></i>
          </div>
       </section>
      
       <!--<section class="openhouse">
        
        
        <h2 class="openhouse_h2">
            What We Do
        </h2>
        <div class="openhouse_container">
            <div class="openhouse_box">
                <div class="openhouse_logo">
                    <img src="https://cdn.litiflorist.com/upload/1698495177299.png" alt="">
                </div>
                <div class="openhoouse_h3">
                  LARUE
                </div>
                <div class="openhouse_time">
                   Hoa tulip, hoa iris, hoa veronica, hoa delphinium chùm
                  </div>
            </div>
            <div class="openhouse_box">
                <div class="openhouse_logo">
                    <img src="https://cdn.litiflorist.com/upload/1651823888158.png" alt="">
                </div>
                <div class="openhoouse_h3">
                  WHITE MERLIN
                </div>
                <div class="openhouse_time">
                  Đoá hoa mang sắc trắng tinh khôi tựa như tình yêu thuần khiết và lời cầu chúc một hạnh phúc hoàn hảo
                </div>
            </div>
            <div class="openhouse_box">
                <div class="openhouse_logo">
                    <img src="https://litiflorist.com/upload/1648603343307.png" alt="">
                </div>
                <div class="openhoouse_h3">
                  GOBI
                </div>
                <div class="openhouse_time">
                  Bó hoa khô với cách phối màu vô cùng ấn tượng cùng với lúa mì khô tựa như chuỗi ngọc toát lên vẻ đẹp sang trọng và quý phái.
                </div>
            </div>
            <div class="openhouse_box">
                <div class="openhouse_logo">
                    <img src="https://cdn.litiflorist.com/upload/1694137169105.png" alt="">
                </div>
                <div class="openhoouse_h3">
                  NGUYỆT HOA
                </div>
                <div class="openhouse_time">
                  Sự kết hợp tinh tế giữa truyền thống và hiện đại, vẻ đẹp của ngày trung thu đẹp tựa như những bông hoa đầy màu sắc và sáng lấp lánh tình đoàn viên
                </div>
            </div>
        </div>
   
      </section>-->
      <section class="cuoicung">
        <div class="cuoicung_container">
          <div class="cuoicung_left">
            <img src="https://litiflorist.com/upload/1621838950893.png" alt="">
          </div>
          <div class="cuoicung_right">
            <div class="cuoicung_box">
                <div class="cuoicung_logo">
                  <i class="fas fa-award"></i>
                </div>
                <h2 class="cuoicung_h2">
                  Liti Florist - Nơi Hội Tụ Sự Tinh Tế của Hoa
                </h2>
                <div class="cuoicung_noidung">
                  Liti Florist là không gian nghệ thuật hoa lãng mạn, nơi bạn có thể khám phá sự hòa quyện của màu sắc tinh tế và hương thơm dễ chịu. Chúng tôi tự hào về việc cung cấp các loại hoa tươi mới nhất và sáng tạo những kiệt tác hoa tuyệt vời.
                </div>
            </div>
            <div class="cuoicung_box">
              <div class="cuoicung_logo">
                <i class="fas fa-utensils"></i>
              </div>
              <h2 class="cuoicung_h2">
                Phong Cách Hoa Liti - Chăm Sóc Tận Tâm và Chất Lượng Đỉnh Cao
              </h2>
              <div class="cuoicung_noidung">
                Liti Florist cam kết mang đến cho khách hàng những trải nghiệm hoa tuyệt vời nhất với dịch vụ chăm sóc khách hàng tận tâm và sự tập trung vào chất lượng. Mỗi bó hoa đều được thiết kế độc đáo và tỉ mỉ, phản ánh sự tôn trọng và đam mê của chúng tôi đối với nghệ thuật hoa.
              </div>
          </div>
          <div class="cuoicung_box">
            <div class="cuoicung_logo">
              <i class="fas fa-hamburger"></i>
            </div>
            <h2 class="cuoicung_h2">
              Liti Florist - Nơi Gửi Gắm Tình Cảm và Ý Nghĩa
            </h2>
            <div class="cuoicung_noidung">
              Tại Liti Florist, chúng tôi hiểu rằng mỗi bó hoa không chỉ là sản phẩm mà còn là thông điệp của tình cảm và ý nghĩa. Chúng tôi tận tâm tạo ra những sáng tạo độc đáo để bạn có thể gửi đi những thông điệp chân thành và đặc biệt.
            </div>
        </div>
        <div class="cuoicung_box">
          <div class="cuoicung_logo">
            <i class="fas fa-phone"></i>
          </div>
          <h2 class="cuoicung_h2">
            Liti Florist - Mở Cánh Cửa Cho Khám Phá Thế Giới Hoa Lụa
          </h2>
          <div class="cuoicung_noidung">
            Với sự sáng tạo không ngừng và niềm đam mê với nghệ thuật hoa, Liti Florist là nơi mở cánh cửa cho bạn khám phá thế giới tuyệt vời của hoa lụa và ý tưởng trang trí. Chúng tôi mang đến không gian thú vị để bạn thư giãn và tận hưởng vẻ đẹp tinh tế của thế giới hoa.
          </div>
      </div>
          </div>
        </div>
      </section>
       <!-- <script >
        const images = document.querySelectorAll(".wrapper .image img");
const gallery = document.querySelector(".gallery");
const galleryImg = document.querySelector(".gallery-inner img");
const close = document.querySelector(".gallery .close_ga");

const next = document.querySelector(".control.next_ga");
const prev = document.querySelector(".control.prev_ga");

let currentIndex = 0;

images.forEach((img, index) => {
  img.addEventListener("click", () => {
    currentIndex = index;
    showGallery();
  });
});

function showGallery() {
  currentIndex == images.length - 1
    ? next.classList.add("hide")
    : next.classList.remove("hide");

  currentIndex == 0
    ? prev.classList.add("hide")
    : prev.classList.remove("hide");

  gallery.classList.add("show");
  galleryImg.src = images[currentIndex].src;
}

close.addEventListener("click", () => {
  gallery.classList.remove("show");
});

next.addEventListener("click", () => {
  currentIndex != images.length - 1 ? currentIndex++ : undefined;
  showGallery();
});
prev.addEventListener("click", () => {
  currentIndex != 0 ? currentIndex-- : undefined;
  showGallery();
});

// esc click
document.addEventListener("keydown", (e) => {
  if (e.keyCode == 27) gallery.classList.remove("show");
});

        function user_name(){
    const toggleMenu = document.querySelector('.user_menu');
    toggleMenu.classList.toggle('user_active')
}


    </script> -->