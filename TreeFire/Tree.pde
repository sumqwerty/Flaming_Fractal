class Tree
{
  float x;
  float y;
  ArrayList<Branch> tree;
  ArrayList<Leaf> leaves;
  
  Tree(float x_, float y_)
  {
    x = x_;
    y = y_;
    tree = new ArrayList<Branch>();
    leaves = new ArrayList<Leaf>();
    // A branch has a starting position, a starting "velocity", and a starting "timer" 
    Branch b = new Branch(new PVector(x,y),new PVector(0,-1),150);
    // Add to arraylist
    tree.add(b);
  }
  
  
  void disp()
  {
    // Let's stop when the arraylist gets too big
    // For every branch in the arraylist
    for (int i = tree.size()-1; i >= 0; i--) 
    {
      // Get the branch, update and draw it
      Branch b = tree.get(i);
      b.update();
      b.render();
      // If it's ready to split
      if (b.timeToBranch()) 
      {
        if (tree.size() < 1024) 
        {
          //tree.add(b.branch(30));   // Add one going right
          //tree.add(b.branch(-30));  // Add one going left
          //tree.remove(i);           // Delete it
          
          tree.add(b.branch(random(0,90)));
          tree.add(b.branch(random(-90,0)));
          
          /*int n = int(random(2,5));
          for(int j=0; j<n; ++j)
            tree.add(b.branch(random(-90,90)));*/
        } 
        else 
        {
          leaves.add(new Leaf(b.end));
        }
      }
    } 
    for (Leaf leaf : leaves) 
    {
       leaf.display(); 
    }
  } 
}
