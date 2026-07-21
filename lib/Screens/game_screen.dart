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
                    title: 'Valorant',
                    category: 'Fps',
                    iconColor: Colors.red,
                  ),
                  GameContainer(
                    title: 'God of War',
                    category: 'Aksiyon',
                    iconColor: Colors.green,
                  ),
                  GameContainer(
                    title: 'Clash Royale',
                    category: 'Taktiksel',
                    iconColor: Colors.amber,
                  ),
                  GameContainer(
                    title: 'Arc Raiders',
                    category: 'Extraction Shooter',
                    iconColor: Colors.purple,
                  ),
                  GameContainer(
                    title: 'League of Legends',
                    category: 'MOBA',
                    iconColor: Colors.orange,
                  ),
                  GameContainer(
                    title: 'Stardew Valley',
                    category: 'Yaşam Simülasyonu',
                    iconColor: Colors.tealAccent,
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
  const GameContainer({
    super.key,
    required this.title,
    required this.category,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 0.1,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Color(0xff1C1C1E),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: iconColor.withOpacity(0.1),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Iconsax.game_copy, color: iconColor, size: 40),
                ),
              ),
              SizedBox(width: 16),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(color: Colors.white, fontSize: 16),
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
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 16),
                child: Icon(Iconsax.heart_copy, color: Colors.red),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
