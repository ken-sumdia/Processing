/**
 * Bezier. 
 * 
 * The first two parameters for the bezier() function specify the 
 * first point in the curve and the last two parameters specify 
 * the last point. The middle parameters set the control points
 * that define the shape of the curve. 
 */
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

void setup() {
  size(640, 360); 
  stroke(255);
  noFill();
}

void draw() {
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
  ellipse(mouseX,mouseY,120,120);
 }
