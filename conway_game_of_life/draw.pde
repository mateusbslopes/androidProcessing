void drawCanoe(int x, int y){
  setLived(x + 1, y - 2);
  setLived(x + 2, y - 2);
  setLived(x + 2, y - 1);
  setLived(x + 1, y);
  setLived(x, y + 1);
  setLived(x - 1, y + 2);
  setLived(x - 2, y + 2);
  setLived(x - 2, y + 1);
}

void drawGlider(int x, int y){
  setLived(x - 1, y);
  setLived(x + 1, y - 1);
  setLived(x + 1, y);
  setLived(x + 1, y + 1);
  setLived(x, y + 1);
}

// See issue on gun structure.
void drawGun(int x, int y){
    // Left box
  setLived(x - 15, y - 1);
  setLived(x - 14, y - 1);
  setLived(x - 15, y);
  setLived(x - 14, y);
  
  // Left/Center object
  // "C" part
  setLived(x - 2, y - 3);
  setLived(x - 3, y - 3);
  setLived(x - 4, y - 2);
  setLived(x - 5, y - 1);
  setLived(x - 5, y);
  setLived(x - 5, y + 1);
  setLived(x - 4, y + 2);
  setLived(x - 3, y + 3);
  setLived(x - 2, y + 3);
  // Bow and arrow part
  setLived(x - 1, y);
  setLived(x, y + 2);
  setLived(x + 1, y + 1);
  setLived(x + 1, y);
  setLived(x + 2, y);
  setLived(x + 1, y - 1);
  setLived(x, y - 2);
  
  // Napping Frog
  // Body
  setLived(x + 5, y - 3);
  setLived(x + 6, y - 3);
  setLived(x + 5, y - 2);
  setLived(x + 6, y - 2);
  setLived(x + 5, y - 1);
  setLived(x + 6, y - 1);
  // Legs 
  setLived(x + 7, y - 4);
  setLived(x + 7, y);
  setLived(x + 9, y - 4);
  setLived(x + 9, y - 5);
  setLived(x + 9, y);
  setLived(x + 9, y + 1);
  
  // Right square
  setLived(x + 19, y - 3);
  setLived(x + 20, y - 3);
  setLived(x + 19, y - 2);
  setLived(x + 20, y - 2);
}
