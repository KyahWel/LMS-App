import 'package:flutter/material.dart';
import 'package:lmsapp/pages/lessons/clesson.dart';

class MyCourses extends StatefulWidget {
  @override
  State<MyCourses> createState() => _MyCoursesState();
}

class _MyCoursesState extends State<MyCourses> {
  Widget clesson = ClessonPage();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(height: 40.0),
              Text(
                'My Courses',
                style: TextStyle(
                  fontSize: 35,
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
                      color:
                          Colors.grey.withOpacity(0.5), // Set the shadow color
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 2), // Set the shadow offset
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Learned today',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey, // Set the text color to gray
                      ),
                    ),
                    SizedBox(height: 4.0),
                    Text.rich(
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
                      child: LinearProgressIndicator(
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
                physics: NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                children: [
                  buildContainer('HTML 5', Color(0xFFF99B7D), Color(0xFFE76161),
                      0.58, '14/24', clesson),
                  buildContainer('Java', Color(0xFFACB1D6), Color(0xFF8294C4),
                      0.67, '12/18', clesson),
                  buildContainer(
                      'CSS', Color(0xFF3F72AF), Color(0xFF112D4E), 1, '15/15', clesson),
                  buildContainer('C++', Color(0xFF05BFDB), Color(0xFF088395),
                      0.9, '18/20', clesson),
                  buildContainer('PHP', Color(0xFF41644A), Color(0xFF263A29),
                      0.55, '10/18', clesson),
                  buildContainer('Python', Color(0xFFC9A7EB), Color(0xFF9384D1),
                      0.6, '18/30', clesson),
                  buildContainer('Bootstrap', Color(0xFFC9DBB2),
                      Color(0xFFAAC8A7), 0.8, '20/24', clesson),
                  buildContainer(
                      'C', Color(0xFFA2A378), Color(0xFF83764F), 0.17, '2/12', clesson),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildContainer(String text, Color containerColor, Color progressColor,
      double progressValue, String completionText, Widget dynamicWidget) {
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
                    SizedBox(height: 10),
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
                      Text(
                        'Completed',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.normal),
                      ),
                      Text(
                        completionText,
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 16.0,
                  right: 16.0,
                  child: FloatingActionButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) {
                            return const Scaffold(
                              body: ClessonPage(),
                            );  // Navigate to ClessonPage
                          },
                        ),
                      );
                    },
                    mini: true,
                    backgroundColor: progressColor, // Use progressColor as the background color
                    child: Icon(Icons.play_arrow),
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
