void setup() {
size(1080, 1080);
}

void draw() {
if (mousePressed) {
fill(150,20,10);
} else {
fill(12,30,100);
}
ellipse(mouseX, mouseY, 80, 80);
}

int count = 1;

void keyPressed() {


  if(key == 'p' || key == 'P') {


    String path  = System.getProperty("user.home") + "/Desktop" + count + ".jpg";

    save(path);

    count++;
    println("screen saved." + path); 
  }
}
