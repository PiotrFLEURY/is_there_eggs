import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: BottomAppBar(
          child: Container(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.background,
              borderRadius: BorderRadius.circular(8.0),
              
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  icon: const Icon(Icons.home),
                  color: Theme.of(context).colorScheme.secondary,
                  onPressed: () {
                    // TODO
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.settings),
                  color: Theme.of(context).colorScheme.secondary,
                  onPressed: () {
                    // TODO
                  },
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _search,
        backgroundColor: Theme.of(context).colorScheme.primary,
        child: const Icon(Icons.search),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: const Center(
        child: Text('Home'),
      ),
    );
  }

  void _search() {
    debugPrint('Searching...');
  }
}
