import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String appTitle = 'Los lugares mas visitados';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appTitle),
        ),
        body: const SingleChildScrollView(
          child: Column(
            children: [
              TitleSection(
                  name: 'Oeschien Lake Campground',
                  location: 'Kandersteg, Switzerland'),
                  ImageSection(image: 'images/image1.jpg',),
              ButtonSection(),
              TextSection(description: "Descripción de lugar Switzerland xd"),
              TitleSection(name: 'El panecillo', location: 'Quito, Ecuador'),
              ImageSection(image: 'images/neco.jpg',),
              ButtonSection(),
              TextSection(description: "Descripción del Panecillo"),
              TitleSection(name: 'Tu gfa', location: 'Quito, Ecuador'),
              ButtonSection(),
              TextSection(description: "Descripción de tu gfa"),
              TitleSection(name: 'Tu ñaña', location: 'Quito, Ecuador'),
              ButtonSection(),
              TextSection(description: "Descripción de tu ñaña"),
              TitleSection(name: 'El Ejido', location: 'Quito, Ecuador'),
              ButtonSection(),
              TextSection(description: "Descripción del Ejido"),
            ],
          ),
        ),
      ),
    );
  }
}

class TitleSection extends StatelessWidget {
  const TitleSection({
    super.key,
    required this.name,
    required this.location,
  });

  final String name;
  final String location;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 1),
                  child: Text(
                    name,
                    style: const TextStyle(
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
                Text(
                  location,
                  style: TextStyle(
                    color: Colors.grey[900],
                  ),
                ),
              ],
            ),
          ),
          Icon(
            Icons.account_tree_rounded,
            color: Colors.red[900],
          ),
          const Text('5'),
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    final Color color = Theme.of(context).primaryColorDark;
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ButtonWithText(
            color: color,
            icon: Icons.airplay,
            label: 'Ver',
          ),
          ButtonWithText(
            color: color,
            icon: Icons.near_me,
            label: 'Ubicación',
          ),
          ButtonWithText(
            color: color,
            icon: Icons.share,
            label: 'Compartir',
          ),
        ],
      ),
    );
  }
}

class ButtonWithText extends StatelessWidget {
  const ButtonWithText({
    super.key,
    required this.color,
    required this.icon,
    required this.label,
  });

  final Color color;
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}

class TextSection extends StatelessWidget {
  const TextSection({super.key, required this.description});

  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Text(
        description,
        softWrap: true,
      ),
    );
  }
}

class ImageSection extends StatelessWidget {
  const ImageSection({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      image,
      width: 600,
      height: 240,
      fit: BoxFit.cover,
    );
  }
}
