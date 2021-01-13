class Player extends GameObject{
  Player(){
    super( loadImage("ship.png") );
    
    position.x = width / 2;
    position.y = height - 100;
  }
  
  void update(){
    
    float disToMouseX = mouseX - position.x;
    float disToMouseY = mouseY - position.y;
    
    float radians = atan2(disToMouseY, disToMouseX);
    
    rotation = radians * 180 / PI + 90;
  }
  
}
