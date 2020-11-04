float red = 0;
float green = 0;
float black = 0;

float bR;
float bG;
float bB;

int penSize = 1;

void setup(){

  size(800,650);
  background(255);
}

void draw(){
  stroke(red,green,black);
  strokeWeight(penSize);
  if(mousePressed && mouseY<height-50){
    line(pmouseX,pmouseY,mouseX,mouseY);
  }
  
  strokeWeight(3);
  line(0,height-50, width, height-50);
  stroke(0);
  strokeWeight(1);
  fill(255,0,0);
  rect(0,height-50,50,50);
  fill(0,255,0);
  rect(50,height-50,50,50);
  fill(0,0,255);
  rect(100,height-50,50,50);
  fill(255);
  rect(150,height-50,50,50);
  fill(0);
  rect(200,height-50,50,50);
  fill(255);
  rect(250,height-50,50,50);
  fill(0);
  text("?",275,height-25);
  
  if(mousePressed && mouseX<50 && mouseY>height-50){
    red=255; green=0; black=0;
  }
  
  if(mousePressed && mouseX>50 && mouseX<100 && mouseY>height-50){
    red=0; green=255; black=0;
  }
  
  if(mousePressed && mouseX>100 && mouseX<150 && mouseY>height-50){
    red=0; green=0; black=255;
  }
  
  if(mousePressed && mouseX>150 && mouseX<200 && mouseY>height-50){
    red=255; green=255; black=255;
  }
  
  if(mousePressed && mouseX>200 && mouseX<250 && mouseY>height-50){
    red=0; green=0; black=0;
  }
  
  if(mousePressed && mouseX>250 && mouseX<200 && mouseY>height-50){
    red=random(255); green=random(255); black=random(255);
  }
  
  //penSize buttons
  
 
  

  
  fill(0);
  if(mousePressed && mouseX>350-10 && mouseX<350+10 && mouseY>height-50){
    penSize = 50;
    fill(255);
  }
  ellipse(350,height-25,50,50);
  fill(0);
  if(mousePressed && mouseX>400-10 && mouseX<400+10 && mouseY>height-50){
    penSize = 25;
    fill(255);
  }
   ellipse(400,height-25,25,25);
   fill(0);
  if(mousePressed && mouseX>430-10 && mouseX<430+10 && mouseY>height-50){
    penSize = 8;
    fill(255);
  }
  ellipse(430,height-25,8,8);
  fill(0);
  if(mousePressed && mouseX>450-10 && mouseX<450+10 && mouseY>height-50){
    penSize = 1;
    fill(255);
  }
  ellipse(450,height-25,2,2);
  
  
  //save button
  fill(255);
  rect(500,height-50,50,50);
  fill(0);
  text("SAVE",510,height-25);
  
  
  //eraseButton
  fill(100);
  rect(550,height-50,250,50);
  fill(0);
  text("ERASER",670,height-20);
  
  
}

void mousePressed(){
  
  if(mousePressed && mouseX>500 && mouseX<550 && mouseY>height-50){
    saveFrame();
  }
  
  if(mousePressed && mouseX>550 && mouseX<800 && mouseY>height-50){
    background(255);
  }

}
