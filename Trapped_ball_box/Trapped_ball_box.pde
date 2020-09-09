float boxScale = 450;//box størrelse 
float ballX = 250; //boldens x værdi
float ballY = 150; //boldens y værdi
float ballSpeedX = 2 , ballSpeedY = 2; //boldens x og y hastigheder

float scaleSpeed = -1;// hvor hurtigt bolden bliver mindre 

void setup(){//køre det her før void draw
  size(500,500);
  background(0,0,0);
  rectMode(CENTER);//gør at firkanten går ud fra centeret og ikke ud fra venstre øverste hjørne 
}


void draw(){
  clear();
 ballX = ballX + ballSpeedX;// gør at bolden bevæger sig i x aksen
ballY = ballY + ballSpeedY; //gør at bolden bevæger sig i y aksen
fill(200);
ellipse(ballX,ballY, 20,20);//selve bolden. BallX og ballY er sat i boldens x og y værdier.
  boxScale = boxScale - 1; //gør at kassen bliver mindre. Man kan gøre sådan he da kassen y og x værdier er det samme. 
  stroke(200);
  noFill();
  strokeWeight(5);//gør kassen streger lidt tykkere

  rect(250,250,boxScale,boxScale);//selve kassen. lidt det samme der sker i kassen x og y værdier som i bolden bare hvor kassen bliver mindre
  
   if(ballX > width/2 + boxScale/2){//hvis ballX værdier er større end breden af bolden dividere med 2 + breden af kassen divideret med 2 så skal ballSpeedX gangens med -1
    ballSpeedX *= -1;
 }
    
   if(ballY > width/2 + boxScale/2){// det samme sker her bare med y
    ballSpeedY *= -1;
   }
    
   if(ballX < width/2 - boxScale/2){//det samme sker her bare hvor vi minuser istedet 
    ballSpeedX *= -1;
   }
   
   if(ballY < width/2 - boxScale/2){ // det samme igen
    ballSpeedY *= -1;
   }
 }
 
 //svær opgave, tror sikkert godt at man kunne have brugt boolean på en eller anden måde. 
 //Som du kan se virker koden ikke helt og er ikke sikker på hvordan jeg skal fikse det. 


  




    
 
