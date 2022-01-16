<?php 
    error_reporting(E_ERROR | E_PARSE);
    //get the first page
    //including the database connection file
    include_once("config.php");
  
    if(isset($_POST['question']))
    {

        $rig_answers=0;
        foreach ($_POST['question'] as $id_question => $id_answer) {

            $right_answer= mysqli_fetch_array(mysqli_query($mysqli, "SELECT *  FROM answers where  question='$id_question' and correct=1 "));
           
           if($right_answer['id'] == $id_answer)
           {
            $rig_answers+=1;
           }
        }
        if($rig_answers>=22){
            echo json_encode(['result'=>'success', 'correct'=>$rig_answers]);
        }
        else
        {
            echo json_encode(['result'=>'failed', 'correct'=>$rig_answers]);
        }

    }
    $mysqli->close();
    ?>