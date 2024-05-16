
<div class="main">
    <div class="content">

        <div class="section group" id="">
<div class="container">
            <div class="col-md-3" id="hide" style="float: left;">
                <ul class="list-group">
<?php
$all_category = $this->category_model->getall_category_info();

$counter = 0; // Initialize a counter to keep track of the number of categories displayed.

foreach ($all_category as $single_category) {
    if ($counter < 7) { // Limit the display to 5 categories.
echo '<a style="text-decoration: none !important; color: black;" href="' . base_url('get/category/'.$single_category->category_url_name) . '"><li class="list-group-item">' . $single_category->category_name . '</li></a>';
        $counter++; // Increment the counter.
        
    } else {
        break; // Exit the loop once 5 categories have been displayed.
    }
}
?>

<style>
  .list-group-item:hover {
    background-color: #ffc107;
    color: Black; 
  }
</style>


                </ul>
            </div>
            <div class="col-md-9" id="cara" style=" float: right;">
                    <div id="carouselExampleSlidesOnly" class="carousel slide" data-ride="carousel">
                  <div class="carousel-inner">
                    <div class="carousel-item active">
                      <img class="d-block w-100" src="http://amrshoping.com/uploads/2.jpeg" alt="First slide">
                    </div>
                    <div class="carousel-item">
                      <img class="d-block w-100" src="http://amrshoping.com/uploads/2.jpeg" alt="Second slide">
                    </div>
                    <div class="carousel-item">
                      <img class="d-block w-100" src="http://amrshoping.com/uploads/2.jpeg" alt="Third slide">
                    </div>
                  </div>
                </div>
            </div>
</div>

        </div>
        
        
<div class="section group" id="nextsec">
    <div class="container">
        <h1 style="text-align:center;" class="mt-4">Product Categories</h1>

            <div class="row mt-4 ">
                            <?php
              $all_categroy = $this->category_model->getall_category_info();

                        foreach ($all_categroy as $single_category) {

                            ?>
        <div class="col-md-4 col-sm-2 mb-4" style="">

   
          <a href="<?php echo base_url('get/category/'.$single_category->category_url_name);?>" style="text-decoration: none !important;color: black;">
          <div class="d-flex justify-content-between align-items-center cat1" style="
    background: <?php echo $single_category->bgcolor?>;
    border-radius: 15px;
    padding: 10px 37px;">
            <h3><?php echo $single_category->category_name ?>
</h3>
            <img class=""src="https://amrshoping.com/uploads/category/<?php echo $single_category->cat_image?>" alt="cat_image">
          </div>
          
          </a>
        </div>

         <?php } ?>
 
      
    </div>
</div>
    </div>
</div>