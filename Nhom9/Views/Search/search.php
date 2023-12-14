<?php

if ($_SERVER ["REQUEST_METHOD"] == "POST") {
    $name = $_post ["Search"];
    if ($name == "LILY "){
        echo "LILY OF THE VALLEY";

    }
    else if ($name == "CLOUD "){
        echo "CLOUD IN THE BOX";
    }
    else if ($name == "SUNSHINE"){
        echo "SUNSHINE CALLA";

    }
    else {
        echo "Không có sản phẩm";
    }


}
?>
<form action="?act=search" method ="POST">

Liti Florist <input type= "text" name = "Search">
<input type="submit">
</form>