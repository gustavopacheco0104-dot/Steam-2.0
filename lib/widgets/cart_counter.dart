import 'package:flutter/material.dart';

class CartCounter extends StatefulWidget {
  final String titulo;
  final double precioUnitario;
  final int maximo;

  const CartCounter({
    super.key,
    required this.titulo,
    required this.precioUnitario,
    required this.maximo,
  });

  @override
  State<CartCounter> createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int _cantidad = 0;

  void _agregar() {
    setState(() {
      _cantidad = _cantidad + 1;
    });
  }

  void _quitar() {
    setState(() {
      _cantidad = _cantidad - 1;
    });
  }

  void _vaciar() {
    setState(() {
      _cantidad = 0;
    });
  }

  String _obtenerMensaje() {
    if (_cantidad == 0) {
      return 'Tu carrito está vacío';
    } else if (_cantidad == widget.maximo) {
      return '¡Máximo de copias alcanzado!';
    } else {
      return 'Listo para comprar';
    }
  }

  @override
  Widget build(BuildContext context) {
    double total = _cantidad * widget.precioUnitario;

    return Card(
      color: const Color(0xFF16202D),
      elevation: 4,
      margin: const EdgeInsets.all(20),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const Icon(
              Icons.shopping_cart,
              size: 48,
              color: Color(0xFF66C0F4),
            ),
            const SizedBox(height: 8),
            Text(
              widget.titulo,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              'Precio por copia: \$${widget.precioUnitario}',
              style: const TextStyle(color: Colors.grey),
            ),
            const SizedBox(height: 16),

            Container(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 16),
              decoration: BoxDecoration(
                color: const Color(0xFF2A475E),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Text(
                '$_cantidad',
                style: const TextStyle(
                  fontSize: 64,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF66C0F4),
                ),
              ),
            ),
            const SizedBox(height: 12),
            Text(
              'Total: \$${total.toStringAsFixed(2)}',
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFFA4D007),
              ),
            ),
            const SizedBox(height: 4),
            Text(
              _obtenerMensaje(),
              style: const TextStyle(color: Colors.grey),
            ),
            const SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton.icon(
                  onPressed: _cantidad > 0 ? _quitar : null,
                  icon: const Icon(Icons.remove),
                  label: const Text('Quitar'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF2A475E),
                    foregroundColor: Colors.white,
                  ),
                ),
                const SizedBox(width: 12),
                ElevatedButton.icon(
                  onPressed: _cantidad < widget.maximo ? _agregar : null,
                  icon: const Icon(Icons.add),
                  label: const Text('Agregar'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF5C7E10),
                    foregroundColor: Colors.white,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            TextButton(
              onPressed: _vaciar,
              child: const Text('Vaciar carrito'),
            ),
          ],
        ),
      ),
    );
  }
}