import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:space_explorer/widgets/explore_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          // Sun image on the left half
          Positioned(
            left: -MediaQuery.of(context).size.width * 0.25,
            top: MediaQuery.of(context).size.height * 0.15,
            child: Image.asset(
              'assets/images/sun.png',
              width: MediaQuery.of(context).size.width * 0.8,
            ),
          ),

          // Text in the center
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
                Text(
                  'The',
                  style: GoogleFonts.orbitron(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'Universe',
                  style: GoogleFonts.orbitron(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),

          // Explore button at the bottom
          Positioned(
            bottom: 50,
            left: (MediaQuery.of(context).size.width - 342) / 2,
            child: ExploreButton(
              text: 'Explore',
              onPressed: () {
                Navigator.pushNamed(context, '/home');
              },
            ),
          ),
        ],
      ),
    );
  }
}
