<?php
    include_once 'database.php';
    session_start();
    if(!(isset($_SESSION['email'])))
    {
        header("location:login.php");
    }
    else
    {
        $name = $_SESSION['name'];
        $email = $_SESSION['email'];
        include_once 'database.php';
    }
?>			

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>MCQ BUDDY</title>
    <link  rel="stylesheet" href="css/bootstrap.min.css"/>
    <link  rel="stylesheet" href="css/bootstrap-theme.min.css"/>    
    <link rel="stylesheet" href="css/welcome.css">
    <link  rel="stylesheet" href="css/font.css">
    <script src="js/jquery.js" type="text/javascript"></script>
    <script src="js/bootstrap.min.js"  type="text/javascript"></script>
	<script src='https://cdn.plot.ly/plotly-2.14.0.min.js'></script>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	<style type="text/css">
            body {
                width: 100%;
                background: url(image/book.jpg) ;
                background-position: center center;
                background-repeat: no-repeat;
                background-attachment: fixed;
                background-size: cover;
            }

        </style>
</head>
<body>
    <nav class="navbar navbar-default title1">
        <div class="container-fluid">
            <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
        <a class="navbar-brand" href="#"><b>MCQ BUDDY</b></a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
        <ul class="nav navbar-nav navbar-left">
			<li <?php if(@$_GET['q']==6) echo'class="active"'; ?> ><a href="welcome.php?q=6"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>&nbsp;Home<span class="sr-only">(current)</span></a></li>
            <li <?php if(@$_GET['q']==1) echo'class="active"'; ?> ><a href="welcome.php?q=1"><span class="glyphicon glyphicon-education" aria-hidden="true"></span>&nbsp;Exam Hall</a></li>
			<li <?php if(@$_GET['q']==5) echo'class="active"'; ?> ><a href="welcome.php?q=5"><span class="glyphicon glyphicon-book" aria-hidden="true"></span>&nbsp;Experiments</a></li>
            <li <?php if(@$_GET['q']==2) echo'class="active"'; ?> ><a href="welcome.php?q=2"><span class="glyphicon glyphicon-list-alt" aria-hidden="true"></span>&nbsp;Dashboard</a></li>
            <li <?php if(@$_GET['q']==3) echo'class="active"'; ?> ><a href="welcome.php?q=3"><span class="glyphicon glyphicon-stats" aria-hidden="true"></span>&nbsp;Ranking</a></li>
			<li <?php if(@$_GET['q']==4) echo'class="active"'; ?> ><a href="welcome.php?q=4"><span class="glyphicon glyphicon-earphone" aria-hidden="true"></span>&nbsp;Contact</a></li>
            
        </ul>
        <ul class="nav navbar-nav navbar-right">
        <li <?php echo''; ?> > <a href="logout.php?q=welcome.php"><span class="glyphicon glyphicon-log-out" aria-hidden="true"></span>&nbsp;Logout</a></li>
        </ul>

        </div>
    </div>
    </nav>
    <div class="container">
        <div class="row">
            <div class="col-md-12">
				<?php if(@$_GET['q']==6) 
                {
					echo '<div class="container">
							  <div id="myCarousel" class="carousel slide" data-ride="carousel">
								<!-- Indicators -->
								<ol class="carousel-indicators">
								  <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
								  <li data-target="#myCarousel" data-slide-to="1"></li>
								  <li data-target="#myCarousel" data-slide-to="2"></li>
								</ol>

								<!-- Wrapper for slides -->
								<div class="carousel-inner">
								  <div class="item active">
									<img src="image/carousel_1.jpg" alt="1" style="width:100%;">
									<div class="carousel-caption">
									  <h1 style="color:red;">MCQ BUDDY</h1>
									  <h3 style="color:white;">The Best Online Learning Platform!</h3>
									</div>
								  </div>

								  <div class="item">
									<img src="image/carousel_2.jpg" alt="2" style="width:100%;">
									<div class="carousel-caption">
									  <h1 style="color:red;">MCQ BUDDY</h1>
									  <h3 style="color:white;">The Best Online Learning Platform!</h3>
									</div>
								  </div>
								
								  <div class="item">
									<img src="image/carousel_3.jpg" alt="3" style="width:100%;">
									<div class="carousel-caption">
									  <h1 style="color:red;">MCQ BUDDY</h1>
									  <h3 style="color:white;">The Best Online Learning Platform!</h3>
									</div>
								  </div>
								</div>

								<a class="left carousel-control" href="#myCarousel" data-slide="prev">
								  <span class="glyphicon glyphicon-chevron-left"></span>
								  <span class="sr-only">Previous</span>
								</a>
								<a class="right carousel-control" href="#myCarousel" data-slide="next">
								  <span class="glyphicon glyphicon-chevron-right"></span>
								  <span class="sr-only">Next</span>
								</a>
							  </div>
							</div><br><br>';
							
					echo ' <div id="tour" class="bg-1">
							  <div class="container">
								<h3 class="text-center" style="color:white;">About Us</h3><br>
								<div class="row text-center">
								  <div class="col-sm-12">
									<div class="thumbnail">
									<div class="media">
									  <div class="media-left">
										<img src="image/description.jpg" class="media-object"  width="400" height="510">
									  </div>
									  <div class="media-body" style="padding:50px;">
										<h2 class="media-heading">Innovative Way to Learn</h2>
										<p>GCE Advanced Level Examination is a very important examination that directs children to higher education in Sri Lanka. The question paper for students appearing for the examination under the Science stream consists of 3 main sections.</p>
										<p>Those are multiple-choice questions, structured essay questions, and essay questions. Out of those sections, 50 marks will be awarded for the multiple-choice question paper. Therefore, multiple-choice questions are a very important part of the advanced-level examination.</p>
										<p>MCQ - BUDDY is a web application to prepare the students who are going to sit for the GCE Advanced Level examination in the subject stream of science for multiple-choice questions. This proposed project is a web-based application aimed at the GCE Advanced Level Chemistry subject.</p>
										<p>Students can answer multiple questions from past chemistry exams by visiting this website. After answering the relevant questions, the system will immediately give the marks obtained by each student to the question paper. Also, this system provides a detailed explanation of all the questions that the student faced.</p>
										<p>This system also provides an analysis report about the student for which lessons the relevant student has answered well. Using this web application system gives students a great opportunity to develop their subject knowledge.</p>
									  </div>
									</div>	 
							  </div>
							</div><br>';
					
					echo '<div id="tour" class="bg-1">
							  <div class="container">
								<h3 class="text-center" style="color:white;">Join With Us</h3><br>
								<div class="row text-center">
								  <div class="col-sm-3">
									<div class="thumbnail">
									  <img src="image/exam.png" alt="Paris" width="400" height="300">
									  <br>
									  <p><strong>Exam Hall</strong></p>
									  <a href="welcome.php?q=1"><button class="btn btn-primary" ><span class="" aria-hidden="true"></span>&nbsp;Go to Exam Hall</button></a>
									</div>
								  </div>
								  <div class="col-sm-3">
									<div class="thumbnail">
									  <img src="image/dashboard.png" alt="New York" width="400" height="300">
									  <br>
									  <p><strong>Dashboard</strong></p>
									  <a href="welcome.php?q=2"><button class="btn btn-primary" ><span class="" aria-hidden="true"></span>&nbsp;Go to Dashboard</button></a>
									</div>
								  </div>
								  <div class="col-sm-3">
									<div class="thumbnail">
									  <img src="image/experiment.jpg" alt="San Francisco" width="400" height="300">
									  <br>
									  <p><strong>Experiments</strong></p>
									  <a href="welcome.php?q=5"><button class="btn btn-primary" ><span class="" aria-hidden="true"></span>&nbsp;Go to Experiments</button></a>
									</div>
								  </div>
								  <div class="col-sm-3">
									<div class="thumbnail">
									  <img src="image/ranking.png" alt="San Francisco" width="400" height="300">
									  <br>
									  <p><strong>Ranking</strong></p>
									  <a href="welcome.php?q=3"><button class="btn btn-primary" ><span class="" aria-hidden="true"></span>&nbsp;Go to Ranking</button></a>
									</div>
								  </div>
								</div>
							  </div>
							</div><br><br>';
                   
                }?>
			
                <?php if(@$_GET['q']==1) 
                {
                    $result = mysqli_query($con,"SELECT * FROM quiz ORDER BY date DESC") or die('Error');
					echo '<h3 style="background-color:#FFB593; text-align: center; padding: 10px; border-radius:20px">Exam Hall</h3>';
                    echo  '<div class="panel"><div class="table-responsive"><table class="table table-striped title1">
                    <tr><td><center><b>S.N.</b></center></td><td><center><b>Topic</b></center></td><td><center><b>Total question</b></center></td><td><center><b>Marks</center></b></td><td><center><b>Action</b></center></td></tr>';
                    $c=1;
                    while($row = mysqli_fetch_array($result)) {
                        $title = $row['title'];
                        $total = $row['total'];
                        $sahi = $row['sahi'];
                        $eid = $row['eid'];
                    $q12=mysqli_query($con,"SELECT score FROM history WHERE eid='$eid' AND email='$email'" )or die('Error98');
                    $rowcount=mysqli_num_rows($q12);	
                    if($rowcount == 0){
                        echo '<tr><td><center>'.$c++.'</center></td><td><center>'.$title.'</center></td><td><center>'.$total.'</center></td><td><center>'.$sahi*$total.'</center></td><td><center><b><a href="welcome.php?q=quiz&step=2&eid='.$eid.'&n=1&t='.$total.'" class="btn sub1" style="color:black;margin:0px;background:#1de9b6"><span class="glyphicon glyphicon-new-window" aria-hidden="true"></span>&nbsp;<span class="title1"><b>Start</b></span></a></b></center></td></tr>';
                    }
                    else
                    {
                    echo '<tr style="color:#99cc32"><td><center>'.$c++.'</center></td><td><center>'.$title.'&nbsp;<span title="This quiz is already solve by you" class="glyphicon glyphicon-ok" aria-hidden="true"></span></center></td><td><center>'.$total.'</center></td><td><center>'.$sahi*$total.'</center></td><td><center><b><a href="update.php?q=quizre&step=25&eid='.$eid.'&n=1&t='.$total.'" class="pull-right btn sub1" style="color:black;margin:0px;background:red"><span class="glyphicon glyphicon-repeat" aria-hidden="true"></span>&nbsp;<span class="title1"><b>Restart</b></span></a></b></center></td></tr>';
                    }
                    }
                    $c=0;
                    echo '</table></div></div>';
                }?>

                <?php
                    if(@$_GET['q']== 'quiz' && @$_GET['step']== 2) 
                    {
                        $eid=@$_GET['eid'];
                        $sn=@$_GET['n'];
                        $total=@$_GET['t'];
                        $q=mysqli_query($con,"SELECT * FROM questions WHERE eid='$eid' AND sn='$sn' " );
                        echo '<div class="panel" style="margin:5%">';
                        while($row=mysqli_fetch_array($q) )
                        {
                            $qns=$row['qns'];
                            $qid=$row['qid'];
                            echo '<b>Question &nbsp;'.$sn.'&nbsp;::<br /><br />'.$qns.'</b><br /><br />';
                        }
                        $q=mysqli_query($con,"SELECT * FROM options WHERE qid='$qid' " );
                        echo '<form action="update.php?q=quiz&step=2&eid='.$eid.'&n='.$sn.'&t='.$total.'&qid='.$qid.'" method="POST"  class="form-horizontal">
                        <br />';

                        while($row=mysqli_fetch_array($q) )
                        {
                            $option=$row['option'];
                            $optionid=$row['optionid'];
                            echo'<input type="radio" name="ans" value="'.$optionid.'">&nbsp;'.$option.'<br /><br />';
                        }
                        echo'<br /><button type="submit" class="btn btn-primary"><span class="glyphicon glyphicon-lock" aria-hidden="true"></span>&nbsp;Submit</button></form></div>';
                    }

                    if(@$_GET['q']== 'result' && @$_GET['eid']) 
                    {
                        $eid=@$_GET['eid'];
                        $q=mysqli_query($con,"SELECT * FROM history WHERE eid='$eid' AND email='$email' " )or die('Error157');
                        echo  '<div class="panel">
                        <center><h1 class="title" style="color:#660033">Your Result</h1><center><table class="table table-striped title1" style="font-size:20px;font-weight:1000;">';

                        while($row=mysqli_fetch_array($q) )
                        {
                            $s=$row['score'];
                            $w=$row['wrong'];
                            $r=$row['sahi'];
                            $qa=$row['level'];
							$percentage = round($r/$qa*100, 2);
							if($percentage <= 40)
							{
								$medal = '<h1 style="color:#FFB593">Congratulations! You won <b>Bronze</b> Medal!</h2>';
							}
							else if($percentage <= 75)
							{
								$medal = '<h1 style="color:#C0C0C0">Congratulations! You won <b>Silver</b> Medal!</h2>';  
							}
							else
							{
								$medal = '<h1 style="color:#FFE55C">Congratulations! You won <b>Gold</b> Medal!</h2>';
							}
										
                            echo '<tr style="color:#66CCFF"><td>Total Questions</td><td>'.$qa.'</td></tr>
                                <tr style="color:#99cc32"><td>right Answer&nbsp;<span class="glyphicon glyphicon-ok-circle" aria-hidden="true"></span></td><td>'.$r.'</td></tr> 
                                <tr style="color:red"><td>Wrong Answer&nbsp;<span class="glyphicon glyphicon-remove-circle" aria-hidden="true"></span></td><td>'.$w.'</td></tr>
                                <tr style="color:#66CCFF"><td>Score&nbsp;<span class="glyphicon glyphicon-star" aria-hidden="true"></span></td><td>'.$s.'</td></tr>
								<div id="plot_div"></div>

								'
								.$medal.
								'
								
								<script> 
									var data = [{
												  type: "pie",
												  values: ['.$r.', '.$w.'],
												  labels: ["Correct", "Incorrect"],
												  textinfo: "label+percent",
												  insidetextorientation: "radial"
											   }]
									
									var layout = [{
													height: 700,
													width: 700
												  }]
												  
									Plotly.newPlot("plot_div", data, layout)

								</script>
								
								';
                        }
						
                        $q=mysqli_query($con,"SELECT * FROM rank WHERE  email='$email' " )or die('Error157');
                        while($row=mysqli_fetch_array($q) )
                        {
                            $s=$row['score'];
                            echo '<tr style="color:#990000"><td>Overall Score&nbsp;<span class="glyphicon glyphicon-stats" aria-hidden="true"></span></td><td>'.$s.'</td></tr>';
                        }
                        echo '</table></div>';
						
						$q2=mysqli_query($con,"SELECT questions.qns, options.option FROM questions INNER JOIN answer ON answer.qid = questions.qid INNER JOIN options ON options.optionid=answer.ansid where questions.eid='$eid' ") or die ('Error157');
						
						echo  '<div class="panel">
                        <center><h1 class="title" style="color:#black">Correct Answers</h1><center><table class="table table-striped title1" style="font-size:20px;font-weight:1000;">';
						
						while($row=mysqli_fetch_array($q2) )
                        {
                            $question=$row['qns'];
							$answer=$row['option'];
                            echo '<tr style="color:black"><td><span class="glyphicon glyphicon-question-sign" aria-hidden="true"></span>'.$question.'&nbsp;</td><td style="color:green">'.$answer.'</td></tr>';
                        }
						echo '</table></div>';
                    }
                ?>

                <?php
                    if(@$_GET['q']== 2) 
                    {	
						$final_score = 0;
						echo '<h3 style="background-color:#FFB593; text-align: center; padding: 10px; border-radius:20px">Dashboard</h3>';
						
                        $q=mysqli_query($con,"SELECT * FROM history WHERE email='$email' ORDER BY date DESC " )or die('Error197');
                        echo  '<div class="panel title">
                        <table class="table table-striped title1" >
                        <tr style="color:black;"><td><center><b>Sr.No.</b></center></td><td><center><b>Quiz</b></center></td><td><center><b>Question Solved</b></center></td><td><center><b>Right</b></center></td><td><center><b>Wrong<b></center></td><td><center><b>Score</b></center></td>';
                        $c=0;
                        while($row=mysqli_fetch_array($q) )
                        {
                        $eid=$row['eid'];
                        $s=$row['score'];
						$final_score = $final_score + $s;
                        $w=$row['wrong'];
                        $r=$row['sahi'];
                        $qa=$row['level'];
                        $q23=mysqli_query($con,"SELECT title FROM quiz WHERE  eid='$eid' " )or die('Error208');

                        while($row=mysqli_fetch_array($q23) )
                        {  $title=$row['title'];  }
                        $c++;
                        echo '<tr><td><center>'.$c.'</center></td><td><center>'.$title.'</center></td><td><center>'.$qa.'</center></td><td><center>'.$r.'</center></td><td><center>'.$w.'</center></td><td><center>'.$s.'</center></td></tr>';
                        }
                        echo'</table></div>';
						
						$row = mysqli_query($con,"SELECT count(*) as t_exams from quiz;" )or die('Error197');
						$row=mysqli_fetch_array($row);
						$total_exams = $row['t_exams'];
						$row = mysqli_query($con,"SELECT count(DISTINCT eid) as g_exams from history WHERE email='$email';" )or die('Error197');
						$row=mysqli_fetch_array($row);
						$given_exams = $row['g_exams'];
						$temp = mysqli_query($con,"SELECT * FROM quiz ORDER BY date DESC") or die('Error');
						$possible_marks = 0;
						while($row1 = mysqli_fetch_array($temp))
						{
							$total_marks = $row1['total'];
							$correct = $row1['sahi'];
							$possible_marks = $possible_marks + ($total_marks*$correct);
						}
						
						$percentage = round($final_score/$possible_marks * 100, 2);
						
						if($total_exams == $given_exams && $percentage >= 65){
							$font=realpath('arial.ttf');
							$image=imagecreatefromjpeg("format.jpg");
							$color=imagecolorallocate($image, 0, 0, 0);
							$date=date('d F, Y');
							imagettftext($image, 18, 0, 925, 685, $color,$font, $date);
							$name_q=mysqli_query($con,"SELECT name FROM user WHERE email='$email'" )or die('Error197');
							while($row2=mysqli_fetch_array($name_q))
							{  $name=$row2['name'];  }
							echo $name;
							imagettftext($image, 42, 0, 150, 490, $color,$font, $name);
							imagettftext($image, 18, 0, 970, 510, $color,$font, $percentage.'%');
							imagejpeg($image,"certificate/certificate.jpg");
							imagedestroy($image);
							
							
							echo'<div style="text-align:center"><a href="certificate/certificate.jpg" download="certificate"><button class="btn btn-primary" ><span class="glyphicon glyphicon glyphicon-download-alt" aria-hidden="true"></span>&nbsp;Download Certificate</button></a></div>';
						}
						else if($total_exams == $given_exams)
						{
							echo '<h5 style="background-color:#FFB593; text-align: center; padding: 5px; border-radius:20px">Percentage less than 65%. Retry!</h5>';
						}
						else{
							echo '<h5 style="background-color:#FFB593; text-align: center; padding: 5px; border-radius:20px">Attempt all the quiz to get eligible for certificate</h5>';
						}
                    }

                    if(@$_GET['q']== 3) 
                    {
						echo '<h3 style="background-color:#FFB593; text-align: center; padding: 10px; border-radius:20px">Leader Board</h3>';
                        $q=mysqli_query($con,"SELECT * FROM rank ORDER BY score DESC " )or die('Error223');
                        echo  '<div class="panel title"><div class="table-responsive">
                        <table class="table table-striped title1" >
                        <tr style="color:red"><td><center><b>Rank</b></center></td><td><center><b>Name</b></center></td><td><center><b>Email</b></center></td><td><center><b>Score</b></center></td></tr>';
                        $c=0;

                        while($row=mysqli_fetch_array($q) )
                        {
                            $e=$row['email'];
                            $s=$row['score'];
                            $q12=mysqli_query($con,"SELECT * FROM user WHERE email='$e' " )or die('Error231');
                            while($row=mysqli_fetch_array($q12) )
                            {
                                $name=$row['name'];
                            }
                            $c++;
                            echo '<tr><td style="color:black"><center><b>'.$c.'</b></center></td><td><center>'.$name.'</center></td><td><center>'.$e.'</center></td><td><center>'.$s.'</center></td></tr>';
                        }
                        echo '</table></div></div>';
                    }
                ?>
				
				
				
				<?php if(@$_GET['q']==5) 
                {
					echo '<h3 style="background-color:#FFB593; text-align: center; padding: 10px; border-radius:20px">Experiments</h3>';
					
					echo  '<div class="panel"><div class="table-responsive"><table class="table table-striped title1">
                    <tr><td><b>Sr.No.</b></td><td><b>Experiment Name</b></td><td><b>Links</b></td></tr>';
					
					$videos = array(
									array("https://www.youtube.com/watch?v=Rnjka3xh6QM","Examination of the properties of alcohols"),
									array("https://www.youtube.com/watch?v=w8yQEM_bXTk","Determination of the order of reaction with respect to Fe3+ for the reaction between Fe3+ & I-"),
									array("https://www.youtube.com/watch?v=AIe2iezu_kM","Study of the characteristics of a dynamic equilibrium system using Fe3+ & SCN- system"),
									array("https://www.youtube.com/watch?v=j1d54TmUHkY","Experimental study of the effect of temperature on the equilibrium system of NO2 and N2O4"),
									array("https://www.youtube.com/watch?v=ueCkd-wufIw","Experimental study of the effect of temperature on the system- CoH2O6 2+aq/CoCl4 2-aq"),
									array("https://www.youtube.com/watch?v=od4LDHBvs2Y","Titration between Na2CO3 and HCl using phenolphthalein and methyl orange"),
									array("https://www.youtube.com/watch?v=I9a50Shg9yU","Experimental determination of the solubility product of CaOH2-"),
									array("https://www.youtube.com/watch?v=Sj6CzUBSjk0","Determination of the percentage of acetic acid in vinegar"),
									array("https://www.youtube.com/watch?v=BvVpqDYGQ5M","Extracting essential oil by steam distillation"),
									array("https://www.youtube.com/watch?v=I8HCpahyBpk","Testing solubility of salts of s block elements")
									);
					for ($x = 1; $x <= 10; $x++) 
					{
					  echo '<tr><td>'.$x.'</td><td>'.$videos[$x-1][1].'</td><td><a href="'.$videos[$x-1][0].'"class="pull-left btn sub1" style="color:black;margin:0px;background:red" target="_blank"><span class="glyphicon glyphicon-facetime-video" aria-hidden="true"></span>&nbsp;<span class="title1"><b>Youtube Video Link</b></span></a></td></tr>';
					}
					
					echo '</table></div></div>';
					
                }?>
				
				<?php if(@$_GET['q']==4) 
                {
                    echo '<h3 style="background-color:#FFB593; text-align: center; padding: 10px; border-radius:20px">Contact Details</h3>';
					
					echo '<h3 style="background-color:#FFB593; text-align: center; padding: 20px; border-radius:20px; opacity: 0.75;">For any query, please reach out to us on contact@mcqbuddy.com</h3>';
					
					echo '<h3 style="background-color:#FFB593; text-align: center; padding: 20px; border-radius:20px; opacity: 0.75;">For any support, please reach out to us on +94 1234567890</h3>';
                }?>
</body>
</html>
