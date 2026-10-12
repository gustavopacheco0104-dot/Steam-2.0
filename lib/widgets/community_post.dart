import 'package:flutter/material.dart';

class PostCard extends StatefulWidget {
  final String nombreUsuario;
  final String juego;
  final String urlAvatar;
  final String urlImagen;
  final String descripcion;
  final int likes;
  final int comentarios;

  const PostCard({
    super.key,
    required this.nombreUsuario,
    required this.juego,
    required this.urlAvatar,
    required this.urlImagen,
    required this.descripcion,
    required this.likes,
    required this.comentarios,
  });

  @override
  State<PostCard> createState() => _PostCardState();
}

class _PostCardState extends State<PostCard> {
  
  bool _meGusta = false;

  @override
  Widget build(BuildContext context) {
    int likesMostrados = widget.likes;
    if (_meGusta) {
      likesMostrados = widget.likes + 1;
    }

    return Card(
      color: const Color(0xFF16202D),
      elevation: 3,
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // Cabecera: avatar, nombre y juego
          Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              children: <Widget>[
                CircleAvatar(
                  radius: 22,
                  backgroundImage: NetworkImage(widget.urlAvatar),
                ),
                const SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      widget.nombreUsuario,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Jugando a ${widget.juego}',
                      style: const TextStyle(
                        fontSize: 12,
                        color: Color(0xFF66C0F4),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          Image.network(
            widget.urlImagen,
            width: double.infinity,
            height: 220,
            fit: BoxFit.cover,
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
            child: Row(
              children: <Widget>[
                IconButton(
                  icon: Icon(
                    _meGusta ? Icons.thumb_up : Icons.thumb_up_off_alt,
                    color: _meGusta ? const Color(0xFF66C0F4) : Colors.grey,
                  ),
                  onPressed: () {
                    setState(() {
                      _meGusta = !_meGusta;
                    });
                  },
                ),
                Text('$likesMostrados'),
                const SizedBox(width: 16),
                IconButton(
                  icon: const Icon(
                    Icons.chat_bubble_outline,
                    color: Colors.grey,
                  ),
                  onPressed: () {},
                ),
                Text('${widget.comentarios}'),
              ],
            ),
          ),

          // Descripción breve
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 0, 12, 14),
            child: Text(widget.descripcion),
          ),
        ],
      ),
    );
  }
}