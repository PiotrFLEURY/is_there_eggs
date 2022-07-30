import 'package:flutter/material.dart';

enum NavBarItem { home, list, search, profile }

class BottomNavBar extends StatefulWidget {
  final ValueChanged<NavBarItem> onItemSelected;
  const BottomNavBar({
    Key? key,
    required this.onItemSelected,
  }) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade200,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              icon: Icon(
                _currentIndex == NavBarItem.home.index
                    ? Icons.home
                    : Icons.home_outlined,
              ),
              color: _currentIndex == NavBarItem.home.index
                  ? Theme.of(context).colorScheme.primary
                  : Theme.of(context).colorScheme.tertiary,
              onPressed: () => _onItemSelected(NavBarItem.home),
            ),
            IconButton(
              icon: Icon(
                _currentIndex == NavBarItem.list.index
                    ? Icons.list
                    : Icons.list_outlined,
              ),
              color: _currentIndex == NavBarItem.list.index
                  ? Theme.of(context).colorScheme.primary
                  : Theme.of(context).colorScheme.tertiary,
              onPressed: () => _onItemSelected(NavBarItem.list),
            ),
            const SizedBox(width: 24),
            IconButton(
              icon: Icon(
                _currentIndex == NavBarItem.search.index
                    ? Icons.search
                    : Icons.search_outlined,
              ),
              color: _currentIndex == NavBarItem.search.index
                  ? Theme.of(context).colorScheme.primary
                  : Theme.of(context).colorScheme.tertiary,
              onPressed: () => _onItemSelected(NavBarItem.search),
            ),
            IconButton(
              icon: Icon(
                _currentIndex == NavBarItem.profile.index
                    ? Icons.person
                    : Icons.person_outlined,
              ),
              color: _currentIndex == NavBarItem.profile.index
                  ? Theme.of(context).colorScheme.primary
                  : Theme.of(context).colorScheme.tertiary,
              onPressed: () => _onItemSelected(NavBarItem.profile),
            ),
          ],
        ),
      ),
    );
  }

  void _onItemSelected(NavBarItem item) {
    setState(() {
      _currentIndex = item.index;
    });
    widget.onItemSelected(item);
  }
}
