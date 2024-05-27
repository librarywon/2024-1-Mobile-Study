import 'package:dio/dio.dart';
import 'package:flutter_librarywon/data/models/pokemon_response.dart';
import 'package:retrofit/retrofit.dart';

part 'pokemon_service.g.dart';

@RestApi(baseUrl: "https://pokeapi.co/api/v2/")
abstract class PokemonService {
  factory PokemonService(Dio dio, {String baseUrl}) = _PokemonService;

  @GET("pokemon/{name}")
  Future<PokemonResponse> fetchPokemon(@Path("name") String name);
}

final pokemonService = PokemonService(Dio());
