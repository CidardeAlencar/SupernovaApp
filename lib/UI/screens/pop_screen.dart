import 'package:flutter/material.dart';

class PopScreen extends StatelessWidget {
  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled:
          true, // Esto permite que el contenido determine la altura de la hoja deslizable
      builder: (context) {
        return DraggableScrollableSheet(
          maxChildSize:
              1, // Esto hará que el contenido pueda expandirse hasta el 80% de la pantalla
          builder: (BuildContext context, ScrollController scrollController) {
            return Container(
              color: const Color.fromARGB(255, 0, 0, 0),
              child: SingleChildScrollView(
                controller: scrollController,
                child: Column(
                  children: [
                    // Añade tu contenido aquí.
                    // Por ejemplo, puedes agregar muchos Widgets Text para simular un contenido extenso:
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Image.asset('lib/assets/Heart.png'),
                      ),
                    ),
                    Text(
                      "Tierra",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        "- Tamaño (Diámetros): El diámetro de la Tierra es de 12.742 km[1][6].\n - Masa: La masa de la Tierra es de 5,97219 x 10^24 kg, lo que equivale a 1 masa terrestre[2][7].\n - Vuelta de 360 (Duración de un día): Un día en la Tierra dura 24 horas[3][8].\n - Tiempo de Viaje: El tiempo de viaje a la Luna es de aproximadamente 3 días[9].\n - Temperatura Media: La temperatura media en la superficie de la Tierra es de 15 °C (59 °F)[1].\n - Última Misión: La última misión a la Luna fue la misión Artemis 1 de la NASA, que está programada para ser lanzada en noviembre de 2021[9].\n - Cuánto duran los días: Un día en la Tierra dura 24 horas[3][8].\n - Cuánto duran los años: Un año en la Tierra dura 365,26 días[6].\n - Cuántas veces es la gravedad de la Tierra: La gravedad en la Tierra es 1 g, lo que significa que es igual a la gravedad en la superficie de la Tierra[1].\n - Composición de la Atmósfera: La atmósfera de la Tierra está compuesta principalmente de nitrógeno (78%) y oxígeno (21%), y también contiene otros gases en pequeñas cantidades, como argón, dióxido de carbono y neón[1].\n - Tiempo Promedio que la Luz Tarda en Llegar al Planeta: La luz tarda aproximadamente 8 minutos y 20 segundos en llegar a la Tierra desde el Sol[1].\n - Masa en masas terrestres (cuántas veces la masa de la Tierra): La masa de la Tierra es de 1 masa terrestre[2][7].\n - Masa en masas solares (cuántas veces la masa del Sol): La masa de la Tierra es aproximadamente 0,000003 masas solares[2].\n - Número de Lunas: La Tierra tiene una luna, llamada Luna[1].\n - Distancia Promedio del Sol: La distancia promedio entre la Tierra y el Sol es de aproximadamente 149,6 millones de kilómetros[1].\n - Densidad del Planeta: La densidad media de la Tierra es de 5,52 g/cm³[1].",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: () {
                        // Acción al presionar el botón
                        //signIn();
                        Navigator.of(context).pushNamed('/places');
                        print('Botón presionado');
                        // Agrega aquí la lógica adicional que deseas ejecutar al presionar el botón
                      },
                      child: Container(
                        width: 205,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromRGBO(83, 89, 105, 1),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 15),
                          child: Center(
                            child: Text(
                              "Ver lugares",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(
                  16.0), // Un poco de padding para que no esté pegado completamente al borde
              child: ElevatedButton(
                onPressed: () => _showBottomSheet(context),
                child: Icon(
                  Icons.arrow_upward,
                  color: Color.fromARGB(255, 44, 44, 44), // Color del ícono
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
