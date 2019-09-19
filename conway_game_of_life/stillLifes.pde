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
