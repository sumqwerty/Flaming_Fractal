// A class to describe a group of Particles
// An ArrayList is used to manage the list of Particles 

class CParticleSystem {
  ArrayList<CParticle> particles;
  PVector origin;

  CParticleSystem(PVector position) {
    origin = position.copy();
    particles = new ArrayList<CParticle>();
    for (int i = 0; i < 0; i++) {
      particles.add(new CParticle(origin));         // Add "num" amount of particles to the arraylist
    }
    
  }

  void addParticle() {
    particles.add(new CParticle(origin));
  }

  void run() {
    for (int i = particles.size()-1; i >= 0; i--) {
      CParticle p = particles.get(i);
      p.run();
      if (p.isDead()) {
        particles.remove(i);
      }
    }
  }
}
