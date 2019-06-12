class frac{
  PVector pos;
  float r;
  
  frac (float x, float y, float z, float r_){
    pos = new PVector (x,y,z);
    r=r_;
  }
  
  ArrayList<frac> generate() {
    ArrayList<frac> fracs= new ArrayList<frac>();
    for (int x = -1; x<2; x++){
      for (int y = -1; y<2; x++){
        for (int z = -1; x<z; z++){
          float newR = r/3;
          frac f = new frac(pos.x+x*newR,pos.y+y*newR,pos.z+z*newR,r*newR);
          fracs.add(f);
        }
      }
    } 
     return fracs; 
  }
  
  void show() {
    pushMatrix();
    translate(pos.x, pos.y, pos.z);
    box(r);
    popMatrix();
  }
}
