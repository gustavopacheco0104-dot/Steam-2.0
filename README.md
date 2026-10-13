# GameVault

Aplicación móvil de tienda y comunidad de videojuegos

**Gustavo Pacheco** 

## Descripción

Steam 2.0 tiene tres secciones, navegables desde una barra inferior (`BottomNavigationBar`):

- **Home:** banner de ofertas, carrusel horizontal de juegos destacados y publicaciones de la comunidad (`PostCard`) con botón "Me gusta".
- **Chats:** lista vertical de conversaciones con amigos (`ChatTile`), con avatar, último mensaje, hora e indicador de mensajes sin leer.
- **Laboratorio de widgets:** carrito de compras interactivo (`NumericCounter`) que modifica una cantidad y calcula el total con `setState()`.

Los datos son estáticos y están escritos directamente en el código.

## Estructura del proyecto

```
lib/
├── main.dart
├── screens/
│   ├── home_screen.dart
│   ├── chats_screen.dart
│   └── laboratory_screen.dart
└── widgets/
    ├── post_card.dart
    ├── promotional_banner.dart
    ├── image_carousel.dart
    ├── chat_tile.dart
    └── numeric_counter.dart
```

## Cómo ejecutar

1. Instalar Flutter y verificar con `flutter doctor`.
2. Clonar el repositorio:

   git clone [https://github.com/gustavopacheco0104-dot/Steam-2.0.git]
   cd [Steam-2.0]

3. Descargar las dependencias:
```
   flutter pub get
```
4. Iniciar un emulador o conectar un dispositivo y ejecutar:
```
   flutter run
```

> Las imágenes se cargan desde internet, por lo que el emulador o dispositivo necesita conexión.

## Evidencias

- **Capturas de pantalla:** carpeta `Evidencia/` (Home, Chats y Laboratorio de widgets).