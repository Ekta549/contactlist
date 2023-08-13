import 'package:flutter/material.dart';

class Contact {
  final String name;
  final String phoneNumber;
  final String image;

  Contact({required this.name, required this.phoneNumber, required this.image});
}




void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  final List<Contact> dummyContacts = [
    Contact(name: 'Jany', phoneNumber: '123-456-7890', image: 'assets/images1.jpg'),
    Contact(name: 'Jane Smith', phoneNumber: '987-654-3210', image: 'assets/images.jpg'),
    Contact(name: 'Rosy', phoneNumber: '993-754-8723', image: 'assets/download2.jpg'),
    // Add more contacts...
  ];

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Recent Contact List'),
          backgroundColor: const Color.fromARGB(255, 52, 52, 53),
        ),
        body: ListView.builder(
          itemCount: dummyContacts.length,
          itemBuilder: (context, index) {
            Contact contact = dummyContacts[index];
            return ListTile(
              
              leading: CircleAvatar(
                backgroundImage: AssetImage(contact.image),
              ),
              title: Text(contact.name),
              subtitle: Text(contact.phoneNumber),
            );
          },
        ),
         bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(icon: Icon(Icons.recent_actors), label: 'Recent'),
        BottomNavigationBarItem(
          icon: Icon(Icons.contact_page),
          label: 'Contact',
        ),
        
      ]),

      ),
    );
  }
}
