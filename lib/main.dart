import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        useMaterial3: true,
      ),
      home: MyAppPage(),
    );
  }
}

class MyAppPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> students = [
      {"name": "นายชาญณรงค์ แต่งเมือง", "id": "643450069-6"},
      {"name": "นางสาวนภัสสร ดวงจันทร์", "id": "643450326-2"},
      {"name": "นายศรันย์ ซุ่นเส้ง", "id": "643450086-6"},
      {"name": "นายเจษฏา พบสมัย", "id": "643450323-8"},
      {"name": "นายกมล จันบุตรดี", "id": "643450063-8"},
      {"name": "นายประสิทธิชัย จันทร์สม", "id": "643450079-3"},
      {"name": "นายก้องภพ ตาดี", "id": "643450321-2"},
      {"name": "นางสาวสุธาดา เสนามงคล", "id": "643450089-0"},
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("My App"),
      ),
      body: ListView.builder(
        itemCount: students.length,
        itemBuilder: (context, index) {
          return displayNameItem(
            name: students[index]['name']!,
            studentId: students[index]['id']!,
          );
        },
      ),
    );
  }

  Widget displayNameItem({required String name, required String studentId}) {
    final Map<String, String> nameToImage = {
      "นายชาญณรงค์ แต่งเมือง": 'images/643450069-6.jpg',
      "นางสาวนภัสสร ดวงจันทร์": 'images/643450326-2.jpg',
      "นายศรันย์ ซุ่นเส้ง": 'images/643450086-6.jpg',
      "นายเจษฏา พบสมัย": 'images/643450323-8.jpg',
      "นายกมล จันบุตรดี": 'images/643450063-8.jpg',
      "นายประสิทธิชัย จันทร์สม": 'images/643450079-3.jpg',
      "นายก้องภพ ตาดี": 'images/643450321-2.jpg',
      "นางสาวสุธาดา เสนามงคล": 'images/643450089-0.jpg',
    };

    return Container(
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          Image(
            width: 100,
            image: AssetImage(nameToImage[name] ?? 'images/default.jpg'),
          ),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: const TextStyle(fontSize: 20),
              ),
              Text(
                'ID: $studentId',
                style: const TextStyle(fontSize: 16, color: Colors.grey),
              ),
            ],
          ),
        ],
      ),
    );
  }
}