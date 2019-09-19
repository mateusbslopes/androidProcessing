void drawLine(int x, int y){
  setAlive(x, y - 1);
  setAlive(x, y);
  setAlive(x, y + 1);
}

void drawCloverLeaf(int x, int y){
  // UpperPart
  setAlive(x - 1, y - 5);
  setAlive(x + 1, y - 5);
  
  setAlive(x - 3, y - 4);
  setAlive(x - 2, y - 4);
  setAlive(x - 1, y - 4);
  setAlive(x + 1, y - 4);
  setAlive(x + 2, y - 4);
  setAlive(x + 3, y - 4);
  
  setAlive(x - 4, y - 3);
  setAlive(x, y - 3);
  setAlive(x + 4, y - 3);
  
  setAlive(x - 4, y - 2);
  setAlive(x - 2, y - 2);
  setAlive(x + 2, y - 2);
  setAlive(x + 4, y - 2);
  
  setAlive(x - 3, y - 1);
  setAlive(x - 2, y - 1);
  setAlive(x, y - 1);
  setAlive(x + 2, y - 1);
  setAlive(x + 3, y - 1);
  
  // Botton part
  setAlive(x - 1, y + 5);
  setAlive(x + 1, y + 5);
  
  setAlive(x - 3, y + 4);
  setAlive(x - 2, y + 4);
  setAlive(x - 1, y + 4);
  setAlive(x + 1, y + 4);
  setAlive(x + 2, y + 4);
  setAlive(x + 3, y + 4);
  
  setAlive(x - 4, y + 3);
  setAlive(x, y + 3);
  setAlive(x + 4, y + 3);
  
  setAlive(x - 4, y + 2);
  setAlive(x - 2, y + 2);
  setAlive(x + 2, y + 2);
  setAlive(x + 4, y + 2);
  
  setAlive(x - 3, y + 1);
  setAlive(x - 2, y + 1);
  setAlive(x, y + 1);
  setAlive(x + 2, y + 1);
  setAlive(x + 3, y + 1);
}

void drawPentaDecathlon(int x, int y){
  setAlive(x, y - 4);
  setAlive(x, y - 3);
  setAlive(x - 1, y - 2);
  setAlive(x + 1, y - 2);
  setAlive(x, y - 1);
  setAlive(x, y);
  setAlive(x, y + 1);
  setAlive(x, y + 2);
  setAlive(x - 1, y + 3);
  setAlive(x + 1, y + 3);
  setAlive(x, y + 4);
  setAlive(x, y + 5);
}
