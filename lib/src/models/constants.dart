enum Proficiencies {
  club,
  dagger,
  greatclub,
  sickle,
  spear,
  staff,
  crossbow,
  bow,
  flail,
  battlaxe,
  greatsword,
  shortsword,
  longsword,
  whip,
  improvised,
}

enum Conditions {
  poisoned("Poisoned"),
  tired("Tired"),
  hypnotized("Hypnotized"),
  asleep("Asleep"),
  overencumbered("Over-Encumbered");

  final String name;
  const Conditions(this.name);
}
