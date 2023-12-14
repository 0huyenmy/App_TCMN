import 'package:flutter/material.dart';
import 'package:journal_linker/assets/index.dart';
import 'package:journal_linker/screens/DauGia/DauGia.dart';
import 'package:journal_linker/screens/GioHang/GioHang.dart';
import 'package:journal_linker/screens/Toi/changePass.dart';
import 'package:journal_linker/screens/TrangChu/post.dart';
import 'package:journal_linker/widget/dismiss_keyboard_widget.dart';

class MePage extends StatefulWidget {
  const MePage({Key? key}) : super(key: key);

  @override
  State<MePage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MePage> {
  String username = 'Nguyễn Hoàng Thanh Ân';
  String email = 'thanhan010@gmail.com';
  String tel = '0856936227';
  int followers = 100;
  int following = 50;

  List<Map<String, dynamic>> itemList = [
    {'title': 'Yêu thích', 'icon': Icons.favorite},
    {'title': 'Đề nghị đấu giá', 'icon': Icons.construction},
    {'title': 'Bán hàng', 'icon': Icons.sell},
    {'title': 'Phương thức thanh toán', 'icon': Icons.credit_card}
  ];

  void navigateToPage(Map<String, dynamic> itemList) {
    
    // Xác định trang tương ứng dựa trên mục được chọn
    switch (itemList['title']) {
      case 'Yêu thích':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => GioHangPage()),
        );
        //routeName = '/page1';
        break;
      case 'Đề nghị đấu giá':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DauGiaPage()),
        );
        break;
      case 'Bán hàng':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => PostPage()),
        );
        break;
      case 'Phương thức thanh toán':
        
        break;
      // Thêm các trang khác nếu cần
    }
  }

void handlePopupMenuSelection(String value) {
    
    // Xác định trang tương ứng dựa trên mục được chọn
    switch (value) {
      case 'editProfile':
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(builder: (context) => GioHangPage()),
        // );
        break;
      case 'changePassword':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ChangePassPage()),
        );
        break;
      case 'help':
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(builder: (context) => PostPage()),
        // );
        break;
      case 'logout':
        
        break;
      // Thêm các trang khác nếu cần
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
           
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage(
                  'assets/images/donghogiay.png'), // Đường dẫn ảnh avt
            ),
            SizedBox(height: 16),
            Text(
              username,
              style: text22.medium,
            ),
            Text(
              'Email: $email',
              style: text18.regular.copyWith(color: grayscale60),
            ),
            Text(
              'Tel: $tel',
              style: text18.regular.copyWith(color: grey100),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      'Người theo dõi',
                      style: text20.medium,
                    ),
                    Text(
                      followers.toString(),
                      style: text18.regular,
                    ),
                  ],
                ),
                //SizedBox(width: 32.sp),
                Column(
                  children: [
                    Text(
                      'Đang theo dõi',
                      style: text20.medium,
                    ),
                    Text(
                      following.toString(),
                      style: text18.regular,
                    ),
                  ],
                ),
                //SizedBox(width: 32.sp,),
                PopupMenuButton<String>(
                  onSelected: (value) {
                    // Xử lý khi chọn một mục từ menu
                    if (value == 'editProfile') {
                      // Chỉnh sửa thông tin cá nhân
                    } else if (value == 'changePassword') {
                      handlePopupMenuSelection(value);
                    } else if (value == 'help') {
                      // Trợ giúp
                    } else if (value == 'logout') {
                      // Đăng xuất
                    }
                  },
                  itemBuilder: (BuildContext context) =>
                      <PopupMenuEntry<String>>[
                    PopupMenuItem<String>(
                      value: 'editProfile',
                      child: ListTile(
                        leading: Icon(Icons.edit),
                        title: Text('Chỉnh sửa thông tin'),
                      ),
                    ),
                    PopupMenuItem<String>(
                      value: 'changePassword',
                      child: ListTile(
                        leading: Icon(Icons.lock),
                        title: Text('Đổi mật khẩu'),
                      ),
                    ),
                    PopupMenuItem<String>(
                      value: 'help',
                      child: ListTile(
                        leading: Icon(Icons.help),
                        title: Text('Trợ giúp'),
                      ),
                    ),
                    PopupMenuItem<String>(
                      value: 'logout',
                      child: ListTile(
                        leading: Icon(Icons.exit_to_app),
                        title: Text('Đăng xuất'),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20.sp,
            ),
            Positioned(
              left: 0,
              child: Container(
                height: 1.0.sp,
                width: 300.0.sp, // Adjust the width of the line
                color: gray,
              ),
            ),

            SizedBox(
              height: 18.sp,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: itemList.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      // Chuyển hướng đến trang tương ứng khi mục được chọn
                      navigateToPage(itemList[index]);
                    },
                    child: ListTile(
                      leading: Icon(itemList[index]['icon']),
                      title: Text(
                        itemList[index]['title'],
                        style: text20.regular,
                      ),
                      trailing: Icon(Icons.navigate_next),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
