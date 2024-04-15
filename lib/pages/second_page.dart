import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/profiders/name_providers.dart';

import '../profiders/count_providers.dart';

class SecondPage extends StatelessWidget {
  static const String id = "second_page";

  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [],
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
        title: const Text(
          "Second Page",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Text(
              context.watch<NameProviders>().name!,
              style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Text(
              context.watch<CountProviders>().count.toString(),
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
