import 'package:flutter/material.dart';
import 'package:mobile_tumbuh_sehat/pages/beranda.dart';
import 'package:mobile_tumbuh_sehat/pages/profil.dart';
import 'package:mobile_tumbuh_sehat/pages/prediksi%20gizi/scanMakanan.dart';
import 'package:mobile_tumbuh_sehat/theme/color.dart';

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
    ScanMakanan(),
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
        color: MainTosca.c5,
        height: 70,
        child: Container(
          // height: 10, // Sesuaikan tinggi navbar
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Padding(
            padding: const EdgeInsets.only(
              left: 24,
              right: 24,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(Icons.home,
                      color: _currentIndex == 0
                          ? Monochrome.white
                          : Monochrome.lightGrey),
                  onPressed: () => _onItemTapped(0),
                ),
                SizedBox(width: 40), // Ruang untuk FAB
                IconButton(
                  icon: Icon(Icons.person,
                      color: _currentIndex == 2
                          ? Monochrome.white
                          : Monochrome.lightGrey),
                  onPressed: () => _onItemTapped(2),
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
            shape: const CircleBorder(
              side: BorderSide(color: Colors.black, width: 2),
            ),
            hoverElevation: 10,
            child: Icon(Icons.camera),
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
