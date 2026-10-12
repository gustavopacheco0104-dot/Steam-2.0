import 'package:flutter/material.dart';

class ChatTile extends StatelessWidget {
  final String nombre;
  final String ultimoMensaje;
  final String hora;
  final String urlAvatar;
  final int mensajesSinLeer;

  const ChatTile({
    super.key,
    required this.nombre,
    required this.ultimoMensaje,
    required this.hora,
    required this.urlAvatar,
    required this.mensajesSinLeer,
  });

  @override
  Widget build(BuildContext context) {
    final bool hayNoLeidos = mensajesSinLeer > 0;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.white12),
        ),
      ),
      child: Row(
        children: <Widget>[

          CircleAvatar(
            radius: 26,
            backgroundImage: NetworkImage(urlAvatar),
          ),
          const SizedBox(width: 14),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  nombre,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  ultimoMensaje,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: hayNoLeidos ? Colors.white : Colors.grey,
                    fontWeight:
                        hayNoLeidos ? FontWeight.w600 : FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 8),

          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Text(
                hora,
                style: TextStyle(
                  fontSize: 12,
                  color: hayNoLeidos ? const Color(0xFF66C0F4) : Colors.grey,
                ),
              ),
              const SizedBox(height: 6),
              if (hayNoLeidos)
                Container(
                  padding: const EdgeInsets.all(6),
                  decoration: const BoxDecoration(
                    color: Color(0xFF66C0F4),
                    shape: BoxShape.circle,
                  ),
                  child: Text(
                    '$mensajesSinLeer',
                    style: const TextStyle(
                      color: Color(0xFF171A21),
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}