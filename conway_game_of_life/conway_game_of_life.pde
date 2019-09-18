// Rules:
// 1. Any live cell with fewer than two live neighbours dies, as if by underpopulation.
// 2. Any live cell with two or three live neighbours lives on to the next generation.
// 3. Any live cell with more than three live neighbours dies, as if by overpopulation.
// 4. Any dead cell with exactly three live neighbours becomes a live cell, as if by reproduction.

int x;
int y;
int resolution = 50;

// For better performance on count living neighbours.
int[][] pxs;

void setup() {
  size(500, 500);
  pxs = new int[width/resolution][height/resolution];
  frameRate(5);
  pxs[0][3] = 1;
  pxs[1][2] = 1;
  pxs[1][1] = 1;
}

void draw(){
  background(255);  
  for(x = 0; x < pxs.length; x++){
    for(y = 0; y < pxs[0].length; y++){
      
      if(pxs[x][y] == 0) fill(255);
      else fill(0);
     
      rect(x * resolution, y * resolution, resolution,resolution);
      setValue(x, y);
    }
  }  
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
  // Optimize later
  // Left to right top to botton
  if(x > 0 && y > 0) amount += pxs[x - 1][y - 1];
  if(y > 0) amount += pxs[x][y - 1];
  if(y > 0 && x < pxs.length - 1) amount += pxs[x + 1][y -1];

  if(x > 0) amount += pxs[x - 1][y];
  if(x < pxs.length - 1) amount += pxs[x + 1][y];
  
  if(x > 0 && y < pxs[0].length - 1) amount += pxs[x - 1][y + 1];
  if(y < pxs[0].length - 1) amount += pxs[x][y + 1];
  if(x < pxs.length - 1 && y < pxs[0].length - 1) amount += pxs[x + 1][y + 1];  
  return amount;
}

void mouseClicked(){
  int x_index = floor(map(mouseX, 0, width, 0, pxs.length - 1));
  int y_index = floor(map(mouseY, 0, height, 0, pxs[0].length - 1));
  pxs[x_index][y_index] = 1;
}
  
