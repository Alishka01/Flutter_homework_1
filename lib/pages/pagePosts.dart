import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

import 'pageNewPost.dart';

class BoardPosts extends StatelessWidget {
  const BoardPosts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            textDirection: TextDirection.ltr,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  const Text("Мои объявления",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 20),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: const Color(0xFFFFFFFF),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 20, right: 20, top: 30, bottom: 30),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Груз",
                                      style: TextStyle(
                                          color: Color(0xFFBBBBBB),
                                          fontSize: 12)),
                                  Text(
                                    "600 ₽",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 18),
                                  )
                                ],
                              ),
                              ElevatedButton(
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              const Color(0xFFF1F1F1))),
                                  onPressed: () {},
                                  child: const Text(
                                    "Повезу",
                                    style: TextStyle(color: Color(0xFFBBBBBB)),
                                  ))
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          TimelineTile(
                            isFirst: true,
                            beforeLineStyle:
                                const LineStyle(color: Color(0XFFD9D9D9)),
                            indicatorStyle: IndicatorStyle(
                                color: const Color(0XFFEEEEEE),
                                width: 40,
                                height: 40,
                                iconStyle: IconStyle(
                                    color: const Color(0XFFC0C0C0),
                                    iconData: Icons.gps_fixed)),
                            endChild: const Padding(
                              padding: EdgeInsets.all(20),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Россия, Москва",
                                      style: TextStyle(fontSize: 16),
                                    ),
                                    Text(
                                      "12:00, 6 декабря",
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xFFBBBBBB)),
                                    ),
                                  ]),
                            ),
                          ),
                          TimelineTile(
                            isLast: true,
                            beforeLineStyle:
                                const LineStyle(color: Color(0XFFD9D9D9)),
                            indicatorStyle: IndicatorStyle(
                                color: const Color(0xFFE5EAFF),
                                width: 40,
                                height: 40,
                                iconStyle: IconStyle(
                                    color: const Color(0xFF3B59A8),
                                    iconData: Icons.location_on_outlined)),
                            endChild: const Padding(
                              padding: EdgeInsets.all(20),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Россия, Москва",
                                      style: TextStyle(fontSize: 16),
                                    ),
                                    Text(
                                      "12:00, 6 декабря",
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xFFBBBBBB)),
                                    ),
                                  ]),
                            ),
                          ),
                          const Text(
                            "Описание:orem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor...",
                            style: TextStyle(
                                fontSize: 12, color: Color(0xFFBBBBBB)),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          ElevatedButton(
                            style: ButtonStyle(
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                ),
                                backgroundColor: MaterialStateProperty.all(
                                    const Color(0xFFE5EAFF)),
                                fixedSize: MaterialStateProperty.all(
                                    const Size.fromWidth(300)),
                                maximumSize: MaterialStateProperty.all(
                                    const Size.fromHeight(50))),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Изменить",
                                  textDirection: TextDirection.ltr,
                                  style: TextStyle(color: Color(0XFF3B59A8)),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Icon(
                                  Icons.mode_edit_outline_outlined,
                                  color: Color(0xFF3B59A8),
                                  size: 20,
                                )
                              ],
                            ),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
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
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.add_rounded,
                      size: 22,
                      color: Colors.white,
                    ),
                    Text(
                      "Разместить объявление",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ],
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return const NewPost();
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
