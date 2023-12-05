import 'package:flutter/material.dart';
import 'package:journal_linker/assets/index.dart';
import 'package:journal_linker/screens/TrangChu/detail.dart';
import 'package:journal_linker/widget/dismiss_keyboard_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _MyWidgetState();
}

class ImageData {
  final String imagePath;
  final String imageName;

  ImageData({required this.imagePath, required this.imageName});
}

class _MyWidgetState extends State<HomePage> {
  final List<ImageData> imageDataList = [
    ImageData(imagePath: Png.img_maytre, imageName: 'Mây tre đan'),
    ImageData(imagePath: Png.img_vaidetmay, imageName: 'Vải dệt may'),
    ImageData(imagePath: Png.img_gomsu, imageName: 'Gốm sứ'),
    ImageData(imagePath: Png.img_gomynghe, imageName: 'Gỗ mỹ nghệ'),
    ImageData(imagePath: Png.img_chamkhac, imageName: 'Chạm khắc'),
    ImageData(imagePath: Png.img_battrang, imageName: 'Bát Tràng'),
    // Add more ImageData as needed
  ];

  
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
        child: Scaffold(
            body: SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 23.sp),
        child: Column(children: [
          SizedBox(height: 23.sp),
          Container(
            width: 374.sp,
            height: 43.sp,
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search...',
                hintStyle: TextStyle(fontSize: 20.sp),
                prefixIcon: Icon(Icons.search),
                border: InputBorder.none,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(60.0),
                  borderSide: BorderSide(
                    color: Colors.grey.withOpacity(0.5),
                    width: 3.0,
                    style: BorderStyle.solid,
                  ),
                ),
              ),
              onChanged: (value) {},
            ),
          ),
          SizedBox(
            height: 26.sp,
          ),
          Container(
            height: 154.0.sp, // Set the height as needed
            child: imageDataList.length > 4
                ? SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: buildImageWidgets(),
                    ),
                  )
                : Row(
                    children: buildImageWidgets(),
                  ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 16),
            child: Container(
              decoration: BoxDecoration(
                color:maincolor,
                borderRadius: BorderRadius.circular(30.0), // Góc bo tròn
              ),
              child: TabBar(
                indicatorSize: TabBarIndicatorSize.tab,
                labelStyle: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600,
                ),
                indicator: BoxDecoration(
                  color: Color.fromARGB(255, 59, 153, 156),
                  borderRadius: BorderRadius.circular(30),
                ),
                labelColor: whiteColor,
                unselectedLabelColor: Colors.white,
                tabs: [
                  Tab(
                    child: Text('Gợi ý cho bạn'),
                  ),
                  Tab(
                    child: Text('Gần đây'),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
              child: TabBarView(
            children: [
             ImageTab(
              ['https://lytachun.com/wp-content/uploads/2021/07/tui-xach-tho-cam-day-rut2.jpg',
              'https://moit.gov.vn/upload/2005517/20210626/778242e05dd0d395f9cc17e8f86ded2e1e34319e-b3f4-4c1b-a25e-0aedaf9eab42_t%3D1608000288577.jpg',
              'https://media.istockphoto.com/id/1309646840/vi/anh/bao-b%C3%AC-th%E1%BB%A7-c%C3%B4ng-m%E1%BB%B9-ngh%E1%BB%87-t%E1%BB%AB-s%E1%BA%A3n-ph%E1%BA%A9m-t%E1%BB%B1-nhi%C3%AAn.jpg?s=612x612&w=0&k=20&c=Y7Y3hDjZGFJfph8Apad-Dlzzs-UfBdZKh5X4tJMNQZ8=',
              'https://www.sapo.vn/Themes/Portal/Default/Images/LandingPage/sapo-thiet-ke-web-thu-cong-my-nghe.png',
              'https://myngheviet.vn/www/uploads/images/tranh-dia-son-mai-thuan-buom-xuoi-gio-mnv-sma431-d35-2_result.jpg',
              'https://bvhttdl.mediacdn.vn/291773308735864832/2022/10/10/kyo8000-16650212569451854751919-1665367706474-16653677066951356797363.jpg']
             ),
              ImageTab([
                'https://thoibaonganhang.vn/stores/news_dataimages/thanhlm/022017/23/09/921cab4bbc3c7b985f72c947f0a9f190_Untitled.jpg',
                'https://lytachun.com/wp-content/uploads/2021/07/tui-xach-tho-cam-day-rut2.jpg',
                'https://www.kindpng.com/picc/m/246-2462551_wood-craft-in-odisha-hd-png-download.png',
                'https://achaumedia.vn/wp-content/uploads/2020/08/do-my-nghe-1.jpg',
                'https://tapchilaoviet.org/wp-content/uploads/2020/10/hthkl.jpg',
                'https://achaumedia.vn/wp-content/uploads/2020/08/thu-cong-my-nghe-300x169.jpg',
                'https://img.lovepik.com/free-png/20211104/lovepik-pictures-of-wood-crafts-png-image_400256289_wh1200.png',
              ])
            ],
          ))
        ]),
      ),
    )));
  }

//Widget build category
  List<Widget> buildImageWidgets() {
    return imageDataList.map((imageData) {
      return GestureDetector(
        onTap: () {
          // Handle onTap for the specific image
          print('Tapped on ${imageData.imageName}');
        },
        child: Container(
          margin: EdgeInsets.all(8.0.sp),
          child: Column(
            children: [
              CircleAvatar(
                radius: 40.0.sp, // Set the radius as needed
                backgroundImage: AssetImage(imageData.imagePath),
              ),
              SizedBox(height: 8.0.sp),
              Text(
                imageData.imageName,
                style: TextStyle(fontSize: 16.0.sp),
              ),
            ],
          ),
        ),
      );
    }).toList();
  }
}

//Tab 
class ImageTab extends StatelessWidget {
  final List<String> imageUrls;

  ImageTab(this.imageUrls);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10.0.sp,
        mainAxisSpacing: 10.0.sp,
      ),
      itemCount: imageUrls.length,
      itemBuilder: (context, index) {
        return 
        GestureDetector(
          onTap: () {
            // Navigate to the detail page when an image is tapped
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ProductDetailPage(
                  imagePath: imageUrls[index] ,
                  productName: 'Túi thổ cẩm',
                  price: 19.99 + index,
                  description: 'Túi thổ cẩm hoạ tiết dệt tay độc đáo, túi có nắm gập đựng đồ tiện lợi. Túi được sản xuất trực tiếp tại Tây Nguyên dưới bàn tay của những nghệ nhân dệt vải.',
                  sellerName: 'Đinh Thị Thu Lan',
                ),
              ),
            );;},
          child: ClipRRect(
            borderRadius: BorderRadius.circular(24.sp),
            child: Image.network(
            imageUrls[index],
            fit: BoxFit.cover,
          ),
          ),
        );
        
      },
    );
  }
}


//Dialog đặt hàng theo yêu cầu


