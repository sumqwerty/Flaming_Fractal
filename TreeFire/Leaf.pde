class Leaf 
{
  PVector pos;
  ParticleSystem ps;
  CParticleSystem cps;
  
  Leaf(PVector l) 
  {
    PImage img = loadImage("textureF.png");
    //img.resize(30,30);
    ps = new ParticleSystem(0, l.copy(), img);
    cps = new CParticleSystem(l.copy());
    pos = l.get();
  }

  void display()
  {
    
    noStroke();
    fill(0,255,0,100);
    ellipse(pos.x,pos.y,15,8);
    
    float dx = map(mouseX, 0, width, -0.2, 0.2);
    //float dy = map(mouseY, 0, height, -0.2, 0.2);
    PVector wind = new PVector(dx, 0);
    ps.applyForce(wind);
    ps.run();
    for (int i = 0; i < 1; i++) 
    {
      ps.addParticle();
    }
    
    /*for (int i = 0; i < 1; i++) 
    {
      cps.addParticle();
    }
    cps.run();*/
  }
}
