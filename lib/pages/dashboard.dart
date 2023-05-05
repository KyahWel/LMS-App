import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  height: 20.0,
                  color: Color(0xFF3D5CFF),
                ),
                Container(
                  color: const Color(0xFF3D5CFF),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(25.0, 10.0, 25.0, 60.0),
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
                        const SizedBox(height: 16),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: RichText(
                                textAlign: TextAlign.start,
                                text: const TextSpan(
                                  style: TextStyle(
                                    fontSize: 35,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: 'Hi, Student',
                                    ),
                                    TextSpan(
                                      text: "\nLet's start learning",
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.white,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(30.0, 75.0, 0.0, 0.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 200,
                          height: 110,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: const Color(0xFFA8CBFF),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(left: 5, top: 4),
                                child: Text(
                                  'What do you want to learn today',
                                  style: TextStyle(
                                    fontSize: 23,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 7),
                                child: ElevatedButton(
                                  onPressed: null,
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors
                                        .red, // set the desired background color here
                                  ),
                                  child: const Text('Get Started'),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 20),
                        // Add some spacing between the two containers
                        Container(
                          width: 200,
                          height: 110,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: const Color(0xFFA8CBFF),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30.0, 30.0, 0.0, 0.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: 145,
                        height: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: const Color(0xFF003E6D),
                        ),
                        child: Center(
                          child: RichText(
                            textAlign: TextAlign.center,
                            text: const TextSpan(
                              text: 'Total Courses Finished\n',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text: '3',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 50,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      // Add some spacing between the two containers
                      Container(
                        width: 145,
                        height: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: const Color(0xFF003E6D),
                        ),
                        child: Center(
                          child: RichText(
                            textAlign: TextAlign.center,
                            text: const TextSpan(
                              text: 'Total Courses Enrolled\n',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text: '15',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 50,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 180, top: 20),
                  child: Column(
                    children: const [
                      Text(
                        'My Courses',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(30.0, 10.0, 0.0, 0.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 200,
                          height: 110,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: const Color(0xFF003E6D),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                right: 10, top: 0, bottom: 10, left: 5),
                            child: Row(
                              children: [
                                Container(
                                  width: 70,
                                  height: 70,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: const Color(0xFF858597),
                                  ),
                                  child: Image.network(
                                    'https://upload.wikimedia.org/wikipedia/commons/thumb/6/61/HTML5_logo_and_wordmark.svg/640px-HTML5_logo_and_wordmark.svg.png',
                                    width: 50,
                                    height: 50,
                                  ),
                                ),
                                const SizedBox(width: 10),
                                Expanded(
                                  child: RichText(
                                    text: const TextSpan(
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      children: [
                                        TextSpan(text: 'HTML 5'),
                                        TextSpan(
                                          text: '\nProgress',
                                          style: TextStyle(
                                            fontSize: 10,
                                          ),
                                        ),
                                        TextSpan(
                                          text: '\n2/4',
                                          style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(width: 20),
                        // Add some spacing between the two containers
                        Container(
                          width: 200,
                          height: 110,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: const Color(0xFF003E6D),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                right: 10, top: 0, bottom: 10, left: 5),
                            child: Row(
                              children: [
                                Container(
                                  width: 70,
                                  height: 70,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: const Color(0xFF858597),
                                  ),
                                  child: Image.network(
                                    'https://upload.wikimedia.org/wikipedia/commons/thumb/6/6a/JavaScript-logo.png/800px-JavaScript-logo.png',
                                    width: 50,
                                    height: 50,
                                  ),
                                ),
                                const SizedBox(width: 10),
                                Expanded(
                                  child: RichText(
                                    text: const TextSpan(
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      children: [
                                        TextSpan(text: 'Javascript'),
                                        TextSpan(
                                          text: '\nProgress',
                                          style: TextStyle(
                                            fontSize: 10,
                                          ),
                                        ),
                                        TextSpan(
                                          text: '\n4/4',
                                          style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              top: 200,
              left: 30,
              right: 30,
              child: SizedBox(
                height: 110,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.5),
                        spreadRadius: 0,
                        blurRadius: 3,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              'Learned today',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.grey,
                              ),
                            ),
                            Text(
                              'My Courses',
                              style: TextStyle(
                                fontSize: 15,
                                color: Color(0xFF4A25DB),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 4),
                          child: Row(
                            children: const [
                              Text(
                                '46min',
                                style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 5),
                                child: Text(
                                  ' /60min',
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 3),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.grey[300],
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: const LinearProgressIndicator(
                                value: 0.75,
                                backgroundColor: Colors.transparent,
                                valueColor:
                                    AlwaysStoppedAnimation<Color>(Colors.blue),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
