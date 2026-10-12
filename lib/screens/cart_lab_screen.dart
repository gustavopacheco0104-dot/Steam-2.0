import 'package:flutter/material.dart';

import '../widgets/cart_counter.dart';

class CartLabScreen extends StatelessWidget {
  const CartLabScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CartCounter(
        titulo: 'Copias en tu carrito',
        precioUnitario: 19.99,
        maximo: 30,
      ),
    );
  }
}