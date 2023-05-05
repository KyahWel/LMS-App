import 'package:flutter/material.dart';
import 'package:lmsapp/pages/coursesMarket/python.dart';
import 'package:lmsapp/pages/coursesMarket/java.dart';
import 'package:lmsapp/pages/coursesMarket/flutter.dart';
import 'package:lmsapp/pages/coursesMarket/tensorflow.dart';

const TextStyle headerStyle = TextStyle(
  fontSize: 40,
  fontWeight: FontWeight.bold,
  color: Colors.black,
);

class ListCourses extends StatefulWidget {
  const ListCourses({super.key});

  @override
  State<ListCourses> createState() => _ListCoursesState();
}

class _ListCoursesState extends State<ListCourses> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          Container(
            height: 30.0,
            color: const Color(0xFF3D5CFF),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    SizedBox(
                      width: 90.0,
                      height: 90.0,
                      child: Icon(
                        Icons.account_circle,
                        size: 71.0,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                  child: Row(
                    children: const <Widget>[
                      Text('Course', style: headerStyle),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    style: const TextStyle(color: Colors.white, fontSize: 20),
                    decoration: InputDecoration(
                      labelText: 'Search',
                      contentPadding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                      labelStyle:
                          const TextStyle(color: Colors.black, fontSize: 20),
                      border: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 3, color: Color(0xFF3D5CFF)),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 20, 0),
                    child: Row(
                      children: [
                        Container(
                          width: 220,
                          height: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: const Color.fromARGB(255, 164, 164, 230),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Image.network(
                                  'https://upload.wikimedia.org/wikipedia/commons/thumb/6/61/HTML5_logo_and_wordmark.svg/640px-HTML5_logo_and_wordmark.svg.png',
                                  width: 60,
                                  height: 60,
                                ),
                                const SizedBox(width: 5),
                                const Text(
                                  'HTML',
                                  style: TextStyle(
                                      fontSize: 40,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                  textAlign: TextAlign.center,
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Container(
                          width: 220,
                          height: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: const Color.fromARGB(255, 230, 164, 164),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Image.network(
                                  'https://assets.stickpng.com/images/58480979cef1014c0b5e4901.png',
                                  width: 60,
                                  height: 60,
                                ),
                                const SizedBox(width: 5),
                                const Text(
                                  'JAVA',
                                  style: TextStyle(
                                      fontSize: 40,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                )
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          width: 220,
                          height: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: const Color.fromARGB(255, 164, 230, 178),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Image.network(
                                  'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c3/Python-logo-notext.svg/1869px-Python-logo-notext.svg.png',
                                  width: 60,
                                  height: 60,
                                ),
                                const SizedBox(width: 5),
                                const Text(
                                  'PYTHON',
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                  child: Row(
                    children: const <Widget>[
                      Text(
                        'Choose your course',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        height: 40, //height of button
                        width: 80,
                        child: ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              'ALL',
                            ),
                            style: ButtonStyle(
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                            )))),
                      ),
                      SizedBox(
                        height: 40, //height of button
                        width: 95,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            'POPULAR',
                          ),
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all<Color>(Colors.grey),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                      side: BorderSide(color: Colors.grey)))),
                        ),
                      ),
                      SizedBox(
                        height: 40, //height of button
                        width: 80,
                        child: ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              'NEW',
                            ),
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.grey),
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(18.0),
                                        side:
                                            BorderSide(color: Colors.grey))))),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                InkWell(
                  child: Container(
                    width: 320,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color.fromARGB(255, 0, 62, 109),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
                      child: Row(
                        children: [
                          Image.network(
                            'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c3/Python-logo-notext.svg/1869px-Python-logo-notext.svg.png',
                            width: 60,
                            height: 60,
                          ),
                          SizedBox(width: 20),
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'PYTHON',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                const Text(
                                  'Prof. Angelo Edrosa',
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                const SizedBox(height: 5),
                                Row(
                                  children: const <Widget>[
                                    Text(
                                      'PHP500',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.orange),
                                    ),
                                    SizedBox(width: 5),
                                    Text(
                                      '12 hours',
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute<void>(
                      builder: (BuildContext context) {
                        return Scaffold(
                          appBar: PreferredSize(
                            preferredSize: Size.fromHeight(60.0),
                            child: AppBar(
                                title: const Text('Course Details'),
                                elevation: 0,
                                backgroundColor:
                                    Color.fromARGB(255, 0, 62, 109)),
                          ),
                          body: const pythonMarket(),
                        );
                      },
                    ));
                  },
                ),
                SizedBox(height: 10),
                InkWell(
                  child: Container(
                    width: 320,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color.fromARGB(255, 0, 62, 109),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
                      child: Row(
                        children: [
                          Image.network(
                            'https://assets.stickpng.com/thumbs/58480979cef1014c0b5e4901.png',
                            width: 60,
                            height: 60,
                          ),
                          SizedBox(width: 20),
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'BASIC JAVA',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                const Text(
                                  'Prof. Kenneth Brondial',
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                const SizedBox(height: 5),
                                Row(
                                  children: const <Widget>[
                                    Text(
                                      'PHP700',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.orange),
                                    ),
                                    SizedBox(width: 5),
                                    Text(
                                      '16 hours',
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute<void>(
                      builder: (BuildContext context) {
                        return Scaffold(
                          appBar: PreferredSize(
                            preferredSize: Size.fromHeight(60.0),
                            child: AppBar(
                                title: const Text('Course Details'),
                                elevation: 0,
                                backgroundColor:
                                    Color.fromARGB(255, 0, 62, 109)),
                          ),
                          body: const javaMarket(),
                        );
                      },
                    ));
                  },
                ),
                const SizedBox(height: 10),
                InkWell(
                  child: Container(
                    width: 320,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color.fromARGB(255, 0, 62, 109),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
                      child: Row(
                        children: [
                          Image.network(
                            'https://static-00.iconduck.com/assets.00/flutter-icon-1651x2048-ojswpayr.png',
                            width: 60,
                            height: 60,
                          ),
                          SizedBox(width: 20),
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'FLUTTER',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                const Text(
                                  'Prof. Franco De Guzman',
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                const SizedBox(height: 5),
                                Row(
                                  children: const <Widget>[
                                    Text(
                                      'PHP500',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.orange),
                                    ),
                                    SizedBox(width: 5),
                                    Text(
                                      '12 hour',
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute<void>(
                      builder: (BuildContext context) {
                        return Scaffold(
                            appBar: PreferredSize(
                              preferredSize: Size.fromHeight(60.0),
                              child: AppBar(
                                  title: const Text('Course Details'),
                                  elevation: 0,
                                  backgroundColor:
                                      const Color.fromARGB(255, 0, 62, 109)),
                            ),
                            body: const flutterMarket());
                      },
                    ));
                  },
                ),
                const SizedBox(height: 10),
                InkWell(
                  child: Container(
                    width: 320,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color.fromARGB(255, 0, 62, 109),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
                      child: Row(
                        children: [
                          Image.network(
                            'https://upload.wikimedia.org/wikipedia/commons/thumb/2/2d/Tensorflow_logo.svg/1200px-Tensorflow_logo.svg.png',
                            width: 60,
                            height: 60,
                          ),
                          SizedBox(width: 20),
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'TENSORFLOW',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                const Text(
                                  'Prof. William Hod',
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                const SizedBox(height: 5),
                                Row(
                                  children: const <Widget>[
                                    Text(
                                      'PHP1500',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.orange),
                                    ),
                                    SizedBox(width: 5),
                                    Text(
                                      '48 hour',
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute<void>(
                      builder: (BuildContext context) {
                        return Scaffold(
                            appBar: PreferredSize(
                              preferredSize: Size.fromHeight(60.0),
                              child: AppBar(
                                  title: const Text('Course Details'),
                                  elevation: 0,
                                  backgroundColor:
                                      const Color.fromARGB(255, 0, 62, 109)),
                            ),
                            body: const tensorflowMarket());
                      },
                    ));
                  },
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
