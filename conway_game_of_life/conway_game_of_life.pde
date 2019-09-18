// Rules:
// 1. Any live cell with fewer than two live neighbours dies, as if by underpopulation.
// 2. Any live cell with two or three live neighbours lives on to the next generation.
// 3. Any live cell with more than three live neighbours dies, as if by overpopulation.
// 4. Any dead cell with exactly three live neighbours becomes a live cell, as if by reproduction.

int x;
int y;
int resolution = 20;

// For better performance on count living neighbours.
int[][] pxs;

void setup() {
  fullScreen();
  pxs = new int[width/resolution][height/resolution];
  frameRate(5);
  background(255);
}

void draw(){
  for(x = 0; x < pxs.length; x++){
    for(y = 0; y < pxs[0].length; y++){
      if(pxs[x][y] == 0) fill(255);
      else fill(0);
      rect(x * resolution, y * resolution, resolution,resolution);
      setValue(x, y);
    }
  }
  delay(10000);
}

void setValue(int x, int y){
  // Living neighbours
  int ln = countLivingNeighbours(x, y);
  if(pxs[x][y] == 1 && (ln < 2 || ln > 3))
    pxs[x][y] = 0;
  if(pxs[x][y] == 0 && ln == 3)
    pxs[x][y] = 1;
}

int countLivingNeighbours(int x, int y){
  int amount = 0;
  
  if(y > 0){
    amount += pxs[x][y - 1];
    if(x > 0) amount += pxs[x - 1][y - 1];
    if(x < pxs.length - 1) amount += pxs[x + 1][y -1];
  } 

  if(x > 0) amount += pxs[x - 1][y];
  if(x < pxs.length - 1) amount += pxs[x + 1][y];
  
  if(y < pxs[0].length - 1){
    amount += pxs[x][y + 1];
    if(x > 0) amount += pxs[x - 1][y + 1];
    if(x < pxs.length - 1) amount += pxs[x + 1][y + 1];
  }
  return amount;
}

void mousePressed(){
  int x_index = round(map(mouseX, 0, width, 0, pxs.length - 1));
  int y_index = round(map(mouseY, 0, height, 0, pxs[0].length - 1));
  
  if(x_index < width / 4 && y_index < height / 4){
    reset();
  }
  drawGlider(x_index, y_index);
}

void reset(){
  for(x = 0; x < pxs.length; x++){
    for(y = 0; y < pxs[0].length; y++){
      pxs[x][y] = 0;
    }
  }
}

void setLived(int x, int y){
  if(x > 0 && x < pxs.length 
    && y > 0 && y < pxs[0].length)
    pxs[x][y] = 1;
}
  
