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

  factory Pokemon.fromJson(Map<String, dynamic> json) {
    return Pokemon(
      id: json['id'],
      pokedexId: json['pokedexId'],
      name: json['name'],
      image: json['image'],
      sprite: json['sprite'],
      stats: json['stats'],
    );
  }
}
