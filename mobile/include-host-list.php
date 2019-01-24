<?php include('../connection.php'); ?>
<style type="text/css">
  
</style>

  <div class="row">
    <div class="col-12">
      <div class="table-responsive">
        <table class="table bg-primary">
        <thead class="text-white">
          <th>Host</th>
          <th></th>
          <th></th>
        </thead>
        <tbody class="bg-white">
          <?php 
          $qry = mysqli_query($connection, "select * from find_match_view where matchStatus = 'Room available' and hostId != '" . $_SESSION['playerId'] . "'");

          while ($res = mysqli_fetch_assoc($qry)) { ?>
            <tr>
            <td><?php echo $res['username']; ?></td>
             <td><?php echo $res['difficulty']; ?><br>(<?php echo $res['twoPlayerGameHistoryId']; ?>)</td>
            <td>
              <a href="mobile-match-room-for-joiner.php?twoPlayerGameHistoryId=<?php echo $res['twoPlayerGameHistoryId'] ?>"><button class="btn btn-info">Join</button></a>
            </td>

          </tr>
          <?php } ?>
          
        </tbody>
      </table>
      </div>
    </div>
  </div>
