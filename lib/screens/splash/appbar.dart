import 'package:flutter/material.dart';
import 'package:journal_linker/assets/index.dart';
import 'package:journal_linker/screens/DauGia/DauGia.dart';
import 'package:journal_linker/screens/GioHang/GioHang.dart';
import 'package:journal_linker/screens/Toi/me.dart';
import 'package:journal_linker/screens/TrangChu/home.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentPage = 0;
  List<Widget> pages = const [
    HomePage(),
    DauGiaPage(),
    GioHangPage(),
    MePage(),
  ];
  List<String> titles = const [
    'Trang chủ',
    'Đấu giá',
    'Giỏ hàng',
    'Tôi',
  ];
  // void _navigateToProfilePage() {
  //   Navigator.push(
  //       context, MaterialPageRoute(builder: (context) => ProfileScreen()));
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:maincolor,
        toolbarHeight: 80, 
        title: Text(titles[currentPage]
        ,style: TextStyle(
                           fontSize: 30,
                           fontFamily: "Lato",
                           fontWeight: FontWeight.bold,
                           color: whiteColor,
                         ),
                    ),   
        actions: <Widget>[
          IconButton(
            padding: EdgeInsets.only(right: 5),
            icon: Icon(Icons.notifications,color:whiteColor),
            iconSize: 40,
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('You pressed bell icon.')));
            },
          ),
          IconButton(
            //padding: EdgeInsets.only(right: 5),
            icon: Icon(Icons.messenger_rounded,color:whiteColor),
            iconSize: 40,
            onPressed: () {
            }
          ),
            
        ],
        
        
      ),
      body: pages[currentPage],
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     debugPrint('floatingActionButton');
      //   },
      //   child: const Icon(Icons.add),
      // ),
      
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: maincolor,
        type: BottomNavigationBarType.fixed,
        items:  const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Trang chủ',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.construction),
            label: 'Đấu giá',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Giỏ hàng',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Tôi',
          ),
        ],
        currentIndex: currentPage,
        selectedItemColor: whiteColor,
        onTap: onDestinationSelected,
      ),
    );
  }

  void onDestinationSelected(int index) {
    setState(() {
      currentPage = index;
    });
  }
}
