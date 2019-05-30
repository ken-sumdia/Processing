
PImage input, result;
//float[][] c_matrix = {{(float)1/16,(float)2/16,(float)1/16},
//                      {(float)1/8,(float)1/4,(float)1/8},
//                      {(float)1/16,(float)1/8,(float)1/16}}; 
//float[][] c_matrix = {{(float)1/5,0,0,0,0},
//                      {0,(float)1/5,0,0,0},
//                     {0,0,(float)1/5,0,0},
//                      {0,0,0,(float)1/5,0},
//                      {0,0,0,0,(float)1/5}};  
/*
float[][] c_matrix = {{0,0,0,0,0,0,0,0,0,0},
                      {0,0,0,0,0,0,0,0,0,0},
                      {0,0,0,0,0,0,0,0,0,0},
                      {0,0,0,0,0,0,0,0,0,0},
                      {0,0,0,0,0,0,0,0,0,0}}; 
  */
  float[][] c_matrix = {{0,1,0},
                        {1,0,-1},
                        {0,-1,0}}; 
/*  float[][] c_matrix2 = {{0,-1,0},
                        {0,1,0},
                        {0,0,0}}; 
  */
  float[][] c_matrix2 = {{0,0,0},
                        {0,1,0},
                        {0,0,0}}; 
void setup(){
  input = loadImage("Lenna.jpg");
  result = createImage(512, 512, RGB);

  size(1536,512);
}

void draw(){
  image(input, 0, 0); 
  
  for (int x = 1; x < input.width-1; x=x+1) {
    for (int y = 1; y < input.height-1; y=y+1 ) {
      
      float rsum = 0, gsum = 0, bsum = 0;
      
      for (int i = 0; i < 3; i++){
        for (int j= 0; j < 3; j++){
          rsum += 10*c_matrix[i][j]* red(input.get(x+i-1,y+j-1))+c_matrix2[i][j]* red(input.get(x+i-1,y+j-1));
          gsum += 10*c_matrix[i][j]* green(input.get(x+i-1,y+j-1))+c_matrix2[i][j]* green(input.get(x+i-1,y+j-1));
          bsum += 10*c_matrix[i][j]* blue(input.get(x+i-1,y+j-1))+c_matrix2[i][j]* blue(input.get(x+i-1,y+j-1));
        }
      }
      
      rsum = constrain(rsum,0,255);
      gsum = constrain(gsum,0,255);
      bsum = constrain(bsum,0,255);
      
    //  brightness(color(rsum, gsum, bsum)) += 30;
      
      result.set(x,y,color(rsum, gsum, bsum));
    }
  }
    image(result, input.width,0);
    for (int x = 1; x < input.width-1; x=x+1) {
    for (int y = 1; y < input.height-1; y=y+1 ) {
      
      float rsum2 = 0, gsum2 = 0, bsum2 = 0;
      
      for (int i = 0; i < 3; i++){
        for (int j= 0; j < 3; j++){
          rsum2 += c_matrix2[i][j]* red(input.get(x+i-1,y+j-1));
          gsum2 += c_matrix2[i][j]* green(input.get(x+i-1,y+j-1));
          bsum2 += c_matrix2[i][j]* blue(input.get(x+i-1,y+j-1));
        }
      }
      
      rsum2 = constrain(rsum2,0,255);
      gsum2 = constrain(gsum2,0,255);
      bsum2 = constrain(bsum2,0,255);
      
    //  brightness(color(rsum, gsum, bsum)) += 30;
      
      result.set(x,y,color(rsum2, gsum2, bsum2));
    }
    }

  image(result,input.width*2,0);
}
