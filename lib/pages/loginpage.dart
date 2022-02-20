import 'package:flutter/material.dart';

import 'package:shopping/utils/routes.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const SizedBox(
              height: 20,
            ),
            Container(
              alignment: Alignment.topCenter,
              child: const Text(
                "LOGIN",
                style: TextStyle(
                    color: Colors.green,
                    fontFamily: "Poppins",
                    fontSize: 34,
                    fontWeight: FontWeight.w800),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 15),
              child: TextFormField(
                decoration: InputDecoration(
                  suffixIcon: const Icon(Icons.mail_outline),
                  hintText: "Email",
                  hintStyle: const TextStyle(fontFamily: "Poppins"),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(width: 2, color: Colors.green),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(width: 2, color: Colors.purple),
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              child: TextFormField(
                decoration: InputDecoration(
                  suffixIcon: const Icon(
                    Icons.visibility_off_outlined,
                  ),
                  hintText: "Password",
                  hintStyle: const TextStyle(fontFamily: "Poppins"),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(width: 2, color: Colors.green),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(width: 2, color: Colors.purple),
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(right: 24),
              alignment: Alignment.topRight,
              child: const Text(
                "Forgot Password",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: "Poppins",
                    color: Colors.green,
                    fontSize: 14),
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: InkWell(
                onTap: () => Navigator.pushNamed(context, MyRoutes.home),
                child: Container(
                  padding: const EdgeInsets.all(17),
                  alignment: Alignment.center,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    gradient: const LinearGradient(
                        colors: [Colors.blue, Colors.green]),
                  ),
                  child: const Text(
                    "Login",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Poppins",
                        fontSize: 14),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Text(
                      "Don't Have an account ?",
                      style: TextStyle(
                        fontFamily: "Poppins",
                      ),
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, MyRoutes.register);
                      },
                      child: Container(
                        child: const Text(
                          "Register account",
                          style: TextStyle(
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.bold,
                              color: Colors.green),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
