int resolution;

void initializeDraw(){
  println("Widht:" + width);
  resetScreen();
  cicles = 0;
}

void resetScreen(){
  drawGun(25, 20, true);
  drawGun(25, 50, true);
  drawGun(25, 80, true);
  drawGun(25, 110, true);
  
  int i;
  for(i = 1; i < 7; i++){
    if( i % 2 == 0 ){
      drawPentaDecathlon(i * 20, 200);
      drawCloverLeaf(i * 20, 230);
      drawPentaDecathlon(i * 20, 260);
    } else {
      drawCloverLeaf(i * 20, 200);
      drawPentaDecathlon(i * 20, 230);
      drawCloverLeaf(i * 20, 260);
    }
  }
  
  int x_start = 0;
  int y_start = 50;
  for(i = 0; i < 15; i++){
    for(int j = i; j > 0; j--)
      drawLine(j * 10 + x_start, i * 10 + y_start);
  }
    
  
  for(i = 0; i < 15  ; i ++){
    drawLine(i * 10, 285);
    drawLine(i * 10 - 5, 295);
  }
    
}

void drawVector(){
  int x, y;
  for(y = 0; y < pxs[0].length; y++){
    for(x = 0; x < pxs.length; x++){
      if(pxs[x][y] == 0) fill(0);
      else fill(255);
      rect(x * resolution, y * resolution, resolution,resolution);
    }
  }
}

int cicles;
void drawValues(){
  drawVector();
  if(cicle % 20 == 0)drawShips();
  cicle++;
}

void drawShips(){
  drawHeavySpaceship(3, 215);
  drawHeavySpaceship(3, 245);
  drawHeavySpaceship(3, 275);
}
