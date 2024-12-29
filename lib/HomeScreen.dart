import 'package:flutter/material.dart';
import 'customWidget/DisplayButton.dart';
import 'customWidget/customWidgetMethods.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60.0),
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: const CustomAppBar(),
        ),
      ),
      body: Container(
        height: double.infinity,
        padding: const EdgeInsets.fromLTRB(20, 10, 30, 10),
        child: SingleChildScrollView(
          physics: const ScrollPhysics(parent: ScrollPhysics()),
          child: Center(
            child: Column(
              children: [
                SizedBox(
                    height: MediaQuery.of(context).size.height * 0.6,
                    child: Image.asset('assets/HomeScreen.jpg')),
                const SizedBox(
                  height: 50,
                ),
                SizedBox(
                  height: (MediaQuery.of(context).size.height * 20) / 816,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
