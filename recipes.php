<?php include('include/header.php');  ?>
<main  id="authentication" class="inner-bottom-md" style="margin-top:80px;">
	<div class="container">
		<div class="row">
        <?php  $areaname = mysql_query('SELECT * FROM  tbl_recipe_list  WHERE id = "'.$_GET['cat_id'].'" ORDER BY id DESC');   
	                    $areaname_row =@mysql_fetch_array($areaname)  ?>
                        
                        
                        
                         <h1> <?php echo $areaname_row['title'];?></h1>
                         </div>
                 <?php  $recent_recipe = mysql_query('SELECT * FROM  tbl_recipe_list  WHERE id = "'.$_GET['cat_id'].'"  ORDER BY id DESC');   
	                while($recent_recipe_row =@mysql_fetch_array($recent_recipe)) {  ?>
                <div class="col-lg-3">
                <img class="img-responsive" src="admin/uploads/recipes/<?php echo $recent_recipe_row['recipe_image'];?>" />
                <a href=""><h4><?php echo $recent_recipe_row['recipe_name'];?></h4></a>
                </div>
                  <?php   }   ?>
	</div>
</main>
<?php include('include/footer.php'); ?>