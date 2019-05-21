PVector[] pos;

//change this matrix
float[][] matrix = {{1.0,0.0,100.0},
                    {0.0,1.0,100.0},
                    {0.0,0.0,1.0}
                    };

void setup() {
  size(1024, 1024);
  pos = new PVector[4];
  
  //original position of the rectangular.
  pos[0] = new PVector(0, 0);
  pos[1] = new PVector(100, 0);
  pos[2] = new PVector(100, 100);
  pos[3] = new PVector(0, 100);
}

void draw() {
  background(100);
  
  beginShape();
  for(int i=0;i<4;i++){
    float x,y;
    x = matrix[0][0]*pos[i].x + matrix[0][1]*pos[i].y + matrix[0][2]; 
    y = matrix[1][0]*pos[i].x + matrix[1][1]*pos[i].y + matrix[1][2]; 
    vertex(x, y);
  }
  endShape(CLOSE); 
}
