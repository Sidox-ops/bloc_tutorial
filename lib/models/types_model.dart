class PokemonType {
  final int id;
  final String name;
  final String image;
  final String englishName;

  PokemonType({
    required this.id,
    required this.name,
    required this.image,
    required this.englishName,
  });

  // Factory constructor pour créer une instance à partir d'un Map (JSON)
  factory PokemonType.fromJson(Map<String, dynamic> json) {
    return PokemonType(
      id: json['id'],
      name: json['name'],
      image: json['image'],
      englishName: json['englishName'],
    );
  }
}
