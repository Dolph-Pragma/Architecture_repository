import 'package:flutter/material.dart';
import 'package:repo_counter_example/controllers/home_controller.dart';
import 'package:repo_counter_example/models/counter.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final HomeController _homeController = HomeController();

  void _incrementCounter() {
    setState(() {
      _homeController.addCounter();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Se actualizara en cuento el repo lea la info',
            ),
            CounterWidget(_homeController),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

class CounterWidget extends StatelessWidget {
  final HomeController _homeController;
  const CounterWidget(this._homeController, {super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _homeController.getNumber(),
      builder: (BuildContext context, AsyncSnapshot<Counter> snapshot) {
        if (snapshot.hasData) {
          return Text(
            '${snapshot.data!.number}',
            style: Theme.of(context).textTheme.headline4,
          );
        } else {
          return const Center(
            child: Text("Cargando..."),
          );
        }
      },
    );
  }
}
