import 'package:flutter/material.dart';
import 'package:modelhandling/screen/login_screen.dart';
import 'package:modelhandling/screen/product_screen.dart';
import 'package:modelhandling/screen/student_screen.dart';
import 'package:modelhandling/screen/studentlist.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: "https://biqfkdadcgvlexxfdhdt.supabase.co",
    anonKey:
        "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImJpcWZrZGFkY2d2bGV4eGZkaGR0Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NzI1NjU2ODIsImV4cCI6MjA4ODE0MTY4Mn0.fyH3S8d613PyOc8PYNcKR7h9l5gxt9xnzUlOjsjO8TM",
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: LoginPage(),
    );
  }
}
