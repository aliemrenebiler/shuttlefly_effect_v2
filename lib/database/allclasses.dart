class Event {
  String title; // events title
  String desc; // event description
  Event(this.title, this.desc);
}

class Character {
  String name; // character name
  // picture of the character will come from this name
  int skillID; // skill ID

  // - STATES -
  int health;
  int oxygen;
  int psycho;
  int energy;

  Character(this.name, this.skillID, this.health, this.oxygen, this.psycho,
      this.energy);
}
