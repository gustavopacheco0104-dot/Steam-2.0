import 'package:flutter/material.dart';

import '../widgets/community_post.dart';
import '../widgets/offer_banner.dart';
import '../widgets/featured_games_carousel.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(vertical: 8),
      children: const <Widget>[
        OfferBanner(
          titulo: '¡Rebajas de otoño!',
          descripcion: 'Hasta 75% de descuento en cientos de juegos por tiempo limitado.',
          icono: Icons.local_offer,
          colorFondo: Color(0xFF5C7E10),
          textoBoton: 'Ver ofertas',
        ),
        FeaturedGamesCarousel(),
        Padding(
          padding: EdgeInsets.fromLTRB(16, 16, 16, 4),
          child: Text(
            'Actividad de la comunidad',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        PostCard(
          nombreUsuario: 'ShadowFox',
          juego: 'Overwatch 2',
          urlAvatar: 'https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto,t_profile_original/v1/attachments/profile/photo/5beb412db9261181bb17e9d8afc63b05-1670003261537/abac8176-7f7e-4ed2-b91b-eba7cebcafed.png',
          urlImagen: 'https://i.ytimg.com/vi/SSYzUI4Lo1E/maxresdefault.jpg',
          descripcion: 'New Record',
          likes: 102,
          comentarios: 17,
        ),
        PostCard(
          nombreUsuario: 'NeoGamer21',
          juego: 'Halo Infinite',
          urlAvatar: 'https://i.pinimg.com/564x/ed/b6/a3/edb6a30eeb126284f43536e50a779156.jpg',
          urlImagen: 'https://cdn.mos.cms.futurecdn.net/cV3aorquWrgC889CbaicpL-1920-80.jpg',
          descripcion: 'On fire!',
          likes: 22,
          comentarios: 19,
        ),
        PostCard(
          nombreUsuario: 'LunaPlays',
          juego: 'Dark Souls I',
          urlAvatar: 'https://as2.ftcdn.net/jpg/04/10/96/15/1000_F_410961501_1e3tKu85EeF0LNNSf6b3wASzDac2KquB.jpg',
          urlImagen: 'https://i.redd.it/rshlrneck0x81.png',
          descripcion: 'Finalmente completé el juego.',
          likes: 500,
          comentarios: 39,
        ),
      ],
    );
  }
}