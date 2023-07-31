    <header>
  <!--- Slider Start--->  <div id="myCarousel" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
    <li data-target="#myCarousel" data-slide-to="3"></li>
  </ol>
<?php $bresult = mysql_query("SELECT * FROM  tbl_slider  where status =1  order by id DESC") or die(mysql_error());
$rows = array();
while ($row = mysql_fetch_assoc($bresult)) {
$rows[] = $row;
}  ?>
  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
   <?php $i = 1; ?>
<?php foreach ($rows as $rowla): ?>
<?php $item_class = ($i == 1) ? 'item active' : 'item'; ?>
<div class="<?php echo $item_class;?>">
<img src="admin/uploads/slider/<?php echo $rowla['image'];?>" alt="<?php echo $rowla['title'];?>" >
</div>
<?php $i++; ?>
<?php endforeach; ?>
  </div>

  <!-- Left and right controls -->
  <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
  <!--- Slider End--->
    </header>
    <section class="success" id="about" style="margin-top:-20px;">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2>About</h2>
                    <hr class="star-light">
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <p> My name is Jayrajsinh Barad And UID is U42000002026 and My Partner name is Yuvrajsinh Vaghela and UID is U42000002127.
                     We are Makeing The  Online  Vehicle  Parking  Reservation  System  (OVPRS)  is  a  system  that  enables customers to reserve a parking  space.
                  The main Objective of the our Project is to manage the Details Of Car, Parking, Parking Space, Parking Sloat, Parking Fees. it's user friendly project
                   so customers can easy to undestand and use our project. THANK YOU</p>
                </div>
            </div>
        </div>
    </section>
