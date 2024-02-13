class Pokemon {
  final int id;
  final int pokedexId;
  final String name;
  final String image;
  final String sprite;
  final Map<String, dynamic> stats;

  Pokemon({
    required this.id,
    required this.pokedexId,
    required this.name,
    required this.image,
    required this.sprite,
    required this.stats,
  });
}
