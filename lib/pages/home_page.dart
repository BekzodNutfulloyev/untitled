import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/pages/second_page.dart';

import '../profiders/count_providers.dart';
import '../profiders/name_providers.dart';

class HomePage extends StatelessWidget {
  static const String id = "home_page";

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, SecondPage.id);
              },
              icon: const Icon(Icons.arrow_forward)),
        ],
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
        title: const Text(
          "Home Page",
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
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: nameController,
              decoration: const InputDecoration(hintText: "name"),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  context
                      .read<NameProviders>()
                      .changeName(newName: nameController.text.trim());
                  nameController.clear();
                },
                child: const Text("Change")),
            const SizedBox(
              height: 20,
            ),
            Row(children: [
              const SizedBox(
                width: 120,
              ),
              ElevatedButton(
                  onPressed: () {
                    context.read<CountProviders>().add();
                  },
                  child: const Text("+")),
              Text(
                context.watch<CountProviders>().count.toString(),
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              ElevatedButton(
                  onPressed: () {
                    context.read<CountProviders>().subtraction();
                  },
                  child: const Text("-")),
            ])
          ],
        ),
      ),
    );
  }
}
