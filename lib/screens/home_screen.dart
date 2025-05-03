import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:space_explorer/models/planet.dart';
import 'package:space_explorer/widgets/explore_button.dart';
import 'dart:math'; // Add this import for pi constant

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentPlanetIndex = 2; // Start with Earth

  @override
  Widget build(BuildContext context) {
    final currentPlanet = planets[currentPlanetIndex];

    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          // Planet image at top
          Positioned(
            top: -50,
            right: -50,
            child: Image.asset(
              'assets/images/half_planet.png',
              width: 200,
              color: currentPlanet.primaryColor.withOpacity(0.5),
            ),
          ),

          // Main content
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Explore',
                  style: GoogleFonts.orbitron(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  'Which planet\nwould you like to explore?',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.orbitron(
                    fontSize: 24,
                    color: Colors.white70,
                  ),
                ),
                const SizedBox(height: 40),

                // Planet image with rotation fix
                Transform.rotate(
                  angle: pi / 2, // Rotate 90 degrees clockwise to compensate
                  child: Image.asset(
                    currentPlanet.imagePath,
                    width: 200,
                  ),
                ),
                const SizedBox(height: 20),

                // Planet name with arrows
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          currentPlanetIndex =
                              (currentPlanetIndex - 1) % planets.length;
                          if (currentPlanetIndex < 0) {
                            currentPlanetIndex = planets.length - 1;
                          }
                        });
                      },
                      icon: const Icon(Icons.arrow_back, color: Colors.red),
                      style: IconButton.styleFrom(
                        backgroundColor: Colors.red.withOpacity(0.2),
                        shape: const CircleBorder(),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Text(
                      currentPlanet.name,
                      style: GoogleFonts.orbitron(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(width: 20),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          currentPlanetIndex =
                              (currentPlanetIndex + 1) % planets.length;
                        });
                      },
                      icon: const Icon(Icons.arrow_forward, color: Colors.red),
                      style: IconButton.styleFrom(
                        backgroundColor: Colors.red.withOpacity(0.2),
                        shape: const CircleBorder(),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          // Explore button at bottom
          Positioned(
            bottom: 50,
            left: (MediaQuery.of(context).size.width - 342) / 2,
            child: ExploreButton(
              text: 'Explore ${currentPlanet.name}',
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  '/planet',
                  arguments: currentPlanet,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
