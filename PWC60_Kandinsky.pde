ArrayList<Square> grid;
ArrayList<Circle> circles;

void setup(){
  size(400, 300);
  colorMode(HSB, 360, 100, 100);
  grid = new ArrayList<Square>();
  circles = new ArrayList<Circle>();
  buildShapes();
}

void draw(){
  for(Square s: grid){
    s.show();
  }
  for(Circle c: circles){
    c.show();
  }
}

void mousePressed(){
  buildShapes();
}

void buildShapes(){
  circles.clear();
  grid.clear();
  for(int x = 0; x < width; x+=100){
    for(int y = 0; y < height; y+=100){
      Square s = new Square(x, y, 100, 100);
      for(int i = 0; i < 5; i++){
        Circle c = new Circle(x+50, y+50, random(80-i*20, 97-i*20));
        circles.add(c);
      }
      grid.add(s);
    }
  }
}