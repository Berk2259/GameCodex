import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class GameScreen extends StatelessWidget {
  const GameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF121212),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 32, 16, 0),
          child: SingleChildScrollView(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Oyun Rehberi',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 26,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Keşfet ve Favorilerini bul',
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color(0xff1C1C1E),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            '6 Oyun',
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8, bottom: 8),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Oyun Ara',
                        prefixIcon: Icon(Icons.search),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                  ),
                  GameContainer(
                    title: 'Grand Theft Auto V',
                    category: 'Action, Adventure',
                    iconColor: Colors.red,
                    about:
                        'Michael, Franklin ve Trevor isimli üç karakterin suç dünyasındaki hikâyesini konu alır. Oyuncu karakterler arasında istediği zaman geçiş yapabilir.',
                    publisher: 'Rockstar Games',
                  ),
                  GameContainer(
                    title: 'Minecraft',
                    category: 'Survival, Crafting',
                    iconColor: Colors.green,
                    about: 'Oyuncu tamamen bloklardan oluşan sonsuz bir dünyada hayatta kalmaya çalışır.',
                    publisher: 'Mojang / Xbox Game Studios',
                  ),
                  GameContainer(
                    title: 'Red Dead Redemption 2',
                    category: 'Action Adventure',
                    iconColor: Colors.amber,
                    about: '',
                    publisher: '',
                  ),
                  GameContainer(
                    title: 'Arc Raiders',
                    category: 'Extraction Shooter',
                    iconColor: Colors.purple,
                    about: '',
                    publisher: '',
                  ),
                  GameContainer(
                    title: 'League of Legends',
                    category: 'MOBA',
                    iconColor: Colors.orange,
                    about: '',
                    publisher: '',
                  ),
                  GameContainer(
                    title: 'Stardew Valley',
                    category: 'Yaşam Simülasyonu',
                    iconColor: Colors.tealAccent,
                    about: '',
                    publisher: '',
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class GameContainer extends StatelessWidget {
  final String title;
  final String category;
  final Color iconColor;
  final String about;
  final String publisher;
  const GameContainer({
    super.key,
    required this.title,
    required this.category,
    required this.iconColor,
    required this.about,
    required this.publisher,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: Container(
        width: double.infinity,

        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Color(0xff1C1C1E),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.3,
                    height: MediaQuery.of(context).size.width * 0.3,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: iconColor.withOpacity(0.1),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Iconsax.game_copy,
                        color: iconColor,
                        size: 40,
                      ),
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    SizedBox(height: 4),
                    Text(
                      publisher,
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                    SizedBox(height: 4),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: iconColor.withOpacity(0.2),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(10, 2, 10, 2),
                        child: Text(
                          category,
                          style: TextStyle(color: iconColor, fontSize: 12),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Column(
                children: [
                  Text(
                    about,
                    style: TextStyle(color: Colors.white70, fontSize: 12),
                  ),
                ],
              ),
            ),
            
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.only(right: 16,bottom: 16),
                child: Icon(Iconsax.heart_copy, color: Colors.red),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
