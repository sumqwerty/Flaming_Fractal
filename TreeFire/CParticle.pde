// A simple Particle class

class CParticle {
  PVector position;
  PVector velocity;
  PVector acceleration;
  float lifespan;

  CParticle(PVector l) {
    acceleration = new PVector(-0.1, -0.05);
    velocity = new PVector(random(-1,1), random(-0.5,0));
    position = l.copy();
    //position = new PVector(mouseX,mouseY);
    lifespan = 100.0;
  }

  void run() {
    update();
    display();
  }

  // Method to update position
  void update() {
    velocity.add(acceleration);
    position.add(velocity);
    lifespan -= 1.0;
  }

  // Method to display
  void display() {
    stroke(200,100,0, lifespan);
    fill(200,100,0, lifespan);
    ellipse(position.x, position.y, 8, 8);
  }

  // Is the particle still useful?
  boolean isDead() {
    if (lifespan < 0.0) {
      return true;
    } else {
      return false;
    }
  }
}
