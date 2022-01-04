class Event {
  String title; // events title
  String desc; // event description
  Event(this.title, this.desc);
}

class States {
  int health;
  int oxygen;
  int psyco;
  int energy;
  States(this.health, this.oxygen, this.psyco, this.energy);
}

class Character {
  String name; // events title
  States state;
  Character(this.name, this.state);
}
