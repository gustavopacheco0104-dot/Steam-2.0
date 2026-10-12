import 'package:flutter/material.dart';

import 'screens/store_screen.dart';
import 'screens/friends_chat_screen.dart';
import 'screens/cart_lab_screen.dart';

void main() {
  runApp(const GameVaultApp());
}

class GameVaultApp extends StatelessWidget {
  const GameVaultApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: const MainNavigation(),
    );
  }
}

class MainNavigation extends StatefulWidget {
  const MainNavigation({super.key});

  @override
  State<MainNavigation> createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  int _selectedIndex = 0;

  static const TextStyle estiloTitulo = TextStyle(fontWeight: FontWeight.bold);

  Widget _construirTitulo() {
    if (_selectedIndex == 0) {
      return const Row(
        children: <Widget>[
          Icon(Icons.sports_esports, color: Color(0xFF66C0F4)),
          SizedBox(width: 8),
          Text('Steam 2.0', style: estiloTitulo),
        ],
      );
    } else if (_selectedIndex == 1) {
      return const Text('Amigos', style: estiloTitulo);
    } else {
      return const Text('Laboratorio de widgets', style: estiloTitulo);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1B2838),
      appBar: AppBar(
        backgroundColor: const Color(0xFF171A21),
        foregroundColor: Colors.white,
        title: _construirTitulo(),
        actions: <Widget>[
          if (_selectedIndex == 0)
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {},
            ),
          if (_selectedIndex == 1)
            IconButton(
              icon: const Icon(Icons.person_add_alt),
              onPressed: () {},
            ),
        ],
      ),
      
      body: <Widget>[
        const StoreScreen(),
        const FriendsChatScreen(),
        const CartLabScreen(),
      ][_selectedIndex],

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xFF171A21),
        currentIndex: _selectedIndex,
        selectedItemColor: const Color(0xFF66C0F4),
        unselectedItemColor: Colors.grey,
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            activeIcon: Icon(Icons.home_filled),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2_outlined),
            activeIcon: Icon(Icons.person_2_outlined),
            label: 'Amigos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            activeIcon: Icon(Icons.shopping_cart),
            label: 'Carrito de compra',
          ),
        ],
      ),
    );
  }
}