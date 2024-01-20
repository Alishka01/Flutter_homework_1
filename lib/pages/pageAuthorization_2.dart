import 'package:flutter/material.dart';

import 'pageNewPost.dart';

class Authorization2 extends StatelessWidget {
  const Authorization2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            textDirection: TextDirection.ltr,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text("Авторизация",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
              const Text("Введите код, отправленный на номер",
                  style: TextStyle(
                      fontSize: 14,
                      decorationColor: Color.fromARGB(255, 187, 187, 187))),
              const Text("+7 (888) 777-66-55"),
              const SizedBox(
                height: 54,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Код из СМС",
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Получить код повторно",
                        style:
                            TextStyle(fontSize: 12, color: Color(0xFF5263FF)),
                      ),
                    ),
                    const SizedBox(height: 17),
                    ElevatedButton(
                      style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6),
                            ),
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
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255)),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return const NewPost();
                            },
                          ),
                        );
                      },
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
