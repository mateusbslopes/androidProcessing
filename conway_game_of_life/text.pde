int alives;
PFont f;
int cicle;

void initializeFont(){
  f = createFont("Abyssinica SIL",16,true);
}

int getAlives(){
  alives = 0;
  for(int x = 0; x < pxs.length; x++)
    for(int y = 0; y < pxs[0].length; y++)
       alives += pxs[x][y];
   return alives;
}

void writeInfo(){
  textFont(f,20);
  fill(255);
  text("Alives: " + getAlives(), width/8, 40);
}  
