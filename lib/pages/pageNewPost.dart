import 'package:flutter/material.dart';

import 'pageAuthorization_2.dart';
import 'pagePosts.dart';

class NewPost extends StatelessWidget {
  const NewPost({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      appBar: AppBar(
          backgroundColor: const Color(0xFFF5F5F5),
          automaticallyImplyLeading: false,
          title: Row(
            textDirection: TextDirection.ltr,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return const Authorization2();
                      },
                    ));
                  },
                  icon: const Icon(
                    Icons.arrow_back_outlined,
                    size: 25,
                  )),
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Сохранить и выйти",
                    style: TextStyle(fontSize: 12),
                  )),
            ],
          )),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Новое объявление",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 40,
              ),
              const Expanded(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Название объявления",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      TextField(
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(),
                            contentPadding: EdgeInsets.only(left: 10),
                            hintText: "Введите название"),
                      ),
                    ]),
              ),
              const Expanded(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Описание",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(),
                          contentPadding: EdgeInsets.only(left: 10, top: 45),
                          hintText: "Введите описание",
                        ),
                      ),
                    ]),
              ),
              const Expanded(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Откуда",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      TextField(
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(),
                            contentPadding: EdgeInsets.only(left: 10),
                            hintText: "Страна, Город, Аэропорт"),
                      ),
                    ]),
              ),
              const Expanded(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Куда",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      TextField(
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(),
                            contentPadding: EdgeInsets.only(left: 10),
                            hintText: "Страна, Город, Аэропорт"),
                      ),
                    ]),
              ),
              Expanded(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Дата отъезда",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      TextField(
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            border: const OutlineInputBorder(),
                            contentPadding: const EdgeInsets.only(left: 10),
                            label: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Icon(
                                        Icons.calendar_today_outlined,
                                        color:
                                            Color.fromARGB(255, 115, 124, 129),
                                        size: 18,
                                      ),
                                      Text("\t06/11/2023г")
                                    ]),
                                IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.keyboard_arrow_down_sharp,
                                    ))
                              ],
                            )),
                      ),
                    ]),
              ),
              Expanded(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Дата приезда",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      TextField(
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            border: const OutlineInputBorder(),
                            contentPadding: const EdgeInsets.only(left: 10),
                            label: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Icon(
                                        Icons.calendar_today_outlined,
                                        color:
                                            Color.fromARGB(255, 115, 124, 129),
                                        size: 18,
                                      ),
                                      Text("\t06/11/2023г")
                                    ]),
                                IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.keyboard_arrow_down_sharp,
                                    ))
                              ],
                            )),
                      ),
                    ]),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6),
                      ),
                    ),
                    backgroundColor: MaterialStateProperty.all(
                        const Color.fromARGB(255, 59, 89, 168)),
                    fixedSize:
                        MaterialStateProperty.all(const Size.fromWidth(500)),
                    maximumSize:
                        MaterialStateProperty.all(const Size.fromHeight(52))),
                child: const Text(
                  "Разместить объявление",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return const BoardPosts();
                    },
                  ));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
