<?php include("database.php"); ?>
/**
 * Created by PhpStorm.
 * User: root
 * Date: 7-1-18
 * Time: 3:39
 */
<?php

$ownerid=4;
$location ="Groningen";
$availableSpots = "SELECT AvailableSpots FROM BusinessSpots WHERE Ownerid = '$ownerid' AND Location = '$location';";
$result  = mysqli_query($connection, $availableSpots);
$subject = mysqli_fetch_assoc($result);
$allowedUsers =   "SELECT * FROM CodeGorillaUsers; ";
$result2  = mysqli_query($connection, $allowedUsers);
$subject2 = mysqli_fetch_all($result2,MYSQLI_BOTH);
$currentUsers ="SELECT CurrentUsers FROM BusinessSpots WHERE Ownerid = '$ownerid' AND Location = '$location';";
$result3  = mysqli_query($connection, $currentUsers);
$subject3 = mysqli_fetch_assoc($result3);
$points =10;

?>

    <form action="" method="post" >
        <table>


            <tr><td>Available Spots</td><td> <?php echo $subject['AvailableSpots']; ?></td><td><button id="share">Share</button></td></tr>>
            <tr><td>Current Users</td><td> <?php echo $subject3['CurrentUsers']; ?></td></tr>
            <tr><td>Points</td><td> <?php echo $points; ?></td></tr>
        </table>


    </form>
<?php
            ?><p>Allowed Users</p><?php
        foreach($subject2 as $res) {
            //var_dump($res);
        echo $res['type'], '<br>';
        }




?>