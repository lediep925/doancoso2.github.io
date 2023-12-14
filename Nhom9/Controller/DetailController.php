<?php
    require_once('Models/detail.php');

    class DetailController {
        var $detail_model;

        public function __construct() {
            $this->detail_model = new detail();
        }

        function getDetail() {
            $id = $_GET['id'];
            
            // Check if the "loai" key exists in the $_GET array before accessing it
            $loai = isset($_GET['loai']) ? $_GET['loai'] : null;

            $detailProduct = $this->detail_model->getDetail($id);
            $productByCates = $this->detail_model->getProductByCate($loai);
            $images = $this->detail_model->getImages($id);
            require_once('Views/index.php');
        }
    }
?>
