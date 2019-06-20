class dot{
  float x=random(0,width);
  float y=random(0,height);
 
  float speed=3;
  
  void show(){
    fill(255);
    noStroke();
    ellipse(x,y,3,3);
  }
  void move(float mx, float my){
    float d = sqrt( pow((my-this.y),2)+pow((mx-this.x),2));
    this.x=this.x+(mx-this.x)*speed/d;
    this.y=this.y+(my-this.y)*speed/d;
  }
  
  void remove(float ox,float oy){
    float d = sqrt( pow((ox-this.y),2)+pow((oy-this.x),2));
    this.x=this.x+3*(ox-this.x)*speed/d;
    this.y=this.y+3*(oy-this.y)*speed/d;
  }
  
  
  
}
