import 'package:flutter/material.dart';

import '../widgets/friend_chat_tile.dart';

class FriendsChatScreen extends StatelessWidget {
  const FriendsChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const <Widget>[
        ChatTile(
          nombre: 'ShadowFox',
          ultimoMensaje: '¿Jugamos una partida de Overwatch?',
          hora: '22:15',
          urlAvatar: 'https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto,t_profile_original/v1/attachments/profile/photo/5beb412db9261181bb17e9d8afc63b05-1670003261537/abac8176-7f7e-4ed2-b91b-eba7cebcafed.png',
          mensajesSinLeer: 2,
        ),
        ChatTile(
          nombre: 'NeoGamer21',
          ultimoMensaje: 'Te envié la invitación al lobby.',
          hora: '21:40',
          urlAvatar: 'https://i.pinimg.com/564x/ed/b6/a3/edb6a30eeb126284f43536e50a779156.jpg',
          mensajesSinLeer: 0,
        ),
        ChatTile(
          nombre: 'LunaPlays',
          ultimoMensaje: 'Revancha esta noche, Bot.',
          hora: '20:58',
          urlAvatar: 'https://as2.ftcdn.net/jpg/04/10/96/15/1000_F_410961501_1e3tKu85EeF0LNNSf6b3wASzDac2KquB.jpg',
          mensajesSinLeer: 5,
        ),    
      ],
    );
  }
}