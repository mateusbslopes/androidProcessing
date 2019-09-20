float zRotation = 0;
float zInitialRotationSpeed = 0.003;
float zRotationSpeed = zInitialRotationSpeed;

float yRotation = 0;
float yInitialRotationSpeed = 0.001;
float yRotationSpeed = yInitialRotationSpeed;

float boxMaxSize = 0;
float boxDefaultMaxSize = 0;

boolean reducingSpeed = false;

void setup() {
  fullScreen(P3D);
  boxDefaultMaxSize = height/2; 
  boxMaxSize = boxDefaultMaxSize;
}

void draw() {
  background(0);
  noFill();
  strokeWeight(5);
  
  translate(width/2, height/2);
  rotateZ(zRotation);
  rotateY(yRotation);
  
  stroke(255);
  box(250);
  
  if(reducingSpeed){
    resetSpeed();
  }
  zRotation += zRotationSpeed;
  yRotation += yRotationSpeed;
    
}

void resetSpeed(){
  if(zRotationSpeed > zInitialRotationSpeed)
    zRotationSpeed -= zInitialRotationSpeed;
  else 
    zRotationSpeed += zInitialRotationSpeed;
    
  if(yRotationSpeed > yInitialRotationSpeed)
    yRotationSpeed -= yInitialRotationSpeed;
  else 
    yRotationSpeed += yInitialRotationSpeed;
}

void increaseSpeed(){
  zRotationSpeed += .01;
  yRotationSpeed += 0.005;
}

void reduceSpeed(){
  zRotationSpeed -= .01;
  yRotationSpeed -= 0.005;
}

void mousePressed() {
  if (mouseY > height/2){ 
    resetSpeed();
    reducingSpeed = true;
  }
  else {
    reducingSpeed = false;
    if(mouseX > width/2)
      increaseSpeed();
    else 
      reduceSpeed();
  }
}
