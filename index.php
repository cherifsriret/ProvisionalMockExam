<?php
//including the database connection file
include_once("config.php");

$result = mysqli_query($mysqli, "SELECT * from questions ORDER BY RAND() LIMIT 25"); 
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Provisional Mock Exam</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="style.css">

</head>
<body class="px-5">
    <?php include('nav_bar.php') ?>
    <div id="first-section">
        <div class="row mt-5  justify-content-center">
            <div class="col-4">
                <div class="mb-3 row">
                    <label for="nameCondidate" class="col-sm-4 col-form-label px-1"><b>Your Name</b></label>
                    <div class="col-sm-8 px-0">
                        <input type="text" class="form-control" id="nameCondidate" placeholder="Enter Your Name">
                    </div>
                </div>
            </div>
        </div>
        <div class="row  justify-content-center">
            <div class="col-4">
                <div class="mb-3 row">
                    <button class="btn btn-success  btn-question-control col-12" onclick="start_exam()">Start Exam</button>
                </div>
            </div>
        </div>
    </div>
    <div id="second-section" style="display: none;" class="my-5">
    <div class="row mb-4 px-1 justify-content-center header-questions">
            <span class="col"><span class="number_question">1</span>/25</span>
            <span  class="col text-end timer-question" >Time <span class="countdown">15:00</span></span>
        </div>
<form id="answers-form">
    <?php 
    $i=0;
        while($res = mysqli_fetch_array($result)) { 
            $question_id= $res['id'];
            $answers = mysqli_query($mysqli, "SELECT * from answers where question='$question_id' ORDER BY RAND()"); 
            ?>		
        <div class="card card-question step step-<?php echo $i; ?>" style="display: none;" data-index="<?php echo $i; ?>">
                <div class="card-header card-question-header">
                    <?php echo $res['question']; ?>
                </div>
                <div class="card-body">
                    <div class="text-center p-2"><img src="<?php echo $res['image']; ?>" /></div>
                    <?php
                        while($ans = mysqli_fetch_array($answers)) { 
                    ?>
                     <label class="btn btn-answer my-1">
                        <input type="radio" class="radio-answer" autocomplete="off" value="<?php echo $ans['id']; ?>"  name="question[<?php echo $res['id']; ?>]"> <?php echo $ans['answer']; ?>
                    </label>
                    <?php
                    }
                    ?>
                </div>
            </div>
        <?php
        $i++;
        }
        $mysqli->close();
        ?>
        <div class="row mt-5 justify-content-center bottom-button">
            <button type="button" onclick="previousQuestion()" class="btn btn-success btn-question-control col mx-2">Previous</button>
            <button type="button" onclick="nextQuestion()" class="btn btn-success btn-question-control col mx-2">Next</button>
            <button type="button" onclick="endTest()" class="btn btn-success btn-question-control col mx-2">End Test</button>
        </div>
</form>

    </div>
    <div id="final-section" style="display: none;">
    
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <script src="./assets/jQuery-3.6.0/jquery-3.6.0.min.js"></script>
    <script>
        function start_exam() {
           $('#first-section').hide();
           $('#second-section').show("slow");
           $('.card-question.step').first().addClass('active').show("slow");
            var timer2 = "15:00";
            var interval = setInterval(function() {
            var timer = timer2.split(':');
            //by parsing integer, I avoid all extra string processing
            var minutes = parseInt(timer[0], 10);
            var seconds = parseInt(timer[1], 10);
            --seconds;
            minutes = (seconds < 0) ? --minutes : minutes;
            if (minutes < 0) clearInterval(interval);
            seconds = (seconds < 0) ? 59 : seconds;
            seconds = (seconds < 10) ? '0' + seconds : seconds;
            if(seconds<=0 && minutes<=0)
            {
                //call popup end time*
                $('.timer-question').hide();
                endTest();
            }
            else
            {
                $('.countdown').html(minutes + ':' + seconds);
            }
            timer2 = minutes + ':' + seconds;
            }, 1000);
        }
        function previousQuestion() {
            let current_question= $('.card-question.step.active').data('index');
            if(current_question>0)
            {
                $('.card-question.step').removeClass('active').hide();
                $('.card-question.step.step-'+(current_question-1)).addClass('active').show("slow");
                $('.number_question').text((current_question));
            }
        }
        function nextQuestion() {
            let current_question= $('.card-question.step.active').data('index');
            if(current_question<24)
            {
                $('.card-question.step').removeClass('active').hide();
                $('.card-question.step.step-'+(current_question+1)).addClass('active').show("slow");
                $('.number_question').text((current_question+2));
            }
        }
        function endTest() {
            $('.bottom-button').remove();
            $("#answers-form").submit();
        }
        $(function(){
            $('.radio-answer').click(function(){
                if ($(this).is(':checked'))
                {
                    $(this).closest('.card-body').find('.btn-answer').removeClass('active');
                    $(this).closest('.btn-answer').addClass('active');
                }
            });
        });
let rr ;
        $(document).ready(function() {
            //option A
            $("#answers-form").submit(function(e){
                e.preventDefault(e);
                form = $(this).serializeArray();
                console.log(form);
                //call ajax post to save all
                $.post( 'check_results.php', form ).done(function( data ) 
                {
                    data = JSON.parse(data);
                    alert(data.result + "  - correct : "+ data.correct +" /25");
                })
                

            });
        });
       

    </script>
</body>
</html>