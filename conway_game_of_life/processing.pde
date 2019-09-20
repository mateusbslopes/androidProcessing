int[][] pxs;

void resetPxs(){
  pxs = new int[width/resolution][height/resolution];
}

void myCopy(int[][] src, int[][]dest){
  for(int x = 0; x < src.length; x++)
    for(int y = 0; y < src[0].length; y++)
      dest[x][y] = src[x][y];
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

void setValue(int[][] oldVector, int[][]newVector, int x, int y){
  int ln = countLivingNeighbours(oldVector, x, y);
  if(oldVector[x][y] == 1 && (ln < 2 || ln > 3))
    newVector[x][y] = 0;
  if(oldVector[x][y] == 0 && ln == 3)
    newVector[x][y] = 1;
}

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
