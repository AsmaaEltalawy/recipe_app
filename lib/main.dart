import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe_app/cupits/recipecubit.dart';
import 'package:recipe_app/screens/home.dart';

import 'data/services/recipe_service.dart';

void main() {
  RecipeService().getRecipes();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (context) => RecipeCubit(),
        child: Home(),
      ),
    );
  }
}
