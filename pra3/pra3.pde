
//初期値の設定
float x = 0.1, y = 0.1;
 
//a,bの値を自由に変えてみてください
float a =  1.8, b = 1.0;

//スクリーンの設定
void setup() {
  size(800, 800);
  blendMode(ADD);
  background(0);
  stroke(5, 213, 251, 50);
}

//処理を実行・描画
void draw() {
  float _x, _y;
  for (int i = 0; i < 100; i++) {
    _x = (1 + a * b) * x - b * x * y;
    _y = (1 - b) * y + b * x * x;
    point(_x * 100 + width*0.5, - _y * 100 + height*0.75);
    x = _x;
    y = _y;
  }
}
