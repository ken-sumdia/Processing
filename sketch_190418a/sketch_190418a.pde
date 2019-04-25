void setup(){
  size(1024,1024);  
  float array[][] ={{0,100,100,0},{0,0,100,100},{1,1,1}};
  float trans[][]={{1,0,100},{0,1,100},{0,0,0}};
  float cha[][]={0.0,0.0,0.0};
}
void draw(){
  for(int i=0;i<3;i++){
    for(int j=0;j<3;j++){ 
        for(int k=0;k<3;k++){
      cha += array[i][j]*trans[i][j];
    } 
  }
  beginShape();
  vertex(0,0);
  vertex(100,0);
  vertex(100,100);
  vertex(0,100);
  endShape(CLOSE);
  

}
