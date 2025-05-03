import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:space_explorer/models/planet.dart';

class PlanetDetailsScreen extends StatelessWidget {
  final Planet planet;

  const PlanetDetailsScreen({super.key, required this.planet});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Back button and title
            Row(
              children: [
                IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(Icons.arrow_back, color: Colors.white),
                ),
                const SizedBox(width: 10),
                Text(
                  planet.name,
                  style: GoogleFonts.orbitron(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),

            // Subtitle
            Text(
              '${planet.name}: ${planet.description}',
              style: GoogleFonts.orbitron(fontSize: 16, color: Colors.white70),
            ),
            const SizedBox(height: 20),

            // Planet image
            Center(child: Image.asset(planet.imagePath, width: 200)),
            const SizedBox(height: 30),

            // About section
            Text(
              'About',
              style: GoogleFonts.orbitron(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              _getPlanetDescription(planet.name),
              style: GoogleFonts.orbitron(fontSize: 16, color: Colors.white70),
            ),
            const SizedBox(height: 30),

            // Planet data
            ...planet.details.entries.map(
              (entry) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Row(
                  children: [
                    Text(
                      '${entry.key}: ',
                      style: GoogleFonts.orbitron(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      entry.value,
                      style: GoogleFonts.orbitron(
                        fontSize: 16,
                        color: Colors.white70,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  String _getPlanetDescription(String name) {
    // Add your planet descriptions here
    if (name == 'Earth') {
      return 'Earth is the only known planet in the universe that supports life. Its unique combination of factors, including liquid water, a breathable atmosphere, and a suitable distance from the Sun, has created the ideal conditions for the development of complex organisms. Earth\'s magnetic field protects it from harmful solar radiation, and its atmosphere helps to regulate temperature and weather patterns.';
    }
    // Add descriptions for other planets
    return 'Detailed description of $name';
  }
}
