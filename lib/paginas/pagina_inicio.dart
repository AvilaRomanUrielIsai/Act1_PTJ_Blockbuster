import 'package:flutter/material.dart';

import '../widgets/doctor_item.dart';
import '../widgets/specialist_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffc3e5ff),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        iconSize: 24,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              color: Colors.black54,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.calendar_month_outlined,
              color: Colors.black54,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.chat_bubble_outline,
              color: Colors.black54,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.notifications_none_outlined,
              color: Colors.black54,
            ),
            label: '',
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: ListView(
            children: [
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.home, color: Color(0xfff9fd16)),
                        tooltip: 'Inicio',
                        onPressed: () {
                          Navigator.pushNamed(context, '/');
                        },
                      ),
                      const Text(
                        "Bienvenido,",
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      const Text(
                        "Randall Park",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      )
                    ],
                  ),
                  const CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.grey,
                    child: CircleAvatar(
                      radius: 28,
                      backgroundImage: AssetImage("assets/Blockbuster_1.jpg"),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 16,
                ),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 223, 200, 228),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      "assets/membresia.jpg",
                      width: 92,
                      height: 100,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Quieres mas ofertas?",
                          style: TextStyle(
                              color: Colors.black87,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        const SizedBox(
                          width: 120,
                          child: Text(
                            "Tramita tu membresia ahora!",
                            style: TextStyle(
                              color: Colors.black87,
                              fontSize: 12,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 150,
                          height: 35,
                          padding: const EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                              color: Colors.blueAccent,
                              borderRadius: BorderRadius.circular(12.0)),
                          child: const Center(
                            child: Text(
                              "¡Vamos!",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.only(left: 16),
                height: 64,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(95, 179, 173, 173),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Row(
                  children: const [
                    Icon(
                      Icons.search,
                      size: 32,
                      color: Colors.black54,
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Text(
                      "¿Qué estás buscando?",
                      style: TextStyle(
                        color: Colors.black54,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 60,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    SpecialistItem(
                      imagePath: "assets/peli.png",
                      imageName: "Acción",
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    SpecialistItem(
                      imagePath: "assets/serie.png",
                      imageName: "Series",
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    SpecialistItem(
                      imagePath: "assets/podcast.png",
                      imageName: "Podcast",
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    SpecialistItem(
                      imagePath: "assets/docu.png",
                      imageName: "Documental",
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Directores reconocidos",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    "Ver Todo",
                    style: TextStyle(
                      color: Colors.black45,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 225,
                child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: const [
                        DoctorItem(
                          image: "assets/martin.jpg",
                          name: "Martin Scorsese",
                          specialist: "80 Años",
                        ),
                        DoctorItem(
                          image: "assets/steven.jpg",
                          name: "Steven Spielberg",
                          specialist: "76 Años",
                        ),
                        DoctorItem(
                          image: "assets/lilly.jpg",
                          name: "Lilly Wachowski",
                          specialist: "55 Años",
                        ),
                        DoctorItem(
                          image: "assets/alfonso.jpg",
                          name: "Alfonso Cuaron",
                          specialist: "61 Años",
                        ),
                      ],
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
