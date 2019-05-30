
PImage input, result;
int thresh=0;
  
void setup(){
  size(1024, 512);
  //loading the input image
  input = loadImage("Lenna.jpg");
  //create a empty image for the result
  result = createImage(512, 512, RGB);

}
void keyPressed() {
  if (thresh>=0 && thresh < 255) {
    thresh= thresh+1;
  } else {
    thresh = 0;
  }
}

void draw(){
  //displaying the input image
  image(input, 0, 0); 
  
  //copying the color info for all the pixels
  for (int y = 0; y < input.height; y++){  
    for (int x = 0; x < input.width; x++){
      color c = input.get(x,y);
      if (brightness(c)>thresh){
        result.set(x,y,color(0));
      }
      else {
         result.set(x,y,color(255));
    }
  }
  }
  //displaying the result
  image(result, input.width, 0);
  }
