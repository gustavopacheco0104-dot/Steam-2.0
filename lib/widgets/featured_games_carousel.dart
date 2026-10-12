import 'package:flutter/material.dart';

class FeaturedGamesCarousel extends StatelessWidget {
  const FeaturedGamesCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Padding(
          padding: EdgeInsets.fromLTRB(16, 12, 16, 8),
          child: Text(
            'Juegos destacados',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),

        SizedBox(
          height: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 12),
            children: const <Widget>[
              _GameCard(
                titulo: 'Minecraft',
                precio: '\$29.99',
                urlImagen: 'https://image.api.playstation.com/vulcan/ap/rnd/202407/0401/670c294ded3baf4fa11068db2ec6758c63f7daeb266a35a1.png',
              ),
              _GameCard(
                titulo: 'Call of duty',
                precio: '\$19.99',
                urlImagen: 'https://www.callofduty.com/content/dam/atvi/callofduty/cod-touchui/hub/v2026/vault-edition/VE_Mobile.webp',
              ),
              _GameCard(
                titulo: 'Plantas vs Zombies',
                precio: '\$14.99',
                urlImagen: 'https://sm.ign.com/t/ign_latam/review/p/plants-vs-/plants-vs-zombies-replanted-review_8xxn.1280.jpg',
              ),
              _GameCard(
                titulo: 'Mortal Kombat 11',
                precio: 'Gratis',
                urlImagen: 'https://i0.wp.com/www.gamerfocus.co/wp-content/uploads/2019/04/Mortal-Kombat-11-Portada.jpg?resize=860%2C484&ssl=1',
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _GameCard extends StatelessWidget {
  final String titulo;
  final String precio;
  final String urlImagen;

  const _GameCard({
    required this.titulo,
    required this.precio,
    required this.urlImagen,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: const EdgeInsets.only(right: 10),
      padding: const EdgeInsets.all(8),
      alignment: Alignment.bottomCenter,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: const Color(0xFF66C0F4), width: 2),
        image: DecorationImage(
          image: NetworkImage(urlImagen),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.black87,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              titulo,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              precio,
              style: const TextStyle(
                color: Color(0xFFA4D007),
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}