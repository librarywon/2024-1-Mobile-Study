import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_librarywon/data/models/pokemon_response.dart';
import 'package:flutter_librarywon/data/services/pokemon_service.dart';

class HomeViewModel extends ChangeNotifier {
  final PokemonService _pokemonService;

  HomeViewModel({PokemonService? pokemonService})
      : _pokemonService = pokemonService ?? PokemonService(Dio());

  PokemonResponse? _pokemon;
  bool _isLoading = false;
  String _errorMessage = '';

  PokemonResponse? get pokemon => _pokemon;
  bool get isLoading => _isLoading;
  String get errorMessage => _errorMessage;

  Future<void> fetchPokemon(String name) async {
    _isLoading = true;
    _errorMessage = '';
    notifyListeners();

    try {
      _pokemon = await _pokemonService.fetchPokemon(name);
    } on DioException catch (dioError) {
      if (dioError.response?.statusCode == 404) {
        _errorMessage = "잘못된 포켓몬 이름입니다.";
      } else {
        _errorMessage = dioError.message.toString();
      }
    } catch (e) {
      _errorMessage = e.toString();
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
}
