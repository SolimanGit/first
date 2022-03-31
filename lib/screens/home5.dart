import 'package:flutter/material.dart';

class MyHomePage5 extends StatefulWidget {
  const MyHomePage5({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage5> createState() => _MyHomePage5State();
}

class _MyHomePage5State extends State<MyHomePage5> {
  List<String> list = [
    'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.istockphoto.com%2Ffr%2Fphotos%2Fjapon&psig=AOvVaw1DgrKSPvjotXmsu6x5NdW6&ust=1647686009448000&source=images&cd=vfe&ved=0CAgQjRxqFwoTCKjY1--6z_YCFQAAAAAdAAAAABAE',
    'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.istockphoto.com%2Ffr%2Fphotos%2Fjapon&psig=AOvVaw1DgrKSPvjotXmsu6x5NdW6&ust=1647686009448000&source=images&cd=vfe&ved=0CAgQjRxqFwoTCKjY1--6z_YCFQAAAAAdAAAAABAJ'
  ];
  @override
  Widget build(BuildContext context) {
    int img_index = 0;
    return Scaffold(
        body: Column(
      // mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
            Column(
              children: [
                const Text('Welcome'),
                SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        TextButton(
                          style: TextButton.styleFrom(
                              backgroundColor: Colors.grey[350]),
                          onPressed: () => {
                            setState(() {
                              img_index = 0;
                            })
                          },
                          child: const Text('Wow'),
                        ),
                        TextButton(
                          style: TextButton.styleFrom(
                              backgroundColor: Colors.grey[350]),
                          onPressed: () => {
                            setState(() {
                              img_index = 1;
                            })
                          },
                          child: const Text('Wow2'),
                        ),
                        TextButton(
                          style: TextButton.styleFrom(
                              backgroundColor: Colors.grey[350]),
                          onPressed: () => {
                            setState(() {
                              img_index = 2;
                            })
                          },
                          child: const Text('Wow2'),
                        ),
                      ],
                    ))
              ],
            )
          ],
        )
      ],
    ));
  }
}
