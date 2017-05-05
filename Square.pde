class Square{
  PVector pos;
  float wid;
  float high;
  color col;
  float angle;
  
  Square(float x, float y, float w, float h){
    int rand = floor(random(8));
    pos = new PVector(x+rand, y+rand);
    wid = w+rand;
    high = h+rand;
    col = color(random(255), 100, 90);
    angle = random(-.1, .1);

  }
  
  void show(){
    fill(col);
    noStroke();
    rect(pos.x+100, pos.y+100, wid, high);
  }
}