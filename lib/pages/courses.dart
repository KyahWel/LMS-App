import 'package:flutter/material.dart';
import 'package:lmsapp/pages/lessons/clesson.dart';
import 'package:lmsapp/pages/lessons/htmlesson.dart';
import 'package:lmsapp/pages/lessons/csslesson.dart';
import 'package:lmsapp/pages/lessons/javalesson.dart';
import 'package:lmsapp/pages/lessons/phplesson.dart';
import 'package:lmsapp/pages/lessons/bootstrap.dart';

class MyCourses extends StatefulWidget {
  @override
  State<MyCourses> createState() => _MyCoursesState();
}

class _MyCoursesState extends State<MyCourses> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Text(
              'My Courses',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Container(
              margin: EdgeInsets.all(8.0),
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.white, // Set the background color to white
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5), // Set the shadow color
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 2), // Set the shadow offset
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Learned today',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey, // Set the text color to gray
                    ),
                  ),
                  const SizedBox(height: 4.0),
                  const Text.rich(
                    TextSpan(
                      text: '46 mins',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      children: [
                        TextSpan(
                          text: ' /60 mins',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: const LinearProgressIndicator(
                      value: 0.77,
                      minHeight: 10,
                      backgroundColor: Colors.grey,
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
                    ),
                  ),
                ],
              ),
            ),
            GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              children: [
                buildContainer(
                    'C',
                    const Color(0xFFA2A378),
                    const Color(0xFF83764F),
                    0.58,
                    '14/24',
                    ClessonPage(),
                    'Cpage'),
                buildContainer(
                    'HTML 5',
                    const Color(0xFFF99B7D),
                    const Color(0xFFE76161),
                    0.67,
                    '12/18',
                    htmlLessonPage(), //class name ng page
                    'htmlessonPage'),
                buildContainer(
                    'Java',
                    const Color(0xFFACB1D6),
                    const Color(0xFF8294C4),
                    0.67,
                    '12/18',
                    javaLessonPage(),
                    'javaLessonPage'),
                buildContainer(
                    'CSS',
                    const Color(0xFF3F72AF),
                    const Color(0xFF112D4E),
                    .9,
                    '17/18',
                    cssLessonPage(),
                    'htmlessonPage'),
                buildContainer(
                    'PHP',
                    const Color(0xFF41644A),
                    const Color(0xFF263A29),
                    .5,
                    '9/18',
                    phpLessonPage(),
                    'phpLessonPage'),
                buildContainer(
                    'Bootstrap',
                    const Color(0xFFC9DBB2),
                    const Color(0xFFAAC8A7),
                    .8,
                    '16/18',
                    bootstrapLessonPage(),
                    'bootstrapLessonPage'),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildContainer(
    String text,
    Color containerColor,
    Color progressColor,
    double progressValue,
    String completionText,
    Widget page,
    String tag,
  ) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: containerColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            borderRadius: BorderRadius.circular(10),
            onTap: () {
              // Handle container tap
            },
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Text(
                        text,
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: LinearProgressIndicator(
                          value: progressValue,
                          minHeight: 10,
                          backgroundColor: Colors.white,
                          valueColor:
                              AlwaysStoppedAnimation<Color>(progressColor),
                        ),
                      ),
                    ),
                  ],
                ),
                Positioned(
                  bottom: 35.0,
                  left: 16.0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Completed',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.normal),
                      ),
                      Text(
                        completionText,
                        style: const TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 16.0,
                  right: 16.0,
                  child: FloatingActionButton(
                    heroTag: tag,
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute<void>(
                        builder: (BuildContext context) {
                          return page;
                        },
                      ));
                    },
                    mini: true,
                    backgroundColor:
                        progressColor, // Use progressColor as the background color
                    child: const Icon(Icons.play_arrow),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
