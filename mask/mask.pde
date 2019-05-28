//あまりうまく行きませんでした．
import processing.video.*;

Capture video;
PImage result;
PImage img;
PImage tmp;
float thresh=20.0;

void setup() {
  size(1280,480);
  colorMode(RGB);
  video = new Capture(this, 640,480,50);
  img = loadImage("beach.jpg");
  tmp = createImage(640,480, RGB);
  result = createImage(640,480, RGB);
  video.start();
}

//キーを押す

void keyPressed(){
  println("tmpに保存");
//tmpに保存する．
 if (video.available()) {
  video.read();
    if( key == 'a'){
  tmp.copy(video,0,0,640,480,0,0,640,480);
}
 }
}


void draw() { 
  if (video.available()) {
    video.read ();
    video.loadPixels();
    float d =0.1;
    for(int x=0;x<640;x++){
      for(int y=0;y<480;y++){
        //もし，一時保存したtmpと比較して，同じであればimgをセットする
//        if(abs(brightness(tmp.get(x,y)) - brightness(video.get(x,y))) < thresh){ 
        if(abs(brightness(tmp.get(x,y)) - brightness(video.get(x,y))) < thresh){ 
          result.set(x,y,img.get(x,y));
        }
        //違えばvideo画像を入れる．
        else{
            // fill(video.pixels[y*640 + x]);
     //       ellipse(x+640, y+480, d, d);
            result.set(x,y,video.get(x,y));
        }
      }
    }
   
    }
    image(video,0,0);
//  image(result,0,0);
    image(result,video.width,0);

  
}
