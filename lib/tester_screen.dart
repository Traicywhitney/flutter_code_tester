import 'package:flutter/material.dart';

class CodingTestScreen extends StatefulWidget {
  const CodingTestScreen({super.key});

  @override
  State<CodingTestScreen> createState() => _CodingTestScreenState();
}

class _CodingTestScreenState extends State<CodingTestScreen> {
  final TextEditingController _codeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Coding Test App',
          style: TextStyle(fontSize: 20),
        ),
        backgroundColor: Color(0xFFB2D2A4),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Problem Statement',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  height: 300,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Color(0xFFB2D2A4),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      // This creates an outline border
                      color: Colors.grey, // Border color
                      width: 1.0, // Border width
                    ),
                  ),
                  child: Text(
                    'Design a straightforward Flutter app for note-taking, featuring easy creation,'
                    'editing, and categorization of notes. With intuitive navigation and basic text formatting,'
                    'the app aims to simplify capturing and organizing thoughts, prioritizing user productivity and convenience.',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Write Your Code Below',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Expanded(
              child: TextField(
                controller: _codeController,
                maxLines: null,
                decoration: InputDecoration(
                  hintText: 'Write your code here',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFFB2D2A4),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 5),
            ElevatedButton(
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(color: Color(0xFFB2D2A4)), // Outline color
                  ),
                ),
              ),
              onPressed: () {
                // Mock functionality for code submission
                String code = _codeController.text;
                print('Submitted code: $code');
              },
              child: Text(
                'Submit',
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Plagiarism Warning: Plagiarism is strictly prohibited. '
              'Consequences may apply.',
              style: TextStyle(
                color: Colors.red,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
