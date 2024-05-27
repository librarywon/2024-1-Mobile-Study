// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PokemonResponse _$PokemonResponseFromJson(Map<String, dynamic> json) =>
    PokemonResponse(
      abilities: (json['abilities'] as List<dynamic>)
          .map((e) => Ability.fromJson(e as Map<String, dynamic>))
          .toList(),
      base_experience: (json['base_experience'] as num).toInt(),
      height: (json['height'] as num).toInt(),
      moves: (json['moves'] as List<dynamic>)
          .map((e) => Move.fromJson(e as Map<String, dynamic>))
          .toList(),
      name: json['name'] as String,
      sprites: Sprites.fromJson(json['sprites'] as Map<String, dynamic>),
      stats: (json['stats'] as List<dynamic>)
          .map((e) => Stat.fromJson(e as Map<String, dynamic>))
          .toList(),
      types: (json['types'] as List<dynamic>)
          .map((e) => Type.fromJson(e as Map<String, dynamic>))
          .toList(),
      weight: (json['weight'] as num).toInt(),
    );

Map<String, dynamic> _$PokemonResponseToJson(PokemonResponse instance) =>
    <String, dynamic>{
      'abilities': instance.abilities,
      'base_experience': instance.base_experience,
      'height': instance.height,
      'moves': instance.moves,
      'name': instance.name,
      'sprites': instance.sprites,
      'stats': instance.stats,
      'types': instance.types,
      'weight': instance.weight,
    };

Ability _$AbilityFromJson(Map<String, dynamic> json) => Ability(
      ability: AbilityInfo.fromJson(json['ability'] as Map<String, dynamic>),
      is_hidden: json['is_hidden'] as bool,
      slot: (json['slot'] as num).toInt(),
    );

Map<String, dynamic> _$AbilityToJson(Ability instance) => <String, dynamic>{
      'ability': instance.ability,
      'is_hidden': instance.is_hidden,
      'slot': instance.slot,
    };

AbilityInfo _$AbilityInfoFromJson(Map<String, dynamic> json) => AbilityInfo(
      name: json['name'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$AbilityInfoToJson(AbilityInfo instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };

Move _$MoveFromJson(Map<String, dynamic> json) => Move(
      move: MoveInfo.fromJson(json['move'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MoveToJson(Move instance) => <String, dynamic>{
      'move': instance.move,
    };

MoveInfo _$MoveInfoFromJson(Map<String, dynamic> json) => MoveInfo(
      name: json['name'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$MoveInfoToJson(MoveInfo instance) => <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };

Sprites _$SpritesFromJson(Map<String, dynamic> json) => Sprites(
      frontDefault: json['front_default'] as String,
    );

Map<String, dynamic> _$SpritesToJson(Sprites instance) => <String, dynamic>{
      'front_default': instance.frontDefault,
    };

Stat _$StatFromJson(Map<String, dynamic> json) => Stat(
      base_stat: (json['base_stat'] as num).toInt(),
      effort: (json['effort'] as num).toInt(),
      stat: StatInfo.fromJson(json['stat'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StatToJson(Stat instance) => <String, dynamic>{
      'base_stat': instance.base_stat,
      'effort': instance.effort,
      'stat': instance.stat,
    };

StatInfo _$StatInfoFromJson(Map<String, dynamic> json) => StatInfo(
      name: json['name'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$StatInfoToJson(StatInfo instance) => <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };

Type _$TypeFromJson(Map<String, dynamic> json) => Type(
      type: TypeInfo.fromJson(json['type'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TypeToJson(Type instance) => <String, dynamic>{
      'type': instance.type,
    };

TypeInfo _$TypeInfoFromJson(Map<String, dynamic> json) => TypeInfo(
      name: json['name'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$TypeInfoToJson(TypeInfo instance) => <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };
