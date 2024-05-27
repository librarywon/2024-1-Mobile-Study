import 'package:json_annotation/json_annotation.dart';

part 'pokemon_response.g.dart';

@JsonSerializable()
class PokemonResponse {
  final List<Ability> abilities;
  final int base_experience;
  final int height;
  final List<Move> moves;
  final String name;
  final Sprites sprites;
  final List<Stat> stats;
  final List<Type> types;
  final int weight;

  PokemonResponse({
    required this.abilities,
    required this.base_experience,
    required this.height,
    required this.moves,
    required this.name,
    required this.sprites,
    required this.stats,
    required this.types,
    required this.weight,
  });

  factory PokemonResponse.fromJson(Map<String, dynamic> json) =>
      _$PokemonResponseFromJson(json);

  Map<String, dynamic> toJson() => _$PokemonResponseToJson(this);
}

@JsonSerializable()
class Ability {
  final AbilityInfo ability;
  final bool is_hidden;
  final int slot;

  Ability({required this.ability, required this.is_hidden, required this.slot});

  factory Ability.fromJson(Map<String, dynamic> json) =>
      _$AbilityFromJson(json);

  Map<String, dynamic> toJson() => _$AbilityToJson(this);
}

@JsonSerializable()
class AbilityInfo {
  final String name;
  final String url;

  AbilityInfo({required this.name, required this.url});

  factory AbilityInfo.fromJson(Map<String, dynamic> json) =>
      _$AbilityInfoFromJson(json);

  Map<String, dynamic> toJson() => _$AbilityInfoToJson(this);
}

@JsonSerializable()
class Move {
  final MoveInfo move;

  Move({required this.move});

  factory Move.fromJson(Map<String, dynamic> json) => _$MoveFromJson(json);

  Map<String, dynamic> toJson() => _$MoveToJson(this);
}

@JsonSerializable()
class MoveInfo {
  final String name;
  final String url;

  MoveInfo({required this.name, required this.url});

  factory MoveInfo.fromJson(Map<String, dynamic> json) =>
      _$MoveInfoFromJson(json);

  Map<String, dynamic> toJson() => _$MoveInfoToJson(this);
}

@JsonSerializable()
class Sprites {
  @JsonKey(name: 'front_default')
  final String frontDefault;

  Sprites({required this.frontDefault});

  factory Sprites.fromJson(Map<String, dynamic> json) =>
      _$SpritesFromJson(json);

  Map<String, dynamic> toJson() => _$SpritesToJson(this);
}

@JsonSerializable()
class Stat {
  final int base_stat;
  final int effort;
  final StatInfo stat;

  Stat({required this.base_stat, required this.effort, required this.stat});

  factory Stat.fromJson(Map<String, dynamic> json) => _$StatFromJson(json);

  Map<String, dynamic> toJson() => _$StatToJson(this);
}

@JsonSerializable()
class StatInfo {
  final String name;
  final String url;

  StatInfo({required this.name, required this.url});

  factory StatInfo.fromJson(Map<String, dynamic> json) =>
      _$StatInfoFromJson(json);

  Map<String, dynamic> toJson() => _$StatInfoToJson(this);
}

@JsonSerializable()
class Type {
  final TypeInfo type;

  Type({required this.type});

  factory Type.fromJson(Map<String, dynamic> json) => _$TypeFromJson(json);

  Map<String, dynamic> toJson() => _$TypeToJson(this);
}

@JsonSerializable()
class TypeInfo {
  final String name;
  final String url;

  TypeInfo({required this.name, required this.url});

  factory TypeInfo.fromJson(Map<String, dynamic> json) =>
      _$TypeInfoFromJson(json);

  Map<String, dynamic> toJson() => _$TypeInfoToJson(this);
}
