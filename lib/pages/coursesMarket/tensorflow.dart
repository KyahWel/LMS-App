import 'package:flutter/material.dart';
import 'package:lmsapp/pages/coursesPayment/CheckoutTensorflow.dart';

class tensorflowMarket extends StatefulWidget {
  const tensorflowMarket({super.key});

  @override
  State<tensorflowMarket> createState() => _tensorflowMarketState();
}

class _tensorflowMarketState extends State<tensorflowMarket> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 400,
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Row(
                      children: [
                        Image.network(
                          'https://upload.wikimedia.org/wikipedia/commons/thumb/2/2d/Tensorflow_logo.svg/1200px-Tensorflow_logo.svg.png',
                          width: 100,
                          height: 100,
                        ),
                        const SizedBox(width: 10),
                        Padding(
                          padding: const EdgeInsets.only(top: 40),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const <Widget>[
                              Text(
                                'TENSORFLOW',
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 0, 62, 109),
                                ),
                              ),
                              Text(
                                'Prof. William Hod',
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 0, 62, 109),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            const Text('About this course',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 0, 62, 109),
                                )),
                            const Text(
                                '''Lorem ipsum dolor sit amet, consectetur adipiscing 
elit, sed do eiusmod tempor incididunt ut labore et 
dolore magna aliqua. Ut enim ad minim veniam, quis
nostrud exercitation ullamco laboris nisi ut aliquip
ex ea commodo consequat. Duis aute irure dolor in 
reprehenderit in voluptate velit esse cillum dolore 
eu fugiat nulla pariatur. Excepteur sint occaecat 
cupidatat non proident, sunt in culpa qui officia
deserunt mollit anim id est laborum.''',
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Color.fromARGB(255, 0, 62, 109),
                                )),
                            const SizedBox(height: 20),
                            Container(
                              width: 320,
                              height: 100,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: const Color.fromARGB(255, 0, 62, 109),
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(20, 15, 20, 10),
                                child: Row(
                                  children: <Widget>[
                                    Column(
                                      children: const <Widget>[
                                        Text("Lesson",
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                            )),
                                        Text("01",
                                            style: TextStyle(
                                              fontSize: 40,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                            )),
                                      ],
                                    ),
                                    const SizedBox(width: 15),
                                    const Text("Welcome to the Course",
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        )),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),
                            Container(
                              width: 320,
                              height: 100,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: const Color.fromARGB(255, 0, 62, 109),
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(20, 15, 20, 10),
                                child: Row(
                                  children: <Widget>[
                                    Column(
                                      children: const <Widget>[
                                        Text("Lesson",
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                            )),
                                        Text("02",
                                            style: TextStyle(
                                              fontSize: 40,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                            )),
                                      ],
                                    ),
                                    const SizedBox(width: 15),
                                    const Text("Basic Syntax",
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        )),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),
                            Container(
                              width: 320,
                              height: 100,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: const Color.fromARGB(255, 0, 62, 109),
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(20, 15, 20, 10),
                                child: Row(
                                  children: <Widget>[
                                    Column(
                                      children: const <Widget>[
                                        Text("Lesson",
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                            )),
                                        Text("03",
                                            style: TextStyle(
                                              fontSize: 40,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                            )),
                                      ],
                                    ),
                                    const SizedBox(width: 15),
                                    const Text("Variables",
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        )),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),
                            Container(
                              width: 320,
                              height: 100,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: const Color.fromARGB(255, 0, 62, 109),
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(20, 15, 20, 10),
                                child: Row(
                                  children: <Widget>[
                                    Column(
                                      children: const <Widget>[
                                        Text("Lesson",
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                            )),
                                        Text("04",
                                            style: TextStyle(
                                              fontSize: 40,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                            )),
                                      ],
                                    ),
                                    const SizedBox(width: 15),
                                    const Text("Data Types",
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        )),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),
                            Container(
                              width: 320,
                              height: 100,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: const Color.fromARGB(255, 0, 62, 109),
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(20, 15, 20, 10),
                                child: Row(
                                  children: <Widget>[
                                    Column(
                                      children: const <Widget>[
                                        Text("Lesson",
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                            )),
                                        Text("05",
                                            style: TextStyle(
                                              fontSize: 40,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                            )),
                                      ],
                                    ),
                                    const SizedBox(width: 15),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: const <Widget>[
                                        Text("Conditional",
                                            style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                            )),
                                        Text("Statements",
                                            style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                            )),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 20),
                            InkWell(
                              child: Container(
                                width: 320,
                                height: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: const Color.fromARGB(255, 0, 62, 109),
                                ),
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(30, 10, 30, 10),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: const <Widget>[
                                      Icon(
                                        Icons.shopping_cart,
                                        color: Colors.white,
                                        size: 24.0,
                                        semanticLabel:
                                            'Text to announce in accessibility modes',
                                      ),
                                      SizedBox(width: 20),
                                      Text(
                                        'BUY NOW',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute<void>(
                                  builder: (BuildContext context) {
                                    return Scaffold(
                                      appBar: PreferredSize(
                                        preferredSize:
                                            const Size.fromHeight(60.0),
                                        child: AppBar(
                                            title: const Text('Checkout'),
                                            elevation: 0,
                                            backgroundColor: Color.fromARGB(
                                                255, 0, 62, 109)),
                                      ),
                                      body: const CheckoutTensorflowPage(),
                                    );
                                  },
                                ));
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ]),
        ),
      ),
    );
  }
}
