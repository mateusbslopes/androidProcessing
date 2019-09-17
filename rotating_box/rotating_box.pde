float zRotation = 0;
float yRotation = 0;
float boxMaxSize = 0;
float boxDefaultMaxSize = 0;

void setup() {
  size(1000, 500, P3D);
  boxDefaultMaxSize = height/2; 
  boxMaxSize = boxDefaultMaxSize;
}

void draw() {
  background(255);
  noFill();
  translate(width/2, height/2);
  
  rotateZ(zRotation);
  rotateY(yRotation);
  
  box(getBoxSize());
  
  zRotation += getZRotationSpeed();
  yRotation += getYRotationSpeed();
}

float getYRotationSpeed(){
  float maxDist = height;
  float d = abs(height/2 - mouseY);
  float rotation = map(d, 0, maxDist, 0, 1);
  return rotation;
}

float getZRotationSpeed(){
  float maxDist = width;
  float d = abs(width/2 - mouseX);
  float rotation = map(d, 0, maxDist, 0, 1);
  return rotation;
}

float getBoxSize(){
  float maxDist = dist(0, 0, width/2, height/2);
  float d = dist(width/2, height/2, mouseX, mouseY);
  float size = map(d, 0, maxDist, 0, boxMaxSize);
  return boxMaxSize - size;
}

int pressedKey = 0;

void keyPressed() {
  if (key != CODED) return;
  
  switch(keyCode){
    case UP: boxMaxSize += 10; break;
    case DOWN: boxMaxSize -= 10; break;
    case LEFT: boxMaxSize -= 1; break;
    case RIGHT: boxMaxSize -= 1; break;
    case CONTROL: boxMaxSize = boxDefaultMaxSize;
  }
}
