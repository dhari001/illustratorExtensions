import javax.swing.JFileChooser;
import javax.swing.SwingUtilities;


float red = 0;
float green = 0;
float black = 0;

float bR;
float bG;
float bB;

int penSize = 1;
String name;

void setup(){

  fullScreen();
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
  
  //Orange
  rect(0,height-50,50,50);
  fill(255,128,0);
  
  //Yellow
  rect(50,height-50,50,50);
  fill(255,255,0);
  
  //Lime Green
  rect(100,height-50,50,50);
  fill(128,255,0);
  
  //Green
  rect(150,height-50,50,50);
  fill(0,255,0);
  
  //Blue Green
  rect(200,height-50,50,50);
  fill(0,255,128);
  
  //Cyan
  rect(250,height-50,50,50);
  fill(0,255,255);
  rect(300,height-50,50,50);
  fill(0,255,255);
  
  //Light Blue
  rect(300,height-50,50,50);
  fill(0,128,255);
  rect(350,height-50,50,50);
  fill(0,128,255);
  
  //Royal Blue
  rect(350,height-50,50,50);
  fill(0,0,255);
  rect(400,height-50,50,50);
  fill(0,0,255);
  
  //Purple
  rect(400,height-50,50,50);
  fill(127,0,255);
  rect(450,height-50,50,50);
  fill(127,0,255);
  
  //Pink
  rect(450,height-50,50,50);
  fill(255,0,255);
  rect(500,height-50,50,50);
  fill(255,0,255);
  
  //Pink Red
  rect(500,height-50,50,50);
  fill(255,0,127);
  rect(550,height-50,50,50);
  fill(255,0,127);
  
  //Gray
  rect(550,height-50,50,50);
  fill(128,128,128);
  rect(600,height-50,50,50);
  fill(128,128,128);
  
  //Black
  rect(600,height-50,50,50);
  fill(0,0,0);
  rect(650,height-50,50,50);
  fill(0,0,0);
  
  //White
  rect(650,height-50,50,50);
  fill(255,255,255);
  rect(700,height-50,50,50);
  fill(255,255,255);
  
  
  
  if(mousePressed && mouseX<50 && mouseY>height-50){
    red=255; green=0; black=0;
  }
  
  if(mousePressed && mouseX>50 && mouseX<100 && mouseY>height-50){
    red=255; green=128; black=0;
  }
  
  if(mousePressed && mouseX>100 && mouseX<150 && mouseY>height-50){
    red=255; green=255; black=0;
  }
  
  if(mousePressed && mouseX>150 && mouseX<200 && mouseY>height-50){
    red=128; green=255; black=0;
  }
  
  if(mousePressed && mouseX>200 && mouseX<250 && mouseY>height-50){
    red=0; green=255; black=0;
  }
  
  if(mousePressed && mouseX>250 && mouseX<300 && mouseY>height-50){
    red=0; green=255; black=128;
  }
  
  if(mousePressed && mouseX>300 && mouseX<350 && mouseY>height-50){
    red=0; green=255; black=255;
  }
  
  if(mousePressed && mouseX>350 && mouseX<400 && mouseY>height-50){
    red=0; green=128; black=255;
  }
  
  if(mousePressed && mouseX>400 && mouseX<450 && mouseY>height-50){
    red=0; green=0; black=255;
  }
  
  if(mousePressed && mouseX>450 && mouseX<500 && mouseY>height-50){
    red=127; green=0; black=255;
  }
  
  if(mousePressed && mouseX>500 && mouseX<550 && mouseY>height-50){
    red=255; green=0; black=255;
  }
  
  if(mousePressed && mouseX>550 && mouseX<600 && mouseY>height-50){
    red=255; green=0; black=127;
  }
  
  if(mousePressed && mouseX>600 && mouseX<650 && mouseY>height-50){
    red=128; green=128; black=128;
  }
  
  if(mousePressed && mouseX>650 && mouseX<700 && mouseY>height-50){
    red=0; green=0; black=0;
  }
  
  if(mousePressed && mouseX>700 && mouseX<750 && mouseY>height-50){
    red=255; green=255; black=255;
  }
  
  //penSize buttons
  
  fill(0);
  if(mousePressed && mouseX>800-10 && mouseX<800+10 && mouseY>height-50){
    penSize = 50;
    fill(255);
  }
  ellipse(800,height-25,50,50);
  
  fill(0);
  if(mousePressed && mouseX>850-10 && mouseX<850+10 && mouseY>height-50){
    penSize = 25;
    fill(255);
  }
   ellipse(850,height-25,25,25);
   
   fill(0);
  if(mousePressed && mouseX>880-10 && mouseX<880+10 && mouseY>height-50){
    penSize = 8;
    fill(255);
  }
  ellipse(880,height-25,8,8);
  
  fill(0);
  if(mousePressed && mouseX>900-10 && mouseX<900+10 && mouseY>height-50){
    penSize = 1;
    fill(255);
  }
  ellipse(900,height-25,2,2);
  
  
  //save button
  fill(255);
  rect(950,height-50,50,50);
  fill(0);
  text("SAVE",960,height-20);
    
  //eraseButton
  fill(100);
  rect(1000,height-50,250,50);
  fill(0);
  text("ERASER",1100,height-20);
  
  //eraser --> when button pressed, selects color white to erase
  if(mousePressed && mouseX>1000 && mouseX<1250 && mouseY>height-50){
    red=255; green=255; black=255;

  }
  
  
  
}

void mousePressed(){
  
  if(mousePressed && mouseX>950 && mouseX<1000 && mouseY>height-50){
    saveFrame();
  }

}


String file_name;
JFileChooser chooseFile = new JFileChooser();

void openFile(){
  
  try{
    SwingUtilities.invokeLater(new Runnable() {
      
      public void run(){
        int returnValue = chooseFile.showOpenDialog(null);
        
        if (returnValue == JFileChooser.CANCEL_OPTION){
          System.out.println("Cancelled");
        }
        
        if (returnValue == JFileChooser.APPROVE_OPTION){
          File file = chooseFile.getSelectedFile();
          file_name = file.getAbsolutePath();
        }
        
        else {
          file_name = "none";
        }
      }
    }
    );
  }
  catch (Exception e) {
    e.printStackTrace();
  }
}

void keyReleased() {
  if ( key == 'o'|| key =='O') {
    openFile();
    println(file_name);
    }
  }

void keyPressed(){
  if(key == ESC){
   stop();
  }

}
