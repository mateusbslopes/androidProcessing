void setAlive(int x, int y){
  if(x >= 0 && x < pxs.length 
    && y >= 0 && y < pxs[0].length)
    pxs[x][y] = 1;
}

void drawBlock(int x, int y){
   setAlive(x - 1, y - 1);
   setAlive(x, y - 1);
   setAlive(x - 1, y);
   setAlive(x, y);
}

void drawCanoe(int x, int y){
  setAlive(x + 1, y - 2);
  setAlive(x + 2, y - 2);
  setAlive(x + 2, y - 1);
  setAlive(x + 1, y);
  setAlive(x, y + 1);
  setAlive(x - 1, y + 2);
  setAlive(x - 2, y + 2);
  setAlive(x - 2, y + 1);
}

void drawLine(int x, int y){
  setAlive(x, y - 1);
  setAlive(x, y);
  setAlive(x, y + 1);
}

void drawGlider(int x, int y){
  setAlive(x - 1, y);
  setAlive(x + 1, y - 1);
  setAlive(x + 1, y);
  setAlive(x + 1, y + 1);
  setAlive(x, y + 1);
}

void drawGun(int x, int y){
    // Left box
  setAlive(x - 15, y - 1);
  setAlive(x - 14, y - 1);
  setAlive(x - 15, y);
  setAlive(x - 14, y);
  
  // Left/Center object
  // "C" part
  setAlive(x - 2, y - 3);
  setAlive(x - 3, y - 3);
  setAlive(x - 4, y - 2);
  setAlive(x - 5, y - 1);
  setAlive(x - 5, y);
  setAlive(x - 5, y + 1);
  setAlive(x - 4, y + 2);
  setAlive(x - 3, y + 3);
  setAlive(x - 2, y + 3);
  // Bow and arrow part
  setAlive(x - 1, y);
  setAlive(x, y + 2);
  setAlive(x + 1, y + 1);
  setAlive(x + 1, y);
  setAlive(x + 2, y);
  setAlive(x + 1, y - 1);
  setAlive(x, y - 2);
  
  // Napping Frog
  // Body
  setAlive(x + 5, y - 3);
  setAlive(x + 6, y - 3);
  setAlive(x + 5, y - 2);
  setAlive(x + 6, y - 2);
  setAlive(x + 5, y - 1);
  setAlive(x + 6, y - 1);
  // Legs 
  setAlive(x + 7, y - 4);
  setAlive(x + 7, y);
  setAlive(x + 9, y - 4);
  setAlive(x + 9, y - 5);
  setAlive(x + 9, y);
  setAlive(x + 9, y + 1);
  
  // Right square
  setAlive(x + 19, y - 3);
  setAlive(x + 20, y - 3);
  setAlive(x + 19, y - 2);
  setAlive(x + 20, y - 2);
}
