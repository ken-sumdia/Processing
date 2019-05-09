Shape[] s = new Shape[10]; 
class Shape { //class
  float x;//横方向の位置座標
  float y;//縦方向の位置座標
  float dx; //横方向の移動速度
  float dy; //縦方向の異動速度
  float d; //直径
  float ds; //直径の拡大速度
  int r;//赤色
  int g;//緑色
  int b;//青色;
  int dr; //赤色の変更速度
  int dg; //緑色の変更速度
  int db; //青色の変更速度

    //オブジェクトを作る関数
    Shape(float nd,int nr, int ng, int nb,float ndx, float ndy,float nds,int ndr, int ndg,int ndb) {
        //属性の初期化. 1.直径,2-4.RGB初期値,5.x方向の移動速度,6.y方向の移動速度,7.直径の拡大速度,8-10.RGBの変更速度
        x = random(width);
        y = random(height);
        d = nd; //直径
        r = nr; //赤の初期値
        g = ng; //緑の初期値
        b = nb; //青の初期値
        dx = ndx; //横方向の移動速度
        dy = ndy; //縦方向の移動速度
        ds = nds; //直径の拡大速度
        dr = ndr; //赤の変更速度
        dg = ndg; //緑の変更速度
        db = ndb; //青の変更速度
    }

void move(float nx, float ny, float nd,int nr,int ng,int nb) { 

  x = nx;
  y = ny;
  d = nd;
  r = nr;
  g = ng;
  b = nb;

  if (x > width - (d/2) || x < (d/2)){
    dx = -dx;
    dy = -dy;
  }
  if (y > height - (d/2) || y < (d/2)){
    dx = -dx;
    dy = -dy;
  }
  //もし円のサイズが大きくなったら，拡大方向を逆転
  if (d > 15.0 || d < 0.1) ds = -ds;
  //もし色のサイズが大きくなったら，拡大方向を逆転
  if(r<=252 || 255 < r) dr = -dr;
  if(g<=250 || 255 < g) dg = -dg;
  if(b<=70 || 255 < b) db = -db;
  //表現
  noStroke();
  fill(r,g,b,100);
  ellipse(x, y, d,d); 
  }
}

void setup() { //準備
  size (600,600);
  noCursor();
  s[0] = new Shape(0,255,255,255,1,1.0,0.1,1,1,1); //最初のオブジェクトを作る
  s[1] = new Shape(10,255,245,206,1.0,0.5,0.8,2,1,0); //2つめを作る
  s[2] = new Shape(1,253,240,221,0.3,0.5,0.1,1,2,1); //3つめを作る
  s[3] = new Shape(10,252,251,181,0.7,0.5,0.5,1,1,2); //4つめを作る
  s[4] = new Shape(10,255,250,199,0.1,0.7,0.8,1,1,3); //5つめを作る
  s[5] = new Shape(10,253,251,79,0.2,0.7,1.0,1,2,1); //6つめを作る
  s[6] = new Shape(12,255,254,132,0.1,1.7,0.9,2,1,2); //7つめを作る
  s[7] = new Shape(8,252,252,89,1.4,1.0,0.7,0,1,3); //8つめを作る
  s[8] = new Shape(12,254,241,188,1.2,0.8,0.2,1,2,1); //9つめを作る
  s[9] = new Shape(10,255,255,210,1.0,0.5,0.4,1,1,1); //10つめを作る

}


void draw() { 
  if (mousePressed) {
fill(150,20,10);
ellipse(mouseX, mouseY, 80, 80);
  }
//     background(4,21,41);
    for (int i = 0; i < 10; i++) {    
      s[i].move(s[i].x + s[i].dx, s[i].y + s[i].dy,s[i].d + s[i].ds,s[i].r + s[i].dr,s[i].g + s[i].dg,s[i].b + s[i].db);
    }
    noStroke();
    fill(255,255,255,200);
    ellipse(width/5,height/12,180,180);
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
