import 'package:flutter/material.dart';
import 'package:flutter_toku/screens/home_page.dart';
import 'package:flutter_toku/widgets/back.dart';
import 'package:flutter_toku/widgets/button.dart';
import 'package:flutter_toku/widgets/custom_upper_text.dart';
import 'package:flutter_toku/widgets/password_felid.dart';
import 'package:flutter_toku/widgets/text_field.dart';

class NewAccount extends StatefulWidget {
  const NewAccount({super.key});

  @override
  State<NewAccount> createState() => _NewAccountState();
}

class _NewAccountState extends State<NewAccount> {
  bool obscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 33, 68, 96),
        appBar: AppBar(
            backgroundColor: const Color.fromARGB(255, 33, 68, 96),
            elevation: 0,
            leading: const Back()),
        body: ListView(
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            children: [
              UpperText(
                text: 'Let\'s Get Started!',
                hint: 'Create an account to get all features',
              ),
              CustomTextFelid(
                text: 'First Name',
                keyboardKey: TextInputType.text,
                icon: const Icon(
                  Icons.person,
                  color: Colors.white,
                ),
              ),
              CustomTextFelid(
                text: 'Last Name',
                keyboardKey: TextInputType.text,
                icon: const Icon(
                  Icons.person,
                  color: Colors.white,
                ),
              ),
              CustomTextFelid(
                text: 'Mobile phone',
                keyboardKey: TextInputType.phone,
                icon: const Icon(Icons.phone_iphone_sharp, color: Colors.white),
              ),
              CustomTextFelid(
                text: 'E-mail Address',
                keyboardKey: TextInputType.emailAddress,
                icon: const Icon(Icons.email, color: Colors.white),
              ),
               PasswordFelid(),
              Container(
                  margin: const EdgeInsets.only(top: 45),
                  child: Button(
                    text: 'SIGN IN',
                    onTap: () {
                      Navigator.of(context).pushReplacement(PageRouteBuilder(
                        pageBuilder: (context, animation, secondaryAnimation) {
                          return const HomePage();
                        },
                      ));
                    },
                  )),
            ]));
  }
}
