import 'package:flutter/material.dart';
import 'package:listview_demo/utils/color_constants.dart';

import '../models/list_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstants.green,
        title: const Text(
          "List of Students",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: listData.length,
              itemBuilder: (context, index) {
                ListModel listModel = listData[index];
                return Card(
                  color: ColorConstants.yellow,
                  child: Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        left:
                            BorderSide(width: 10, color: ColorConstants.green),
                      ),
                      
                    ),
                    padding:
                        const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                    child: Column(
                      children: [
                        ListTile(
                          leading: const Icon(
                            Icons.person,
                            color: ColorConstants.white,
                          ),
                          title: Text(
                            "${listModel.name}",
                            style: const TextStyle(
                                fontSize: 20,
                                color: ColorConstants.white,
                                fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                            "${listModel.age}",
                            style: const TextStyle(color: ColorConstants.white),
                          ),
                          trailing: Wrap(spacing: 20, children: [
                            IconButton(
                              icon: const Icon(Icons.delete_forever_outlined),
                              color: ColorConstants.sun,
                              onPressed: () {},
                            ),
                            IconButton(
                              icon: const Icon(Icons.remove_red_eye_sharp),
                              color: ColorConstants.sun,
                              onPressed: () {},
                            ),
                          ]),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
