import 'package:flutter/material.dart';
import 'package:flutter_weekly_1/contact_us.dart';
import 'package:flutter_weekly_1/header_screen.dart';
import 'package:flutter_weekly_1/textfield_widget.dart';
import 'package:flutter_weekly_1/welcome_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController firstnameController = TextEditingController();
    TextEditingController lastnameController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController messageController = TextEditingController();
    void _showDialog(BuildContext context) {
      String fullName =
          firstnameController.text + ' ' + lastnameController.text;
      String email = emailController.text;
      String message = messageController.text;

      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Form Contact Us'),
            content: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Full Name: $fullName'),
                Text('Email: $email'),
                Text('Message: $message'),
              ],
            ),
            actions: <Widget>[
              ElevatedButton(
                child: const Text('Close'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }

    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: const Text('Code Competence 1'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          SizedBox(
              height: MediaQuery.of(context).size.height * 3,
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.2,
                  ),
                  const HeaderScreen(),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.7,
                  ),
                  const WelcomeSection(),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.7,
                  ),
                  const ContactUs(),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'First Name*',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.white),
                                  ),
                                  TextFieldWidget(
                                    hintext: "First Name",
                                    controller: firstnameController,
                                    keyboardType: TextInputType.text,
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Last Name*',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.white),
                                  ),
                                  TextFieldWidget(
                                    hintext: "Last Name",
                                    controller: lastnameController,
                                    keyboardType: TextInputType.text,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Email*',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white),
                            ),
                            TextFieldWidget(
                              hintext: "Email",
                              controller: emailController,
                              keyboardType: TextInputType.emailAddress,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'What can we help you with?',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white),
                            ),
                            TextFieldWidget(
                              hintext: "You message ",
                              maxLines: 3,
                              controller: messageController,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              _showDialog(context);
                            },
                            style: const ButtonStyle(
                                backgroundColor:
                                    MaterialStatePropertyAll(Colors.white)),
                            child: const Text(
                              'Submit',
                              style: TextStyle(color: Colors.black),
                            ))
                      ],
                    ),
                  )
                ],
              )),
        ],
      ),
    );
  }
}
