class Particle {
  
  PVector position;
  PVector velocity;
  PVector acceleration;
  color particleColor; // New Variable for particle color
  
  Particle(float x, float y){
    position = new PVector(x, y);
    velocity = new PVector(random(-2, 2), random(-2, 2));
    acceleration = new PVector(0, 0.5);
    particleColor = color(random(255), random(255), random(255)); //Random color
  }
  
  void update(){
    velocity.add(acceleration);
    position.add(velocity);
  }
  
  void display(){
    fill(particleColor); //Set the fill color to the particle's color
    ellipse(position.x, position.y, 10, 10);
  }
}
