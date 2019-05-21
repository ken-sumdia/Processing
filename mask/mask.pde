import processing.video.*;

Capture video;
PImage result;

void setup() {
  size(1280,480);
  colorMode(RGB);
  video = new Capture(this, 640,480, 30);
  
  result = createImage(640,480, RGB);
  video.start();
}
void draw() { 
  if (video.available()) {
    video.read();
   
    for(int x=0;x<video.width;x++){
      for(int y=0;y<video.width;y++){
//         float difred = red(video.get (x,y)); 
        result.set(x,y,video.get(x,y));
      }
    }
    
    image(video,0,0);
    image(result,video.width,0);

  }
}
