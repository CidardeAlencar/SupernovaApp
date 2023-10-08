import 'package:flutter/material.dart';
import 'package:supernova/UI/screens/home_content_screen.dart';
import 'package:supernova/UI/screens/login_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    HomeContentScreen(),
    LoginScreen(),
    //ArticleScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex], // Muestra el contenido actual
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromRGBO(23, 23, 23, 1),
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Inicio',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Colors.white,
            ),
            label: 'Usuario',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.article,
              color: Colors.white,
            ),
            label: 'Itinerario',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite,
              color: Colors.white,
            ),
            label: 'Favoritos',
          ),
        ],
      ),
    );
  }
}
