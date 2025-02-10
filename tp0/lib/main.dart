import 'package:flutter/material.dart';

const Color primaryColor = Color(0xFF2196F3);
const String appTitle = 'Compteur App';
const String secondPageTitle = 'Seconde page';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: primaryColor),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/second': (context) => const SecondPage(),
      },
    );
  }
}

/*
 * Page d'accueil et son état mutable
 */
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}


/*
 * Etat mutable de la page d'accueil
 */
class _HomePageState extends State<HomePage> {
  int _counter = 0;

  //Ici, les méthodes et fonctions qui font varier l'état de votre page d'accueil

  // Méthode d'incrémentation du compteur
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  // Méthode de décrémentation du compteur
  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  // Fonction build qui construit l'UI associé à l'état de votre page
  @override
  Widget build(BuildContext context) {
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
                    onPressed: _decrementCounter,
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

/*
 * La seconde page de votre app
 */
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