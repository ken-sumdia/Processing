drop[] d= new drop[1500];
float a=0;



void setup(){  
  size(800,800);
  //////////////////////////////////////////////////////////
  for (int i=0; i<d.length; i++){
  d[i]= new drop();
  }
  //////////////////////////////////////////////////////////
}


void draw(){
  background(10,10,10); 
  noStroke();
  fill(204,153,102);
  rect(0,700,800,800);
//////////////////////////////////////////////////////////
  
  noStroke();  
  for (int i=0; i<d.length; i++){
     d[i].fall();
     d[i].show();
     if (mousePressed == true){
     if(abs(d[i].x-mouseX) <40 && d[i].x-mouseX>0 && abs(d[i].y-mouseY) < 140 && d[i].y-mouseY>0){
       d[i].slide_r();
 //      d[i].spin();
     }
     if(abs(d[i].x-mouseX) <40 && d[i].x-mouseX<0 && abs(d[i].y-mouseY) < 140 && d[i].y-mouseY>0){
       d[i].slide_l();
 //      d[i].spin();
     }
   }
  }
/////////////////////////////////////////////////////////
  noStroke();
  if(mousePressed == true){
    stroke(0,255,255);
    strokeWeight(2);
  }
  fill(255);
  ellipse(mouseX,mouseY,80,80);
  noStroke();
  if(mousePressed == true){
    stroke(0,255,255);
    strokeWeight(1);
  }
  fill(0);
  ellipse(mouseX+15*cos(a),mouseY+15*sin(a),5,5);
  ellipse(mouseX+15*cos(a+PI/2),mouseY+15*sin(a+PI/2),5,5);
  ellipse(mouseX+15*cos(a+PI),mouseY+15*sin(a+PI),5,5);
  ellipse(mouseX+15*cos(a+3*PI/2),mouseY+15*sin(a+3*PI/2),5,5);
  ellipse(mouseX+30*cos(a+PI/4),mouseY+30*sin(a+PI/4),5,5);
  ellipse(mouseX+30*cos(a+3*PI/4),mouseY+30*sin(a+3*PI/4),5,5);
  ellipse(mouseX+30*cos(a+5*PI/4),mouseY+30*sin(a+5*PI/4),5,5);
  ellipse(mouseX+30*cos(a+7*PI/4),mouseY+30*sin(a+7*PI/4),5,5);
  //////////////////////////////////////////////////////////
  if (mousePressed == true){
      a=a+10;
      
  }
}
