import 'package:flutter/material.dart';

class Planet {
  final String name;
  final String imagePath;
  final String description;
  final Color primaryColor;
  final Map<String, String> details;

  Planet({
    required this.name,
    required this.imagePath,
    required this.description,
    required this.primaryColor,
    required this.details,
  });
}

final List<Planet> planets = [
  Planet(
    name: 'Mercury',
    imagePath: 'assets/images/mercury.png',
    description: 'The smallest planet in our solar system',
    primaryColor: const Color(0xFFB5B5B5),
    details: {
      'Distance from Sun': '57.9 million km',
      'Length of Day': '1,408 hours',
      'Orbital Period': '88 Earth days',
      'Radius': '2,440 km',
      'Mass': '3.30 × 10²³ kg',
      'Gravity': '3.7 m/s²',
      'Surface Area': '7.48 × 10⁷ km²',
    },
  ),
  Planet(
    name: 'Venus',
    imagePath: 'assets/images/venus.png',
    description: 'The hottest planet with a toxic atmosphere',
    primaryColor: const Color(0xFFE6C229),
    details: {
      'Distance from Sun': '108.2 million km',
      'Length of Day': '2,802 hours',
      'Orbital Period': '225 Earth days',
      'Radius': '6,052 km',
      'Mass': '4.87 × 10²⁴ kg',
      'Gravity': '8.9 m/s²',
      'Surface Area': '4.60 × 10⁸ km²',
    },
  ),
  Planet(
    name: 'Earth',
    imagePath: 'assets/images/earth.png',
    description: 'Our home, the only known planet with life',
    primaryColor: const Color(0xFF1976D2),
    details: {
      'Distance from Sun': '149.6 million km',
      'Length of Day': '24 hours',
      'Orbital Period': '365.25 days',
      'Radius': '6,371 km',
      'Mass': '5.97 × 10²⁴ kg',
      'Gravity': '9.8 m/s²',
      'Surface Area': '5.10 × 10⁸ km²',
    },
  ),
  Planet(
    name: 'Mars',
    imagePath: 'assets/images/mars.png',
    description: 'The red planet, target for future colonization',
    primaryColor: const Color(0xFFFF5722),
    details: {
      'Distance from Sun': '227.9 million km',
      'Length of Day': '25 hours',
      'Orbital Period': '687 Earth days',
      'Radius': '3,390 km',
      'Mass': '6.39 × 10²³ kg',
      'Gravity': '3.7 m/s²',
      'Surface Area': '1.45 × 10⁸ km²',
    },
  ),
  Planet(
    name: 'Jupiter',
    imagePath: 'assets/images/jupiter.png',
    description: 'The largest planet, a gas giant with a great red spot',
    primaryColor: const Color(0xFFFFC107),
    details: {
      'Distance from Sun': '778.3 million km',
      'Length of Day': '10 hours',
      'Orbital Period': '4,333 Earth days',
      'Radius': '69,911 km',
      'Mass': '1.90 × 10²⁷ kg',
      'Gravity': '24.8 m/s²',
      'Surface Area': '6.14 × 10¹⁰ km²',
    },
  ),
  Planet(
    name: 'Saturn',
    imagePath: 'assets/images/saturn.png',
    description: 'The ringed planet, another gas giant',
    primaryColor: const Color(0xFFFFA000),
    details: {
      'Distance from Sun': '1.4 billion km',
      'Length of Day': '11 hours',
      'Orbital Period': '10,759 Earth days',
      'Radius': '58,232 km',
      'Mass': '5.68 × 10²⁶ kg',
      'Gravity': '10.4 m/s²',
      'Surface Area': '4.27 × 10¹⁰ km²',
    },
  ),
  Planet(
    name: 'Uranus',
    imagePath: 'assets/images/uranus.png',
    description: 'An ice giant that rotates on its side',
    primaryColor: const Color(0xFF4FC3F7),
    details: {
      'Distance from Sun': '2.9 billion km',
      'Length of Day': '17 hours',
      'Orbital Period': '30,687 Earth days',
      'Radius': '25,362 km',
      'Mass': '8.68 × 10²⁵ kg',
      'Gravity': '8.7 m/s²',
      'Surface Area': '8.12 × 10⁹ km²',
    },
  ),
  Planet(
    name: 'Neptune',
    imagePath: 'assets/images/neptune.png',
    description: 'The windiest planet, a dark and cold ice giant',
    primaryColor: const Color(0xFF2196F3),
    details: {
      'Distance from Sun': '4.5 billion km',
      'Length of Day': '16 hours',
      'Orbital Period': '60,190 Earth days',
      'Radius': '24,622 km',
      'Mass': '1.02 × 10²⁶ kg',
      'Gravity': '11.2 m/s²',
      'Surface Area': '7.62 × 10⁹ km²',
    },
  ),
  Planet(
    name: 'Pluto',
    imagePath: 'assets/images/pluto.png',
    description: 'A dwarf planet in the Kuiper belt',
    primaryColor: const Color(0xFF795548),
    details: {
      'Distance from Sun': '5.9 billion km',
      'Length of Day': '153 hours',
      'Orbital Period': '90,560 Earth days',
      'Radius': '1,188 km',
      'Mass': '1.31 × 10²² kg',
      'Gravity': '0.7 m/s²',
      'Surface Area': '1.77 × 10⁷ km²',
    },
  ),
];
