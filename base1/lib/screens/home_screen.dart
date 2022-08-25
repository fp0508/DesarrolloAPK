import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentPage = 0;
  final PageController pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //* AppBar
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          'Pantalla $currentPage',
          style: const TextStyle(color: Colors.cyanAccent),
        ),
        elevation: 0,
      ),

      //? Cambiar la pantalla
      body: PageView(
        controller: pageController,
        children: const [
          CustomScreen(color: Colors.cyan),
          CustomScreen(color: Colors.green),
          CustomScreen(color: Colors.indigo),
        ],
      ),
      //* Tabs
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentPage,
        onTap: (index) {
          currentPage = index;

          pageController.animateToPage(index,
              duration: const Duration(milliseconds: 300),
              curve: Curves.decelerate);

          setState(() {});
        },
        backgroundColor: Colors.black,
        selectedItemColor: Colors.cyanAccent,
        unselectedItemColor: Colors.redAccent.withOpacity(0.3),
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.verified_user_outlined), label: 'User'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: 'Settings'),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_box_outlined), label: 'Cart'),
        ],
      ),
    );
  }
}

class CustomScreen extends StatelessWidget {
  final Color color;

  const CustomScreen({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: const Center(
        child: Text('Custom Screen'),
      ),
    );
  }
}
