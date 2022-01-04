class Event {
  int ID; // event database ID
  String title; // events title
  String desc; // event description
  Event(this.ID, this.title, this.desc);
}

class Character {
  String name; // character name
  // picture of the character will come from this name
  int skillID; // skill ID
  // String skillName; // skill name
  // String skillDesc; // skill description

  // - STATES -
  int health;
  int oxygen;
  int psycho;
  int energy;

  Character(this.name, this.skillID, this.health, this.oxygen, this.psycho,
      this.energy);
}
