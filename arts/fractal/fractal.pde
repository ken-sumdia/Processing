float a=0;
frac f;
ArrayList<frac> sponge;
void setup() {
  size(400, 400, P3D);
  sponge =new ArrayList<frac>();
  f = new frac(0,0,0,200);
  sponge.add(f);
}

void mousePressed(){
  ArrayList<frac> next = sponge.get(0).generate();
  sponge = next;
}

void draw() {
  background(51);
  stroke(255);
  noFill();
  
  translate(width/2,height/2);
  rotateX(a);
  rotateY(a);
  rotateZ(a);
  for (frac b : sponge) {
  f.show();
  }
  a+=0.01;
  
}
