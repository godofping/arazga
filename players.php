<?php 
include('header.php');
 ?>

 <div class="container">
  <div class="row">
    <div class="col-md-12 pt-5">
      
<div class="card mt-3">
  <div class="card-body">
    
    <h3>Players</h3> 
    <hr>

    <div class="container">
      <div class="row">
                    
                  

                    <table class="table mt-3">
                      <thead class="thead-dark">
                        <tr>
                          <th scope="col" width="20%">ID</th>
                          <th scope="col" width="60%">Username</th>
                    
                        </tr>
                      </thead>
                      <tbody>

                        <?php $qry = mysqli_query($connection, "select * from player_view");
                          while ($res1 = mysqli_fetch_assoc($qry)) { ?>
                        <tr>
                          <th scope="row"><?php echo $res1['playerId']; ?></th>
                          <td><?php echo $res1['username'] ?></td>
                   
                        </tr>
                        <?php } ?>
                        
                      </tbody>
                    </table>


              
                  </div>
               

                  
    </div>

    
    

  </div>
</div>


        
    
      
    </div>
  </div>
 </div>


    

<?php 
include('footer.php');
?>