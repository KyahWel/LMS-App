import 'package:flutter/material.dart';
import 'package:lmsapp/pages/widgets/mainPage.dart';

class ClessonPage extends StatelessWidget {
  const ClessonPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 40.0,),
          Row(
            children: [
              Row(
                children: [
                  Card(
                    elevation: 8.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24.0),
                    ),
                    child: Container(
                      height: 70.0,
                      width: 90,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24.0),
                        color: const Color(0xFF003E6D), // set the background color here
                      ),
                      child: Row(
                        children: const [
                          SizedBox(width: 25.0),
                          Text(
                            '1/5',
                            style: TextStyle(
                              fontSize: 28.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16 , width: 200,),
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
            ],
          ),
          Card(
            elevation: 8.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24.0),
            ),
            child: Container(
              height: 100.0,
              width: 380,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24.0),
                color: const Color(0xFF003E6D), // set the background color here
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Image.network(
                      'https://upload.wikimedia.org/wikipedia/commons/thumb/1/18/C_Programming_Language.svg/1200px-C_Programming_Language.svg.png',
                      width: 80,
                      height: 80,
                    ),
                  ),
                  const Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Introducing C',
                          style: TextStyle(
                            fontSize: 28.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  RichText(
                    textAlign: TextAlign.justify,
                    text: const TextSpan(
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Color(0xFF003E6D),
                        fontWeight: FontWeight.bold,
                      ),
                      children: [
                        TextSpan(
                          text:
                          'C is a general-purpose programming language that has been around for nearly 50 years.',
                        ),
                        TextSpan(
                          text:
                          '\n\nC has been used to write everything from operating systems (including Windows and many others) to complex programs like the Python interpreter, Git, Oracle database, and more.',
                        ),
                        TextSpan(
                          text:
                          '\n\nThe versatility of C is by design. It is a low-level language that relates closely to the way machines work while still being easy to learn.',
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 32.0),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute<void>(
                        builder: (BuildContext context) {
                          return const Scaffold(
                            body: ClessonPage2(),
                          );
                        },
                      ));
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(const Color(0xFF003E6D)),
                      foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                      padding: MaterialStateProperty.all<EdgeInsets>(
                          const EdgeInsets.symmetric(vertical: 23.0, horizontal: 130.0)
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24.0),
                        ),
                      ),
                    ),
                    child: const Text(
                      'Continue',
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ClessonPage2 extends StatelessWidget {
  const ClessonPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 40.0,),
          Row(
            children: [
              Row(
                children: [
                  Card(
                    elevation: 8.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24.0),
                    ),
                    child: Container(
                      height: 70.0,
                      width: 90,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24.0),
                        color: const Color(0xFF003E6D), // set the background color here
                      ),
                      child: Row(
                        children: const [
                          SizedBox(width: 25.0),
                          Text(
                            '2/5',
                            style: TextStyle(
                              fontSize: 28.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16 , width: 200,),
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
            ],
          ),
          Card(
            elevation: 8.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24.0),
            ),
            child: Container(
              height: 100.0,
              width: 380,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24.0),
                color: const Color(0xFF003E6D), // set the background color here
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Image.network(
                      'https://upload.wikimedia.org/wikipedia/commons/thumb/1/18/C_Programming_Language.svg/1200px-C_Programming_Language.svg.png',
                      width: 80,
                      height: 80,
                    ),
                  ),
                  const Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Hello World!',
                          style: TextStyle(
                            fontSize: 28.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  const Text(
                    textAlign: TextAlign.justify,
                    'As when learning any new language, the place to start is with the classic "Hello World!" program:',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Color(0xFF003E6D),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 350,
                    width: 500,
                    child: Image.network('https://www.fayewilliams.com/wp-content/uploads/2014/12/gedit_hello_world.jpg'),
                  ),
                  RichText(
                    textAlign: TextAlign.justify,
                    text: const TextSpan(
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Color(0xFF003E6D),
                        fontWeight: FontWeight.bold,
                      ),
                      children: [
                        TextSpan(
                          text: 'Lets break down the code to understand each line:\n\n#include <stdio.h> The function used for generating output is defined in stdio.h. In order to use the printf function, we need to first include the required file, also called a header file.\n',
                        ),
                        TextSpan(
                          text: '\nint main() The main() function is the entry point to a program. Curly brackets { } indicate the beginning and end of a function (also called a code block). The statements inside the brackets determine what the function does when executed.\n',
                        ),
                        TextSpan(
                          text: '\nThe print function is used to generate output',
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 350,
                    width: 500,
                    child: Image.network('https://i.pinimg.com/originals/a0/20/0d/a0200d8de9b8046270ab92af9ef47b6f.png'),
                  ),
                  RichText(
                    textAlign: TextAlign.justify,
                    text: const TextSpan(
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Color(0xFF003E6D),
                        fontWeight: FontWeight.bold,
                      ),
                      children: [
                        TextSpan(
                          text: 'Lets break down the code to understand each line:\n\n#include <stdio.h> The function used for generating output is defined in stdio.h. In order to use the printf function, we need to first include the required file, also called a header file.\n\n',
                        ),
                        TextSpan(
                          text: 'int main() The main() function is the entry point to a program. Curly brackets { } indicate the beginning and end of a function (also called a code block). The statements inside the brackets determine what the function does when executed.\n\n',
                        ),
                        TextSpan(
                          text: 'The print function is used to generate output\n\n',
                        ),
                        TextSpan(
                          text: 'Here, we pass the text "Hello World!" to it. The In escape sequence outputs a newline character. Escape sequences always begin with a backslash \\. The semicolon; indicates the end of the statement. Each statement must end with a semicolon.\n\n',
                        ),
                        TextSpan(
                          text: 'return 0; This statement terminates the main () function and returns the value O to the calling process. The number O generally means that our program has successfully executed. Any other number indicates that the program has failed.',
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute<void>(
                        builder: (BuildContext context) {
                          return const Scaffold(
                            body: ClessonPage3(),
                          );
                        },
                      ));
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(const Color(0xFF003E6D)),
                      foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                      padding: MaterialStateProperty.all<EdgeInsets>(
                          const EdgeInsets.symmetric(vertical: 23.0, horizontal: 130.0)
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24.0),
                        ),
                      ),
                    ),
                    child: const Text(
                      'Continue',
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                  const SizedBox(height: 32.0),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}


class ClessonPage3 extends StatelessWidget {
  const ClessonPage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 40.0,),
          Row(
            children: [
              Row(
                children: [
                  Card(
                    elevation: 8.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24.0),
                    ),
                    child: Container(
                      height: 70.0,
                      width: 90,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24.0),
                        color: const Color(0xFF003E6D), // set the background color here
                      ),
                      child: Row(
                        children: const [
                          SizedBox(width: 25.0),
                          Text(
                            '3/5',
                            style: TextStyle(
                              fontSize: 28.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16 , width: 200,),
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
            ],
          ),
          Card(
            elevation: 8.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24.0),
            ),
            child: Container(
              height: 100.0,
              width: 380,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24.0),
                color: const Color(0xFF003E6D), // set the background color here
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Image.network(
                      'https://upload.wikimedia.org/wikipedia/commons/thumb/1/18/C_Programming_Language.svg/1200px-C_Programming_Language.svg.png',
                      width: 80,
                      height: 80,
                    ),
                  ),
                  const Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Data Types',
                          style: TextStyle(
                            fontSize: 28.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  RichText(
                    textAlign: TextAlign.justify,
                    text: const TextSpan(
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Color(0xFF003E6D),
                        fontWeight: FontWeight.bold,
                      ),
                      text: 'C supports the following basic data types:',
                      children: [
                        TextSpan(
                          text: '\n\n• int: integer, a whole number.',
                        ),
                        TextSpan(
                          text: '\n• float: floating point, a number with a fractional part.',
                        ),
                        TextSpan(
                          text: '\n• double: double-precision floating point value.',
                        ),
                        TextSpan(
                          text: '\n• char: single character.',
                        ),
                        TextSpan(
                          text:
                          '\n\nThe amount of storage required for each of these types varies by platform. C has a built-in sizeof operator that gives the memory requirements for a particular data type.',
                        ),
                        TextSpan(
                          text: '\n\nFor Example:',
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  SizedBox(
                    height: 350,
                    width: 500,
                    child: Image.network('https://i.ytimg.com/vi/APXQzZR9dM4/maxresdefault.jpg'),
                  ),
                  RichText(
                    textAlign: TextAlign.justify,
                    text: const TextSpan(
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Color(0xFF003E6D),
                        fontWeight: FontWeight.bold,
                      ),
                      text: 'The program output displays the corresponding size in bytes for each data type.',
                      children: [
                        TextSpan(
                          text: 'The print statements in this program have two arguments. The first is the output string with a format specifier (%ld), while the next argument returns the sizeof value. In the final output, the %ld (for long decimal) is replaced by the value in the second argument.',
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 30),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute<void>(
                        builder: (BuildContext context) {
                          return const Scaffold(
                            body: ClessonPage4(),
                          );
                        },
                      ));
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(const Color(0xFF003E6D)),
                      foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                      padding: MaterialStateProperty.all<EdgeInsets>(
                          const EdgeInsets.symmetric(vertical: 23.0, horizontal: 130.0)
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24.0),
                        ),
                      ),
                    ),
                    child: const Text(
                      'Continue',
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}



class ClessonPage4 extends StatelessWidget {
  const ClessonPage4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 40.0,),
          Row(
            children: [
              Row(
                children: [
                  Card(
                    elevation: 8.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24.0),
                    ),
                    child: Container(
                      height: 70.0,
                      width: 90,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24.0),
                        color: const Color(0xFF003E6D), // set the background color here
                      ),
                      child: Row(
                        children: const [
                          SizedBox(width: 25.0),
                          Text(
                            '4/5',
                            style: TextStyle(
                              fontSize: 28.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16 , width: 200,),
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
            ],
          ),
          Card(
            elevation: 8.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24.0),
            ),
            child: Container(
              height: 100.0,
              width: 380,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24.0),
                color: const Color(0xFF003E6D), // set the background color here
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Image.network(
                      'https://upload.wikimedia.org/wikipedia/commons/thumb/1/18/C_Programming_Language.svg/1200px-C_Programming_Language.svg.png',
                      width: 80,
                      height: 80,
                    ),
                  ),
                  const Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Input',
                          style: TextStyle(
                            fontSize: 28.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  const SizedBox(height: 16.0),
                  RichText(
                    textAlign: TextAlign.justify,
                    text: const TextSpan(
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Color(0xFF003E6D),
                        fontWeight: FontWeight.bold,
                      ),
                      children: [
                        TextSpan(
                          text: 'C supports a number of ways for taking user input. getchar() Returns the value of the next single character input.',
                        ),
                        TextSpan(
                          text: '\n\nFor Example:',
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                  SizedBox(
                    height: 350,
                    width: 500,
                    child: Image.network('https://easycodebook.com/wp-content/uploads/2019/06/array-of-numbers-input-output-c-code.jpg'),
                  ),
                  const SizedBox(height: 16.0),
                  RichText(
                    textAlign: TextAlign.justify,
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: 'The input is stored in the variable a',
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Color(0xFF003E6D),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: '\n\nThe gets() function is used to read input as an ordered sequence of characters, also called a string. A string is stored in a char array',
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Color(0xFF003E6D),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: '\n\nFor Example:',
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Color(0xFF003E6D),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 1.0),
                  SizedBox(
                    height: 350,
                    width: 500,
                    child: Image.network('https://i.ytimg.com/vi/-rNW_rpkuoQ/maxresdefault.jpg'),
                  ),
                  const SizedBox(height: 8.0),
                  const Text(
                    textAlign: TextAlign.justify,
                    'scanf() scans input that matches format specifiers',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Color(0xFF003E6D),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  SizedBox(
                    height: 350,
                    width: 500,
                    child: Image.network('https://i0.wp.com/erpconsultors.com/wp-content/uploads/2022/02/Sample-C-language-code-for-scanf.png?resize=553%2C311&ssl=1'),
                  ),
                  const SizedBox(height: 16.0),
                  RichText(
                    textAlign: TextAlign.justify,
                    text: const TextSpan(
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Color(0xFF003E6D),
                        fontWeight: FontWeight.bold,
                      ),
                      children: [
                        TextSpan(
                          text: 'The & sign before the variable name is the address operator. ',
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Color(0xFF003E6D),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: 'It gives the address, or location in memory, of a variable. ',
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Color(0xFF003E6D),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: 'This is needed because scanf places an input value at a variable address',
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Color(0xFF003E6D),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: '\n\nAs another example, let’s prompt for two integer inputs and output their sum:',
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Color(0xFF003E6D),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  SizedBox(
                    height: 350,
                    width: 500,
                    child: Image.network('https://2.bp.blogspot.com/-qd8edRcx4U0/WhvSLEcLT8I/AAAAAAAAAZk/tRg18ptDHuQT-p4tCtXO56j1GmxuRUWEACLcBGAs/s1600/Screenshot%2B%2528108%2529.png'),
                  ),
                  const SizedBox(height: 16.0),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute<void>(
                        builder: (BuildContext context) {
                          return const Scaffold(
                            body: ClessonPage5(),
                          );
                        },
                      ));
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(const Color(0xFF003E6D)),
                      foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                      padding: MaterialStateProperty.all<EdgeInsets>(
                          const EdgeInsets.symmetric(vertical: 23.0, horizontal: 130.0)
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24.0),
                        ),
                      ),
                    ),
                    child: const Text(
                      'Continue',
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}


class ClessonPage5 extends StatelessWidget {
  const ClessonPage5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 40.0,),
          Row(
            children: [
              Row(
                children: [
                  Card(
                    elevation: 8.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24.0),
                    ),
                    child: Container(
                      height: 70.0,
                      width: 90,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24.0),
                        color: const Color(0xFF003E6D), // set the background color here
                      ),
                      child: Row(
                        children: const [
                          SizedBox(width: 25.0),
                          Text(
                            '5/5',
                            style: TextStyle(
                              fontSize: 28.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16 , width: 200,),
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
            ],
          ),
          Card(
            elevation: 8.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24.0),
            ),
            child: Container(
              height: 100.0,
              width: 380,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24.0),
                color: const Color(0xFF003E6D), // set the background color here
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Image.network(
                      'https://upload.wikimedia.org/wikipedia/commons/thumb/1/18/C_Programming_Language.svg/1200px-C_Programming_Language.svg.png',
                      width: 80,
                      height: 80,
                    ),
                  ),
                  const Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Comments',
                          style: TextStyle(
                            fontSize: 28.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  RichText(
                    textAlign: TextAlign.justify,
                    text: const TextSpan(
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Color(0xFF003E6D),
                        fontWeight: FontWeight.bold,
                      ),
                      children: [
                        TextSpan(
                          text: 'Comments are explanatory information that you can include in a program to benefit the reader of your code. The compiler ignores comments, so they have no affect on a program.\n\n',
                        ),
                        TextSpan(
                          text: 'A comment starts with a slash asterisk /* and ends with an asterisk slash */ and can be anywhere in your code. Comments can be on the same line as statement, or they can span several lines.\n',
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  SizedBox(
                    height: 350,
                    width: 500,
                    child: Image.network('https://www.tutorialgateway.org/wp-content/uploads/Comments-in-C-2.png?ezimgfmt=ng:webp/ngcb222'),
                  ),
                  const SizedBox(height: 16.0),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute<void>(
                        builder: (BuildContext context) {
                          return const Scaffold(
                            body: mainPage(),
                          );
                        },
                      ));
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(const Color(0xFF003E6D)),
                      foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                      padding: MaterialStateProperty.all<EdgeInsets>(
                          const EdgeInsets.symmetric(vertical: 23.0, horizontal: 130.0)
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24.0),
                        ),
                      ),
                    ),
                    child: const Text(
                      'Finished',
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}