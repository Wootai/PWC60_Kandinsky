class Circle{
  PVector pos;
  float rad;
  PShape s;
  float sx;
  float sy;
  float xoffset;
  float yoffset;
  color col;
  
  Circle(float x, float y, float r){
    pos = new PVector(x+random(-7, 7), y+random(-7, 7));
    xoffset = random(1.1);
    yoffset = random(1.2);
    rad = r;
    s = new PShape();
    s = createShape();
    s.rotate(random(TWO_PI));
    s.beginShape();
    s.fill(floor(random(255)), 100, 100, 200);
    s.noStroke();
    //s.strokeWeight(93/4);
    //s.stroke(floor(random(255)), 100, 100, 200);
    //s.noFill();
    for(float i = 0; i <= TWO_PI; i += .1){
        sx = (cos(i)*(rad+noise(xoffset*10)));
        sy = (sin(i)*(rad+noise(yoffset*10)));
        s.vertex(sx, sy);
        xoffset += 0.01;
        yoffset += 0.01;
      }
    s.endShape(CLOSE);  
  }
  
  void show(){
    fill(col, 110);
    noStroke();
    shape(s, pos.x, pos.y);  

    //ellipse(pos.x, pos.y, rad, rad);
  }
}