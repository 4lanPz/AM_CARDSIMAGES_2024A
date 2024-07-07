import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String appTitle = 'Mis 5 lugares visitados';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appTitle),
        ),
        body: const SingleChildScrollView(
          child: Column(
            children: [
              ImageSection(
                image: 'images/bahia.jpg',
              ),
              TitleSection(
                  name: 'Bahia de Caraquez',
                  location: 'Bahia de Caraquez, Ecuador'),
              ButtonSection(),
              TextSection(
                  description:
                      "Bahía de Caráquez es una ciudad costera en Ecuador, famosa por su arquitectura colonial, playas extensas y ambiente tranquilo. Es un destino ideal para quienes buscan disfrutar de la naturaleza y la historia, con oportunidades para practicar deportes acuáticos y explorar sitios arqueológicos."),
              ImageSection(
                image: 'images/los-bancos.jpg',
              ),
              TitleSection(
                  name: 'San Miguel de los Bancos',
                  location: 'San Miguel de los Bancos, Ecuador'),
              ButtonSection(),
              TextSection(
                  description:
                      "San Miguel de los Bancos es una ciudad encantadora en la región de Pichincha, Ecuador. Rodeada de bosques nubosos y ríos, es conocida por su biodiversidad y paisajes impresionantes. Es un lugar perfecto para los amantes de la naturaleza y la aventura, con actividades como senderismo, observación de aves y rafting."),
              ImageSection(
                image: 'images/canoa.jpg',
              ),
              TitleSection(name: 'Canoa', location: 'Canoa, Ecuador'),
              ButtonSection(),
              TextSection(
                  description:
                      "Canoa es una pequeña ciudad costera ubicada en la provincia de Manabí, Ecuador. Con sus largas playas de arena blanca y olas perfectas para el surf, es un destino popular tanto para turistas nacionales como internacionales. Además de sus playas, Canoa ofrece una vibrante vida nocturna y una comunidad acogedora."),
              ImageSection(
                image: 'images/esmeraldas.jpg',
              ),
              TitleSection(name: 'Esmeraldas', location: 'Esmeraldas, Ecuador'),
              ButtonSection(),
              TextSection(
                  description:
                      "Esmeraldas es una ciudad portuaria en la costa norte de Ecuador, conocida por sus hermosas playas, cultura afroecuatoriana y su vibrante escena musical. La ciudad ofrece una mezcla única de tradición y modernidad, con festivales coloridos, deliciosos mariscos y una rica historia cultural."),
              ImageSection(
                image: 'images/atacames.jpg',
              ),
              TitleSection(name: 'Atacames', location: 'Atacames, Ecuador'),
              ButtonSection(),
              TextSection(
                  description:
                      "Atacames es una ciudad costera ubicada en la provincia de Esmeraldas, Ecuador. Es famosa por sus playas extensas de arena dorada y su animada vida nocturna. Los visitantes pueden disfrutar de una variedad de deportes acuáticos, como el surf y el esquí acuático, así como de una vibrante oferta gastronómica con mariscos frescos y especialidades locales."),
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
            Icons.star_border_outlined,
            color: Colors.red[900],
          ),
          const Text('10'),
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
      padding: const EdgeInsets.all(32),
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
