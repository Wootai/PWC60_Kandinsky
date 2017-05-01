class Square{
  PVector pos;
  float wid;
  float high;
  color col;
  
  Square(float x, float y, float w, float h){
    pos = new PVector(x, y);
    wid = w;
    high = h;
    col = color(random(255), 100, 90); 
  }
  
  void show(){
    fill(col);
    noStroke();
    rect(pos.x, pos.y, wid, high);
  }
}