ArrayList<Square> grid;
ArrayList<Circle> circles;

void setup(){
  size(800, 600);
  colorMode(HSB, 360, 100, 100);
  rectMode(CENTER);
  grid = new ArrayList<Square>();
  circles = new ArrayList<Circle>();
  buildShapes();
}

void draw(){
  background(255);
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
   
  for(int x = 0; x < width; x+=200){
    for(int y = 0; y < height; y+=200){
      Square s = new Square(x, y, 200, 200);
      for(int i = 93; i >= 0; i -= 93/4){
        Circle c = new Circle(x + 100, y + 100, i);
        circles.add(c);
      }
      grid.add(s);
    }
  }
}