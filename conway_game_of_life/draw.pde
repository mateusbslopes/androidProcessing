int resolution;

void initializeDraw(){
  println("Widht:" + width);
  resetScreen();
}

void resetScreen(){
  drawGun(40, 20, true);
  
  int i;
  for(i = 1; i < 7; i++){
    if( i % 2 == 0 ){
      drawPentaDecathlon(i * 20, 200);
      drawCloverLeaf(i * 20, 230);
    } else {
      drawCloverLeaf(i * 20, 200);
      drawPentaDecathlon(i * 20, 230);
    }
    
  } 
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
