import 'package:flutter/material.dart';

class Exercice7 extends StatelessWidget {
  const Exercice7({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 16),
      child: Column(
        children: [
          const Text(
            'Profile',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Center(
            child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.5,
                width: MediaQuery.of(context).size.width * 0.8,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(24),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: const Offset(0, 5),
                        )
                      ]),
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Container(
                            height: 100,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(24),
                                  topRight: Radius.circular(24)),
                              // borderRadius: BorderRadius.all(Radius.circular(24)),
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                      'https://images.unsplash.com/photo-1525014341625-f264f9291dde?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2048&q=80')),
                            ),
                          ),
                          Column(
                            children: [
                              const SizedBox(
                                height: 50,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                      height: 100,
                                      width: 100,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.white,
                                          border: Border.all(
                                              color: Colors.white, width: 3.0),
                                          image: const DecorationImage(
                                              fit: BoxFit.cover,
                                              image: NetworkImage(
                                                  'https://images.unsplash.com/photo-1531891437562-4301cf35b7e4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1064&q=80')))),
                                  const Padding(
                                    padding: EdgeInsets.only(top: 50),
                                    child:
                                        Text('Soliman, Bali\n Paris, France'),
                                  )
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                      Column(
                        children: const [
                          ListTile(
                            leading: Icon(Icons.work),
                            title: Text('Inovefa'),
                          ),
                          ListTile(
                            leading: Icon(Icons.school),
                            title: Text('Alternant développeur Fullstack'),
                          )
                        ],
                      )
                    ],
                  ),
                )),
          ),
        ],
      ),
    ));
  }
}
