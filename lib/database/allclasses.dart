class Event {
  int ID; // event database ID
  String title; // events title
  String desc; // event description
  Event(this.ID, this.title, this.desc);
}

class Character {
  int charID; // character ID
  String charName; // character name
  String imgURL; // character's image URL

  int skillID; // skill ID
  String skillName; // skill name
  String skillDesc; // skill description

  // STATES
  int health;
  int oxygen;
  int psycho;
  int energy;

  Character(
      this.charID,
      this.charName,
      this.imgURL,
      this.skillID,
      this.skillName,
      this.skillDesc,
      this.health,
      this.oxygen,
      this.psycho,
      this.energy);
}
