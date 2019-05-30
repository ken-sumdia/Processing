/**
 * Bezier. 
 * 
 * The first two parameters for the bezier() function specify the 
 * first point in the curve and the last two parameters specify 
 * the last point. The middle parameters set the control points
 * that define the shape of the curve. 
 */
int[] x = {50, 29, 83, 17}; //点A,B,C,D,Eのx座標
int[] y = {18, 82, 43, 43}; //点A,B,C,D,Eのy座標
int[][] p = {{0,0,0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0,0,0}};
void setup() {
  size(640, 360,P3D); 
  stroke(255);
  noFill();
}

void draw() {
  background(0);
  for (float t=0 ; t<1;t+=0.001){
    float[] B={pow((1-t),3),3*t*pow(1-t,2),3*pow(t,2)*(1-t),pow(t,3)}
  
  for(int i=0;i<4;i++){
    for(int j=0;j<4;j++){
      p[i][j]=B[i]
 // for (int i = 0; i < 200; i += 20) {
  //  bezier(mouseX-(i/2.0), 40+i, 410, 20, 440, 300, 240-(i/16.0), 300+(i/8.0));
//  }
}
