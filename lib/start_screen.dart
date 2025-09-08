import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: Colors.orangeAccent,
          ),
          const SizedBox(
            height: 50,
          ),
          Text(
            'Learn flutter the fun way',
            style: GoogleFonts.lato(
              color: Colors.white,
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 100,
          ),
          OutlinedButton.icon(
            onPressed: startQuiz, // switch screen function
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            icon: Icon(Icons.play_arrow),
            label: Text('Start Quiz'),
          ),
        ],
      ),
    );
  }
}
