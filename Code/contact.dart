import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const ContactPage());
}

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              "Contact",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, // Align all children to left
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.topRight,
                  child: Icon(Icons.settings),
                ),
              ),
              Center(
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    "We'd love to hear from you! Whether you have a question, feedback, or just want to say hello, please don't hesitate to reach out.",
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              const SizedBox(height: 5,),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: Text(
                  "Contact Information",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
              const Padding(padding: EdgeInsets.symmetric(horizontal: 10),
              child: ListTile(
                leading: Icon(Icons.mail),
                title: Text("Email"),
                trailing: Text("//mail_id"),
               ),
              ),
              const Padding(padding: EdgeInsets.symmetric(horizontal: 10),
                child: ListTile(
                  leading: Icon(Icons.phone_rounded),
                  title: Text("Phone"),
                  trailing: Text("//mobile number"),
                ),
              ),
              const Padding(padding: EdgeInsets.symmetric(horizontal: 10),
                child: ListTile(
                  leading: Icon(Icons.house),
                  title: Text("Address"),
                  trailing: Text("GLA University,Mathura"),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: Text(
                  "Contact Form",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 16),
              TextField(
                decoration: InputDecoration(
                  hintText: "Your  Name",
                  filled: true,
                  fillColor: Colors.blueGrey[50],
                ),
              ),
              const SizedBox(height: 16),
              TextField(
                decoration: InputDecoration(
                  hintText: "Your  Email",
                  filled: true,
                  fillColor: Colors.blueGrey[50],
                ),
              ),
              const SizedBox(height: 16),
              TextField(
                maxLines: 6,
                decoration: InputDecoration(
                  hintText: "Your  Message",
                  filled: true,
                  fillColor: Colors.blueGrey[50],
                ),
              ),
              const SizedBox(height: 7,),
              TextField(
                decoration: InputDecoration(
                  hintText: "Send Message", suffixIconColor: Colors.white,
                  filled: true,
                  fillColor: CupertinoColors.activeBlue,
                    border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide.none,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: Text(
                  "Follow Us",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
              Center(
                child: Column(
                  children: [
                    const Icon(Icons.facebook),
                    const Text("Facebook"),
                    const SizedBox(height: 4,),
                    const Icon(FontAwesomeIcons.twitter),
                    const Text("Twitter"),
                    const SizedBox(height: 4,),
                    const Icon(FontAwesomeIcons.instagram),
                    const Text("Instagram"),
                    const SizedBox(height: 4,),
                  ],
                )
              )

            ],
          ),
        ),
      ),
    );
  }
}
