import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/pages/home_page.dart';
import 'package:untitled/pages/second_page.dart';
import 'package:untitled/profiders/count_providers.dart';
import 'package:untitled/profiders/name_providers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => NameProviders()),
        ChangeNotifierProvider(create: (context) => CountProviders()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const HomePage(),
        routes: {
          HomePage.id: (context)=>const HomePage(),
          SecondPage.id: (context)=>const SecondPage(),
        },
      ),
    );
  }
}
