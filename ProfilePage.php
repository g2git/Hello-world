<?php include("database.php"); ?>
/**
 * Created by PhpStorm.
 * User: root
 * Date: 7-1-18
 * Time: 2:33
 */

<?php
$ID = 2;
?>



    <?php
    if(isset($_POST['submitReserveren'])) {
        $nameCheck = "SELECT COUNT(*) FROM CodeGorillaUsers WHERE UserID = '$ID';";
        $nC_result  = mysqli_query($connection, $nameCheck);
        if($nC_result < 1){
           ?> <p> You are not allowed to park here. </p> <?php
        }else{
            //update user database with reservation
            ?> <p> Congratulations, you have reserved the spot. </p> <?php
        }
    }

    if(isset($_POST['submit'])){
        $selected_val = $_POST['selectedlocations'];  // Storing Selected Value In Variable
        var_dump($selected_val);
        $value = "SELECT * FROM BusinessSpots WHERE Location = '$selected_val';";
        $val_result  = mysqli_query($connection, $value);
        $final_selection = mysqli_fetch_assoc($val_result);

        ?>

        <form action="ProfilePage.php" method="post">
        <table>
            <tr><td>Location</td><td><?php echo $final_selection["Location"]?></td></tr>
            <tr><td>Ownerid</td><td><?php echo $final_selection["Ownerid"]?></td></tr>
            <tr><td>AvailableSpots</td><td><?php echo $final_selection["AvailableSpots"]?></td></tr>
            <tr><td>TotalSpots</td><td><?php echo $final_selection["TotalSpots"]?></td></tr>
            <tr><td>CurrentUsers</td><td><?php echo $final_selection["CurrentUsers"]?></td></tr>
            <tr><td><input type="submit" name="submitReserveren" value="Reserveren"></td></tr>
        </table>
        </form>
<?php

    }

        $loc = "SELECT Location FROM BusinessSpots WHERE AvailableSpots > 0;";
        $result  = mysqli_query($connection, $loc);
        $locopt = mysqli_fetch_all($result,MYSQLI_BOTH);
    //var_dump($locopt); ?>
<form method="post" action="ProfilePage.php">
        <select name="selectedlocations">

    <!--        <option selected="Locations">Location</option>-->

        <?php

        // Iterating through the locations
        foreach($locopt as $item){
        ?>
        <option><?php echo $item['Location']; ?></option>
        <?php
        }
        ?>

    </select>
    <input type="submit" name="submit" value="submit">

    <?php
    ?>

</form>

<?php
//echo the results





?>


