// Rules:
// 1. Any live cell with fewer than two live neighbours dies, as if by underpopulation.
// 2. Any live cell with two or three live neighbours lives on to the next generation.
// 3. Any live cell with more than three live neighbours dies, as if by overpopulation.
// 4. Any dead cell with exactly three live neighbours becomes a live cell, as if by reproduction.

void setup() {
  fullScreen();
  frameRate(20);
  background(0);
  resolution = 5;
  pxs = new int[width/resolution][height/resolution];
  initializeFont();
  initializeDraw();
}

void draw(){
  drawValues();
  setValues();
  writeInfo();
}

void reset(){
  resetPxs();
  resetScreen();
}
 //<>//
void mousePressed(){
  int x = round(map(mouseX, 0, width, 0, pxs.length - 1));
  int y = round(map(mouseY, 0, height, 0, pxs[0].length - 1));
  
  if(mouseX < width / 8 && mouseY < height / 8)
    reset();
  else 
    drawGlider(x,y);
}
