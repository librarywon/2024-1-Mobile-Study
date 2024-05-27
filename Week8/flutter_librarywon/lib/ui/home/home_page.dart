import 'package:flutter/material.dart';
import 'package:flutter_librarywon/data/models/pokemon_response.dart';
import 'package:provider/provider.dart';

import 'home_view_model.dart';

class HomePage extends StatelessWidget {
  final String title;

  const HomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => HomeViewModel(),
      child: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Image.asset(
                'assets/images/pokemon_logo.png',
                width: 300,
                height: 100,
              ), // 로컬 이미지
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: SearchView(),
              ),
              SizedBox(height: 20),
              Consumer<HomeViewModel>(
                builder: (context, viewModel, child) {
                  if (viewModel.isLoading) {
                    return CircularProgressIndicator();
                  } else if (viewModel.errorMessage.isNotEmpty) {
                    return Text(viewModel.errorMessage);
                  } else if (viewModel.pokemon != null) {
                    return PokemonInfo(pokemon: viewModel.pokemon!);
                  } else {
                    return Text('검색할 포켓몬의 이름을 입력하세요.');
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SearchView extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            controller: _controller,
            decoration: InputDecoration(
              hintText: '포켓몬 이름을 입력하세요',
            ),
          ),
        ),
        IconButton(
          icon: Icon(Icons.search),
          onPressed: () {
            if (_controller.text.isNotEmpty) {
              Provider.of<HomeViewModel>(context, listen: false)
                  .fetchPokemon(_controller.text.toLowerCase());
            }
          },
        ),
      ],
    );
  }
}

class PokemonInfo extends StatelessWidget {
  final PokemonResponse pokemon;

  PokemonInfo({required this.pokemon});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(
          pokemon.sprites.frontDefault,
          width: 200,
          height: 200,
          fit: BoxFit.cover,
        ),
        Container(
            width: double.infinity,
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              children: [
                Text('이름: ${pokemon.name}'),
                Text('키: ${pokemon.height} dm'),
                Text('몸무게: ${pokemon.weight} hg'),
                Text(
                    '능력: ${pokemon.abilities.map((e) => e.ability.name).join(', ')}'),
                Text('타입: ${pokemon.types.map((e) => e.type.name).join(', ')}'),
              ],
            )),
      ],
    );
  }
}
