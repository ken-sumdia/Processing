drop[] d= new drop[1000];

void setup(){
  size(640,640);
  for (int i=0; i<d.length; i++){
  d[i]= new drop();
  }
}

void draw(){
  background(10,10,10);
  for (int i=0; i<d.length; i++){
     d[i].fall();
     d[i].show();
     if(abs(d[i].x-mouseX) <40 && d[i].x-mouseX>0 && abs(d[i].y-mouseY) < 140 && d[i].y-mouseY>0){
       
       d[i].slide_r();
     }
     if(abs(d[i].x-mouseX) <40 && d[i].x-mouseX<0 && abs(d[i].y-mouseY) < 140 && d[i].y-mouseY>0){
       d[i].slide_l();
     }

  }
  
  noStroke();
  fill(0,255,51);
  arc(mouseX,mouseY,80,80,-PI,0);
  
  stroke(0,255,51);
  strokeWeight(4); 
  line(mouseX,mouseY-41,mouseX,mouseY+40);
}
