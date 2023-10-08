import 'package:flutter/material.dart';

class Place extends StatelessWidget {
  const Place({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.black,

      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          child: Column(
            children: [
              Container(
                width: 370,
                height: 200,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(22, 22, 22, 1),
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  children: [
                    Container(
                      width: 130,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.0),
                          bottomLeft: Radius.circular(20.0),
                        ),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('lib/assets/Urano.png'),
                        ),
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Atmosfera de metano",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 200,
                              child: Text(
                                "Urano tiene una atmósfera espesa compuesta principalmente de hidrógeno y helio, ...",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              // Acción al presionar el botón
                              //signIn();
                              print('Botón presionado');
                              // Agrega aquí la lógica adicional que deseas ejecutar al presionar el botón
                            },
                            child: Container(
                              width: 200,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color.fromRGBO(255, 255, 255, 1),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 15),
                                child: Center(
                                  child: Text(
                                    "AGREGAR",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
