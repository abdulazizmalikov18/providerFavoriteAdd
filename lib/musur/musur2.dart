import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provideraddfavorite/provider/favorite_provider.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Favorite Page',
          style: Theme.of(context).textTheme.headline4,
        ),
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: const[
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(8),
                child: _FavoritePageList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _FavoritePageList extends StatelessWidget {
  const _FavoritePageList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var itemNameStyle = Theme.of(context).textTheme.headline6;
    var favoritepage = context.watch<FavoritePageModel>();
    return ListView.builder(
      itemCount: favoritepage.item.length,
      itemBuilder: (context, index) => ListTile(
        leading: Image.asset(favoritepage.item[index].image),
        trailing: IconButton(
          icon: const Icon(Icons.delete),
          onPressed: () {
            favoritepage.remove(favoritepage.item[index]);
          },
        ),
        title: Text(
          favoritepage.item[index].name,
          style: itemNameStyle,
        ),
        subtitle: Text(
          favoritepage.item[index].subtitle,
          style: const TextStyle(fontSize: 16, color: Colors.grey),
        ),
      ),
    );
  }
}
