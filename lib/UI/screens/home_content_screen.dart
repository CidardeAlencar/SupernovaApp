import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:supernova/UI/widgets/marte.dart';
import 'package:supernova/UI/widgets/tierra.dart';

class HomeContentScreen extends StatefulWidget {
  const HomeContentScreen({super.key});

  @override
  State<HomeContentScreen> createState() => _HomeContentScreenState();
}

class _HomeContentScreenState extends State<HomeContentScreen> {
  final controller = PageController(viewportFraction: 0.8, keepPage: true);

  @override
  Widget build(BuildContext context) {
    final pages = [
      Tierra(),
      Marte(),
    ];
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Image.asset('lib/assets/Logo.png', width: 90),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    // Para que el TextField ocupe el espacio restante
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Buscar...",
                        hintStyle:
                            TextStyle(color: Colors.white), // Cambio aquí
                        filled: true,
                        fillColor: Color.fromRGBO(29, 28, 28, 1),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none,
                        ),
                        prefixIcon: Icon(Icons.search, color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(width: 20), // Espacio en el lado derecho
                ],
              ),
              const Text(
                "Explore los planetas",
                style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 520,
                child: PageView.builder(
                  controller: controller,
                  itemCount: pages.length,
                  itemBuilder: (_, index) {
                    return pages[index];
                  },
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SmoothPageIndicator(
                controller: controller,
                count: pages.length,
                effect: const WormEffect(
                  dotHeight: 16,
                  dotWidth: 16,
                  type: WormType.thinUnderground,
                  dotColor: Color(0xFFD9D9D9),
                  activeDotColor: Color(0xFF7068CD),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
