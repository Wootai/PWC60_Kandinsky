class Circle{
  PVector pos;
  float wid;
  color col;
  
  Circle(float x, float y, float w){
    pos = new PVector(random(x-5, x+5), random(y-5, y+5));
    wid = random(w, w+4);
    col = color(random(235), 100, random(50, 80)); 
  }
  
  void show(){
    fill(col, 150);
    noStroke();
    ellipse(pos.x, pos.y, wid, wid);
  }
}