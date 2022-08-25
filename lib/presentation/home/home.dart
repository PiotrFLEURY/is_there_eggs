import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:is_there_eggs/presentation/home/widgets/bottom_bar.dart';
import 'package:is_there_eggs/domain/repositories/chicken_repository.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final chickens = context.chickenRepository.getAllChickens();
    return Scaffold(
      bottomNavigationBar: BottomNavBar(
        onItemSelected: (item) {
          switch (item) {
            case NavBarItem.home:
              debugPrint('Home');
              break;
            case NavBarItem.list:
              debugPrint('List');
              break;
            case NavBarItem.search:
              debugPrint('Search');
              break;
            case NavBarItem.profile:
              debugPrint('Profile');
              break;
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _search,
        backgroundColor: Theme.of(context).colorScheme.primary,
        child: const Icon(Icons.search),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              'Mes poules',
              style: GoogleFonts.oswald(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .5,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: chickens.length,
                itemBuilder: (context, index) {
                  return Container(
                    alignment: Alignment.bottomLeft,
                    width: MediaQuery.of(context).size.width * .8,
                    margin: const EdgeInsets.all(8.0),
                    padding: const EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: DecorationImage(
                        image: AssetImage(
                            'assets/images/${chickens[index].image}'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Text(
                      chickens[index].name,
                      style: GoogleFonts.oswald(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  );
                },
              ),
            ),
            Expanded(
              child: Center(
                child: Text(
                  'Aucune poule n\'a été trouvée',
                  style: GoogleFonts.oswald(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _search() {
    debugPrint('Searching...');
  }
}
