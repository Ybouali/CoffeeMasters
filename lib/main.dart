import 'package:coffeemasters/data/datamanager.dart';
import 'package:coffeemasters/pages/menupage.dart';
import 'package:coffeemasters/pages/offerspage.dart';
import 'package:coffeemasters/pages/ortherpage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coffee Masters',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.brown),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  final String title = 'Coffee Masters';

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var selectedPage = 0;
  var dataManager = DataManager();

  @override
  Widget build(BuildContext context) {
    Widget currentPage = const Text("test !!");

    switch (selectedPage) {
      case 0:
        currentPage = MenuPage(dataManager: dataManager);
        break;
      case 1:
        currentPage = const OffersPage();
        break;
      case 2:
        currentPage = OrtherPage(dataManager: dataManager);
        break;
    }

    return Scaffold(
      appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Image.asset(
            "assets/images/logo.png",
            // width: 44,
            // height: 44,
          )),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedPage,
          onTap: (index) => setState(() {
                selectedPage = index;
              }),
          backgroundColor: Theme.of(context).primaryColor,
          selectedItemColor: Colors.yellow.shade800,
          unselectedItemColor: Colors.yellow.shade100,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.coffee), label: "Menu"),
            BottomNavigationBarItem(
                icon: Icon(Icons.local_offer), label: "Offers"),
            BottomNavigationBarItem(
                icon: Icon(Icons.shop_2_sharp), label: "Orther"),
          ]),
      body: currentPage,
    );
  }
}
