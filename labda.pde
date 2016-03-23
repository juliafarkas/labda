class Labda {
  float x;
  float y;
  float sugar;
  color szin;

  void rajzold_ki () {
    noStroke ();
    fill(szin);
    ellipse (x, y, 2*sugar, 2*sugar);
  }

  void fel() {
    y=y-3;
  }

  void le () {
    y=y+3;
  }
  void jobbra () {

    x=x+3;
  }
  void nojjel (){
 sugar = sugar+2;
  
  }
  boolean bent_van () {
    if (x>0 && x<420 && y>0 && y<420) {
      return true;
    } else {
      return false;
    }
  }
}

Labda sarga_labda = new Labda ();
Labda zold_labda= new Labda ();
Labda pink_labda= new Labda ();

void setup () {
  size (500, 500);

  sarga_labda.x=100;
  sarga_labda.y=100;
  sarga_labda.sugar=80;
  sarga_labda.szin=color (#2BE035);

  zold_labda.x=350;
  zold_labda.y=350;
  zold_labda.sugar=80;
  zold_labda.szin= color (#F3FA38);

  pink_labda.x=200;
  pink_labda.y=200;
  pink_labda.sugar=80;
  pink_labda.szin= color (#ED5DCE);
}

void draw () {
  background (#5DEDDB);
  sarga_labda.rajzold_ki();
  zold_labda.rajzold_ki();
  pink_labda.rajzold_ki();
  pink_labda.nojjel();

  if (pink_labda.bent_van()) {
    pink_labda.fel();
  }

  if (sarga_labda.bent_van()) {
    sarga_labda.le();
  }

  if (zold_labda.bent_van()) {
    zold_labda.jobbra ();
  }
}