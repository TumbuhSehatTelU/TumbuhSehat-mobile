import 'package:flutter/material.dart';
import 'package:mobile_tumbuh_sehat/features/home/presentation/pages/home_page.dart';
import 'package:mobile_tumbuh_sehat/features/chatbot/presentation/pages/chatbot_page.dart';
import 'package:mobile_tumbuh_sehat/features/community/presentation/pages/community_page.dart';
import 'package:mobile_tumbuh_sehat/features/profile/presentation/pages/profile_page.dart';
import 'package:mobile_tumbuh_sehat/features/nutrition_prediction/presentation/pages/scan_makanan.dart';
import 'package:mobile_tumbuh_sehat/app/core/theme/color.dart';

class MainPage extends StatefulWidget {
  final int selectedIndex;
  const MainPage({super.key, this.selectedIndex = 0});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    Beranda(),
    Chatbot(),
    ScanMakanan(),
    Komunitas(),
    Profil(),
  ];

  @override
  void initState() {
    super.initState();
    _currentIndex = widget.selectedIndex;
  }

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex], // Hanya ganti halaman di sini
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(), // Membuat cekungan untuk FAB
        notchMargin: 6.0, // Jarak antara FAB dan BottomAppBar
        color: TS_color.mainTosca.c5,
        height: 70,
        child: Container(
          // height: 10, // Sesuaikan tinggi navbar
          // padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.01,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(Icons.home,
                      color: _currentIndex == 0
                          ? TS_color.monochrome.white
                          : TS_color.monochrome.lightGrey),
                  onPressed: () => _onItemTapped(0),
                ),
                IconButton(
                  icon: Icon(Icons.home,
                      color: _currentIndex == 1
                          ? TS_color.monochrome.white
                          : TS_color.monochrome.lightGrey),
                  onPressed: () => _onItemTapped(1),
                ),
                SizedBox(width: 40),
                IconButton(
                  icon: Icon(Icons.home,
                      color: _currentIndex == 3
                          ? TS_color.monochrome.white
                          : TS_color.monochrome.lightGrey),
                  onPressed: () => _onItemTapped(3),
                ),
                IconButton(
                  icon: Icon(Icons.person,
                      color: _currentIndex == 4
                          ? TS_color.monochrome.white
                          : TS_color.monochrome.lightGrey),
                  onPressed: () => _onItemTapped(4),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: SizedBox(
        width: 100,
        height: 100,
        child: Padding(
          padding: EdgeInsets.all(8),
          child: FloatingActionButton(
            backgroundColor: Colors.cyan,
            shape: const CircleBorder(
              side: BorderSide(color: Colors.black, width: 2),
            ),
            hoverElevation: 10,
            child: Icon(
              Icons.camera,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ScanMakanan(),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
