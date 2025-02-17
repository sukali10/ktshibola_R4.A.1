import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../viewmodels/counter_view_models.dart';

import 'package:provider/provider.dart';
import '/widgets/custom_view_counter.dart';


class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(secondPageTitle),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: const Center(
        child: Text(
          'Bienvenue sur la seconde page !',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}