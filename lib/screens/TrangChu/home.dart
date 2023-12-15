import 'package:flutter/material.dart';
import 'package:journal_linker/assets/index.dart';
import 'package:journal_linker/screens/TrangChu/detail.dart';
import 'package:journal_linker/screens/TrangChu/post.dart';
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
            floatingActionButton: FloatingActionButton(
              backgroundColor: maincolor,
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => PostPage(),
                ));
              },
              child: const Icon(Icons.add),
            ),
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
                        color: maincolor,
                        borderRadius:
                            BorderRadius.circular(30.0), // Góc bo tròn
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
                        labelColor: h1,
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
                      ImageTab([
                        Png.img_tui_tho_cam,
                        Png.img_long_tre,
                        Png.img_ly_son_mai,
                        Png.img_trang_suc,
                        Png.img_ro_tre,
                        Png.img_may_go,
                      ]),
                      ImageTab([
                        Png.img_ro_may,
                        Png.img_tui_tho_cam,
                        Png.img_binh_son_mai,
                        Png.img_cu_meo_go,
                        Png.img_gio_tre,
                        Png.img_dia_da
                      ])
                    ],
                  )),
                ]),
              ),
            )));
  }
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
        crossAxisSpacing: 20.0.sp,
        mainAxisSpacing: 20.0.sp,
      ),
      itemCount: imageUrls.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ProductDetailPage(
                  imagePath: imageUrls[index],
                  productName: 'Túi thổ cẩm',
                  price: 19.99 + index,
                  description:
                      'Túi thổ cẩm hoạ tiết dệt tay độc đáo, túi có nắm gập đựng đồ tiện lợi. Túi được sản xuất trực tiếp tại Tây Nguyên dưới bàn tay của những nghệ nhân dệt vải.',
                  sellerName: 'Đinh Thị Thu Lan',
                ),
              ),
            );
            ;
          },
          child: ClipRRect(
            borderRadius: BorderRadius.circular(24.sp),
            child: Image.asset(
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
