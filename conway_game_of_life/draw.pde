int resolution;

void initializeDraw(){
  resetScreen();
}

void resetScreen(){
  drawGun(25, 10, true);  
}

void drawVector(){
  int x, y;
  for(y = 0; y < pxs[0].length; y++){
    for(x = 0; x < pxs.length; x++){
      if(pxs[x][y] == 0) fill(0);
      else fill(255);
      rect(x * resolution, y * resolution, resolution, resolution);
    }
  }
}

void drawValues(){
  drawVector();
}
