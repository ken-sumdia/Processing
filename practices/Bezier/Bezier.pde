import java.util.List;
import java.util.ArrayList;
import java.util.Iterator;

Ripple rip;
List<Ripple> ripList = new  ArrayList<Ripple>();

float P_x;
float P_y;
float P_x1;
float P_y1;
float t;
float P1_x=410;
float P1_y=20;
float P2_x=440;
float P2_y=300;
float P3_x=240;
float P3_y=300;
int flag=0;

void setup() {
  size(640, 360); 
  stroke(255);
  noFill();
}

void draw() {
    //fade();
    Iterator<Ripple> iter = ripList.iterator();
    while(iter.hasNext())
    {
        Ripple rip = iter.next();
        rip.update();
        rip.display();
        if(rip.getDiameter() > width)
        {
            iter.remove();
        }
    }
  background(0);
  float P0_x=mouseX;
  float P0_y=mouseY;
  //for (int i = 0; i < 400; i += 20) {
    //bezier(mouseX-(i/2.0), 40+i, 410, 20, 440, 300, 240-(i/16.0), 300+(i/8.0));
  //  bezier(mouseX, mouseY, 410, 20, 440, 300, 240, 300);
  //}
  for (float t=0 ; t<1;t+=0.001){
  P_x=pow((1-t),3)*P0_x+3*t*pow(1-t,2)*P1_x+3*pow(t,2)*(1-t)*P2_x+pow(t,3)*P3_x;
  P_y=pow((1-t),3)*P0_y+3*t*pow(1-t,2)*P1_y+3*pow(t,2)*(1-t)*P2_y+pow(t,3)*P3_y;
  point(P_x,P_y);
  P_x1=pow((1-2*t),3)*P0_x+3*t*pow(1-2*t,2)*P1_x+3*pow(2*t,2)*(1-2*t)*P2_x+pow(2*t,3)*P3_x;
  P_y1=pow((1-2*t),3)*P0_y+3*t*pow(1-2*t,2)*P1_y+3*pow(2*t,2)*(1-2*t)*P2_y+pow(2*t,3)*P3_y;
  point(P_x1,P_y1);
  }
/*  if(mousePressed == true){
    flag++;
  ellipse(mouseX,mouseY,180,180);
 }
 else{
   ellipse(mouseX,mouseY,120,120);
 }
 if(flag==1){
  for(float i=0;i<900;i+=1){
    ellipse(mouseX,mouseY,i,i);
    
    if(i==899){
      flag=0;
    }
  }
 }
 */
}
//クリックされたときに実行される
void mousePressed()
{
   ripList.add(new Ripple(width/2, height/2)); //波紋を追加する
}

void fade()
{
  noStroke();
  fill(0,0,0,50);
  rect(0,0,width, height);
}

class Ripple 
{
    private float x, y;
    private float d;
    private color c;
    
    public Ripple(float x, float y)
    {
        this.x = x;
        this.y = y;
        this.d = 1;
        this.c = color(random(360), 200, 200);
    }
    
    public float getDiameter()
    {
        return d;
    }
    
    public void setDiameter(float d)
    {
        this.d = d;
    }
    
    public void update()
    {
        d += 5.0;
    }
    
    public void display()
    {
        noFill();
        stroke(c);
        strokeWeight(5);
        ellipse(x, y, d, d);
    }
}
