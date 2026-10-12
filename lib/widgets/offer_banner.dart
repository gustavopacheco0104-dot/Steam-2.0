import 'package:flutter/material.dart';

class OfferBanner extends StatelessWidget {
  final String titulo;
  final String descripcion;
  final IconData icono;
  final Color colorFondo;
  final String textoBoton;

  const OfferBanner({
    super.key,
    required this.titulo,
    required this.descripcion,
    required this.icono,
    required this.colorFondo,
    required this.textoBoton,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(12, 8, 12, 8),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: colorFondo,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: <Widget>[
          
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  titulo,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  descripcion,
                  style: const TextStyle(color: Colors.white),
                ),
                const SizedBox(height: 12),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: colorFondo,
                  ),
                  child: Text(textoBoton),
                ),
              ],
            ),
          ),
          const SizedBox(width: 12),
          Icon(icono, size: 64, color: Colors.white),
        ],
      ),
    );
  }
}