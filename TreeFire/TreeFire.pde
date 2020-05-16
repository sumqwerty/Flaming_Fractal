ArrayList<Tree> trees;


void setup() {
  size(640,700);
  background(255);
  trees = new ArrayList<Tree>(); 
}

void mousePressed()
{
  if(mouseButton == LEFT)
  {
    Tree t;
    t = new Tree(mouseX,mouseY);
    trees.add(t);
  }
  else if(mouseButton == RIGHT)
  {
    trees.remove(trees.size()-1);
  }  
  
  
}
void draw() {
  background(0);
  for(Tree t: trees)
  {
    t.disp();
  }
}
