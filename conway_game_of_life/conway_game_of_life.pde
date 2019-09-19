// Rules:
// 1. Any live cell with fewer than two live neighbours dies, as if by underpopulation.
// 2. Any live cell with two or three live neighbours lives on to the next generation.
// 3. Any live cell with more than three live neighbours dies, as if by overpopulation.
// 4. Any dead cell with exactly three live neighbours becomes a live cell, as if by reproduction.

int resolution = 10;

// For better performance on count living neighbours.
int[][] pxs;

void setup() {
  size(500, 500);
  frameRate(5);
  background(0);
  
  pxs = new int[width/resolution][height/resolution];
  resetScreen();
}

void draw(){
  drawValues();
  setValues();
}

 
void resetScreen(){
  resetPxs();
  //drawGun(40, 20, true);
  
  drawCloverLeaf(5, 10);
  
  
  if(true) return;
  int i;
  for(i = 1; i < 7; i++){
    drawPentaDecathlon(i * 20, 200);
    drawPentaDecathlon(i * 20, 230);
  } 
  
  drawHeavySpaceship(10, 175);
  drawHeavySpaceship(10, 215);
  drawHeavySpaceship(10, 255);
}

void resetPxs(){
  for(int y = 0; y < pxs[0].length; y++)
      for(int x = 0; x < pxs.length; x++)
        pxs[x][y] = 0;
}

  

void drawValues(){
  int x, y;
  for(y = 0; y < pxs[0].length; y++){
    for(x = 0; x < pxs.length; x++){
      if(pxs[x][y] == 0) fill(0);
      else fill(255);
      rect(x * resolution, y * resolution, resolution,resolution);
    }
  }
}

void setValues(){
  int x, y;
  int[][] oldVector = new int[pxs.length][pxs[0].length];
  int[][] newVector = new int[pxs.length][pxs[0].length];
  
  myCopy(pxs, oldVector);
  myCopy(pxs, newVector);
  
  // Define new array
  for(y = 0; y < newVector[0].length; y++){
    for(x = 0; x < newVector.length; x++){
      setValue(oldVector, newVector, x,y);
    }
  }
  arrayCopy(newVector, pxs);
}

void myCopy(int[][] src, int[][]dest){
  for(int x = 0; x < src.length; x++)
    for(int y = 0; y < src[0].length; y++)
      dest[x][y] = src[x][y];
}

void setValue(int[][] oldVector, int[][]newVector, int x, int y){
  // Living neighbours
  int ln = countLivingNeighbours(oldVector, x, y);
  if(oldVector[x][y] == 1 && (ln < 2 || ln > 3)) //<>// //<>// //<>// //<>// //<>// //<>//
    newVector[x][y] = 0;
  if(oldVector[x][y] == 0 && ln == 3)
    newVector[x][y] = 1;
}

// Problabli wrong
int countLivingNeighbours(int[][] oldVector, int x, int y){
  int amount = 0;
  if(y > 0){
    amount += oldVector[x][y - 1];
    if(x > 0) amount += oldVector[x - 1][y - 1];
    if(x < oldVector.length - 1) amount += oldVector[x + 1][y -1];
  } 

  if(x > 0) amount += oldVector[x - 1][y];
  if(x < oldVector.length - 1) amount += oldVector[x + 1][y];
  
  if(y < oldVector[0].length - 1){  
    amount += oldVector[x][y + 1];
    if(x > 0) amount += oldVector[x - 1][y + 1];
    if(x < oldVector.length - 1) amount += oldVector[x + 1][y + 1];
  }
    
  return amount;
}

void mousePressed(){
  int x = round(map(mouseX, 0, width, 0, pxs.length - 1));
  int y = round(map(mouseY, 0, height, 0, pxs[0].length - 1));
  if(mouseX < width / 8 && mouseY < height / 8)
    resetScreen();
  else 
    drawGlider(x,y);
}
