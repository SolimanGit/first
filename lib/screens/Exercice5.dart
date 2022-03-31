import 'package:flutter/material.dart';

class Exercice5 extends StatefulWidget {
  const Exercice5({Key? key}) : super(key: key);

  @override
  State<Exercice5> createState() => _Exercice5();
}

class _Exercice5 extends State<Exercice5> {
  int currentIndex = 0;
  List<String> list = [
    'https://images.unsplash.com/photo-1647531041383-fe7103712f16?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
    'https://images.unsplash.com/photo-1647533533485-39b9cbfa8a36?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=686&q=80'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Wow'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text('Welcome',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              const SizedBox(
                height: 25,
              ),
              SizedBox(
                height: 40,
                child: Expanded(
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: list.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            currentIndex = index;
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: currentIndex == index
                                  ? Colors.black
                                  : Colors.grey,
                            ),
                            child: Center(
                              child: Text(
                                'Image ${index + 1}',
                                style: TextStyle(
                                  color: currentIndex == index
                                      ? Colors.white
                                      : Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 4,
                        offset: Offset(
                          0.0,
                          4,
                        ),
                      )
                    ],
                    image: DecorationImage(
                      image: NetworkImage(list[currentIndex]),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(
                      10,
                    ),
                  ),
                  height: 400,
                  width: 275,
                ),
              ),
            ],
          ),
        ));
  }
}
