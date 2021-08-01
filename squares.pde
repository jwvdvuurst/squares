ArrayList<Integer> squares;
int n = 0;

void setup() {
  size(1000,1000);
  background(255);
  
  squares=new ArrayList<Integer>();
}

void draw() {
  background(255);
  stroke(0);
  fill(255);
  
  n++;
  
  if (n>1000) noLoop();
  
  int nsqrd=n*n;
  
  squares.add(nsqrd);
  
  int part=floor(width/n);
  
  stroke(floor((255/100)*n));
  
  for( int y=0; y<height; y+=part ) {
    for( int x=0; x<width; x+=part ) {
      rect( x,y,part,part );      
    }
  }
  
  fill(0);
  int nr=0;
  for( int s : squares ) {    
      int x=(s%n);
      int y=(s-x)/n;
      
      int sx=x*part;
      int sy=y*part;
      
      rect( sx, sy, part, part );
      nr++;
  }
    
  saveFrame("squares-######.png"); 
}
      
