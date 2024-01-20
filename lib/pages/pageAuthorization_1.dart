import 'package:flutter/material.dart';

import 'pageAuthorization_2.dart';

class Authorization1 extends StatelessWidget {
  const Authorization1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
            const Column(
              textDirection: TextDirection.ltr,
              children: [
                Text("Авторизация",
                    style:
                        TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                Text("Введите номер телефона для авторизации",
                    style: TextStyle(
                        fontSize: 14,
                        decorationColor: Color.fromARGB(255, 187, 187, 187)))
              ],
            ),
            const SizedBox(
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Column(
                textDirection: TextDirection.ltr,
                children: [
                  const TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Номер телефона"),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Введите ваше имя"),
                  ),
                  const SizedBox(
                    height: 38,
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6),),
                        ),
                        backgroundColor: MaterialStateProperty.all(
                            const Color.fromARGB(255, 59, 89, 168)),
                        fixedSize: MaterialStateProperty.all(
                            const Size.fromWidth(500)),
                        maximumSize: MaterialStateProperty.all(
                            const Size.fromHeight(52))),
                    child: const Text(
                      "Продолжить",
                      textDirection: TextDirection.ltr,
                      style:
                          TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const Authorization2();
                          },
                        ),
                      );
                    },
                  )
                ],
              ),
            )
          ])),
    );
  }
}
