int a;
dot[] dots= new dot[500];
float[] ox= new float[500];
float[] oy= new float[500];

void setup(){
  size(640,640);
  for (int i = 0; i< dots.length; i++){
    dots[i] =new dot();
    ox[i]=dots[i].x;
    oy[i]=dots[i].y;
  }
}

void draw(){
  background(0);
  fill(255);
  for (int i = 0; i< dots.length; i++){
    dots[i].show();
      if (mousePressed == true){
        dots[i].move(mouseX,mouseY);
  }
  else{
    dots[i].remove(ox[i],oy[i]);
  }
  
  
  }
  //////////////////////////////////////////////////////////

}
