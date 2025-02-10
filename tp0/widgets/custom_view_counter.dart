import 'package:flutter/cupertino.dart';

import '../viewmodels/counter_view_models.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class CustomCounter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final counterViewModels = context.watch<CounterViewModels>();
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacementNamed(context, '/');
                },
                child: Image.asset('assets/logo.png', height: 40),
              ),
              const SizedBox(width: 10),
              const Text(appTitle),
            ],
          )
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: const Icon(Icons.remove),
                    onPressed: cou,
                  ),
                  Text(
                    '$_counter',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  Icon(
                    Icons.favorite,
                    color: _counter < 0 ? Colors.black : Colors.red,
                    size: 50,
                  ),
                  IconButton(
                    icon: const Icon(Icons.add),
                    onPressed: _incrementCounter,
                  ),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/second');
              },
              child: const Text('Aller à la deuxième page'),
            ),
          ],
        ),
      ),
    );

  }
}
