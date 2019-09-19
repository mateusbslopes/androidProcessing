void drawGlider(int x, int y){
  setAlive(x - 1, y);
  setAlive(x + 1, y - 1);
  setAlive(x + 1, y);
  setAlive(x + 1, y + 1);
  setAlive(x, y + 1);
}

void drawHeavySpaceship(int x, int y){
  setAlive(x - 1, y - 2);
  setAlive(x, y - 2);
  setAlive(x + 2, y - 1);
  setAlive(x + 3, y);
  setAlive(x + 3, y + 1);
  setAlive(x + 3, y + 2);
  setAlive(x + 2, y + 2);
  setAlive(x + 1, y + 2);
  setAlive(x, y + 2);
  setAlive(x - 1, y + 2);
  setAlive(x - 2, y + 2);
  setAlive(x - 3, y + 1);
  setAlive(x - 3, y - 1);
}
