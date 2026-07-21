import 'package:flutter/material.dart';
import 'package:gamecodex/Screens/screen.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class Bottombar extends StatefulWidget {
  const Bottombar({super.key});

  @override
  State<Bottombar> createState() => _BottombarState();
}

class _BottombarState extends State<Bottombar> {
  int currentIndex = 0;

  final List<Widget> screens = [
    GameScreen(),
    FavoriteScreen(),
    MedalScreen(),
    NewsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: screens[currentIndex],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.fromLTRB(18, 0, 18, 18),
        child: SafeArea(
          child: Container(
            width: double.infinity,
            height: 75,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Color(0xff1C1C1E),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 25,
                  offset: Offset(0, 30),
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                BottomBarItem(
                  icon: Iconsax.game_copy,
                  iconText: 'Oyunlar',
                  selected: currentIndex == 0,
                  color: Colors.red,
                  onTap: () {
                    setState(() {
                      currentIndex = 0;
                    });
                  },
                ),
                BottomBarItem(
                  icon: Iconsax.heart_copy,
                  iconText: 'Favoriler',
                  selected: currentIndex == 1,
                  color: Colors.blue,
                  onTap: () {
                    setState(() {
                      currentIndex = 1;
                    });
                  },
                ),
                BottomBarItem(
                  icon: Iconsax.medal_copy,
                  selected: currentIndex == 2,
                  iconText: 'Başarılar',
                  color: Colors.amber,
                  onTap: () {
                    setState(() {
                      currentIndex = 2;
                    });
                  },
                ),
                BottomBarItem(
                  icon: Iconsax.document_text_1_copy,
                  iconText: 'Haberler',
                  selected: currentIndex == 3,
                  color: Colors.green,
                  onTap: () {
                    setState(() {
                      currentIndex = 3;
                    });
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class BottomBarItem extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String iconText;
  final bool selected;
  final VoidCallback onTap;
  BottomBarItem({
    super.key,
    required this.icon,
    required this.onTap,
    required this.selected,
    required this.iconText,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: selected ? 30 : 25,
            color: selected ? color : Colors.white,
          ),
          Text(
            iconText,
            style: TextStyle(color: selected ? color : Colors.white),
          ),
        ],
      ),
    );
  }
}
