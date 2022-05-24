import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provideraddfavorite/models/favoriteListModel.dart';
import 'package:provideraddfavorite/musur/musur.dart';
import 'package:provideraddfavorite/musur/musur4.dart';
import 'package:provideraddfavorite/provider/favorite_provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        Provider(create: (context) => FavoriteListModel()),
        ChangeNotifierProxyProvider<FavoriteListModel, FavoritePageModel>(
          create: (context) => FavoritePageModel(),
          update: (context, favoritelist, favoritepage) {
            if (favoritepage == null) {
              throw ArgumentError.notNull('favoritepage');
            }
            favoritepage.favoritelist = favoritelist;
            return favoritepage;
          },
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        focusColor: Colors.amber,
      ),
      // home: const MyHomePage(),
      initialRoute: '/',
      routes: {
        '/': (context) => const Hozircha(),
        '/favoritepage': (context) => const FavoriteAllPAge()
      },
    );
  }
}