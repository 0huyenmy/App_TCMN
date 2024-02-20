import 'package:flutter/material.dart';
import 'package:journal_linker/assets/index.dart';

import '../../assets/colors.dart';

class DauGiaPage extends StatefulWidget {
  const DauGiaPage({Key? key}) : super(key: key);

  @override
  State<DauGiaPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<DauGiaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: DefaultTabController(
            length: 2,
            child: Column(children: [
              Padding(
                padding: EdgeInsets.fromLTRB(25.sp, 20.sp, 25.sp, 20.sp),
                child: Container(
                  decoration: BoxDecoration(
                    color: maincolor,
                    borderRadius: BorderRadius.circular(30.sp),
                  ),
                  child: TabBar(
                    indicatorSize: TabBarIndicatorSize.tab,
                    labelStyle: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                    ),
                    indicator: BoxDecoration(
                      color: Color.fromARGB(255, 59, 153, 156),
                      borderRadius: BorderRadius.circular(30.sp),
                    ),
                    labelColor: h1,
                    unselectedLabelColor: Colors.white,
                    tabs: const [
                      Tab(
                        child: Text('Đấu giá'),
                      ),
                      Tab(
                        child: Text('Đặt giá của tôi'),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: TabBarView(
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    SingleChildScrollView(
                      child: IntrinsicHeight(
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                children: [
                                  Container(
                                    //padding: EdgeInsets.symmetric(vertical: 10.sp),
                                    padding: EdgeInsets.all(16.0),
                                    //margin: EdgeInsets.symmetric(horizontal: 5.sp),
                                    child: Column(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(right: 10.sp),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.stretch,
                                            children: [
                                              Container(
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
                                                ),
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          30.0),
                                                  child: Image.asset(
                                                    'assets/images/daugia1.png',
                                                    fit: BoxFit.cover,
                                                    width: double.infinity,
                                                    height: 200.0,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(height: 10.sp),
                                              Text(
                                                  'Bình Gốm Bát Tràng từ thế kỷ 14',
                                                  style: text18.medium),
                                              SizedBox(height: 5.sp),
                                              Text('4.420.000 đ',
                                                  style: text16.regular
                                                      .copyWith(
                                                          color: redColor)),
                                              SizedBox(height: 5.sp),
                                              Text('6 bids - 2d 6h left',
                                                  style: text16.regular),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10.sp,
                                        ),
                                        Container(
                                          //margin: EdgeInsets.only(right: 10.sp, top: 10.sp),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.stretch,
                                            children: [
                                              Container(
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
                                                ),
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          30.0),
                                                  child: Image.asset(
                                                    'assets/images/daugia1.png',
                                                    fit: BoxFit.cover,
                                                    width: double.infinity,
                                                    height: 200.0,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(height: 10.sp),
                                              Text(
                                                  'Bình Gốm Bát Tràng từ thế kỷ 14',
                                                  style: text18.medium),
                                              SizedBox(height: 5.sp),
                                              Text('4.420.000 đ',
                                                  style: text16.regular
                                                      .copyWith(
                                                          color: redColor)),
                                              SizedBox(height: 5.sp),
                                              Text('6 bids - 2d 6h left',
                                                  style: text16.regular),
                                              SizedBox(
                                                height: 10.sp,
                                              ),
                                              Container(
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
                                                ),
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          30.0),
                                                  child: Image.asset(
                                                    'assets/images/daugia1.png',
                                                    fit: BoxFit.cover,
                                                    width: double.infinity,
                                                    height: 200.0,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(height: 10.sp),
                                              Text(
                                                  'Bình Gốm Bát Tràng từ thế kỷ 14',
                                                  style: text18.medium),
                                              SizedBox(height: 5.sp),
                                              Text('4.420.000 đ',
                                                  style: text16.regular
                                                      .copyWith(
                                                          color: redColor)),
                                              SizedBox(height: 5.sp),
                                              Text('6 bids - 2d 6h left',
                                                  style: text16.regular),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  Container(
                                    //margin: EdgeInsets.symmetric(horizontal: 5.sp),
                                    padding: EdgeInsets.all(16.0),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.stretch,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(30.0),
                                            child: Image.asset(
                                              'assets/images/daugia2.png',
                                              fit: BoxFit.cover,
                                              width: double.infinity,
                                              height: 200.0,
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 10.sp),
                                        Text(
                                            'Ấm  chén thưởng trà - Bát Tràng độc quyền',
                                            style: text18.medium),
                                        SizedBox(height: 5.sp),
                                        Text('420.000 đ',
                                            style: text16.regular
                                                .copyWith(color: redColor)),
                                        SizedBox(height: 5.sp),
                                        Text('2 bids - 5d 6h left',
                                            style: text16.regular),
                                        SizedBox(
                                          height: 10.sp,
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(30.0),
                                            child: Image.asset(
                                              'assets/images/daugia2.png',
                                              fit: BoxFit.cover,
                                              width: double.infinity,
                                              height: 200.0,
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 10.sp),
                                        Text(
                                            'Ấm  chén thưởng trà - Bát Tràng độc quyền',
                                            style: text18.medium),
                                        SizedBox(height: 5.sp),
                                        Text('420.000 đ',
                                            style: text16.regular
                                                .copyWith(color: redColor)),
                                        SizedBox(height: 5.sp),
                                        Text('2 bids - 5d 6h left',
                                            style: text16.regular),
                                        SizedBox(
                                          height: 10.sp,
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(30.0),
                                            child: Image.asset(
                                              'assets/images/daugia2.png',
                                              fit: BoxFit.cover,
                                              width: double.infinity,
                                              height: 200.0,
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 10.sp),
                                        Text(
                                            'Ấm  chén thưởng trà - Bát Tràng độc quyền',
                                            style: text18.medium),
                                        SizedBox(height: 5.sp),
                                        Text('420.000 đ',
                                            style: text16.regular
                                                .copyWith(color: redColor)),
                                        SizedBox(height: 5.sp),
                                        Text('2 bids - 5d 6h left',
                                            style: text16.regular),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SingleChildScrollView(
                      padding: EdgeInsets.fromLTRB(16, 0, 16, 16),
                      child: Column(
                        children: [
                          // Sản phẩm 1
                          Container(
                            padding: EdgeInsets.all(8.0),
                            margin: EdgeInsets.symmetric(vertical: 8.0),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Row(
                              children: [
                                // Hình ảnh
                                Container(
                                  width: 100.0,
                                  height: 120.0,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/daugia1.png'),
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                ),
                                SizedBox(width: 8.0),
                                // Thông tin sản phẩm
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Lư hương hoa lam thế kỷ 17',
                                        style: text20.semiBold,
                                      ),
                                      SizedBox(height: 4.0),
                                      Row(
                                        children: [
                                          Text(
                                            '4.420.000 đ',
                                            style: text18.medium
                                                .copyWith(color: redColor),
                                          ),
                                          Icon(
                                            Icons.arrow_forward,
                                            color: blackColor,
                                          ),
                                          Text(
                                            '4.480.000 đ',
                                            style: text18.medium
                                                .copyWith(color: green),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 4.sp,
                                      ),
                                      Text(
                                        '6 đặt giá - còn 2 ngày 6 giờ',
                                        style: text18.medium,
                                      ),
                                      SizedBox(
                                        height: 4.sp,
                                      ),
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: ElevatedButton(
                                          onPressed: () {
                                            // Xử lý khi nhấn vào nút Đánh giá
                                          },
                                          style: ElevatedButton.styleFrom(
                                            primary: pink, // Đặt màu cho nút
                                          ),
                                          child: Text(
                                            'Chờ đóng giá',
                                            style: text18.medium
                                                .copyWith(color: whiteColor),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // Sản phẩm 2
                          Container(
                            padding: EdgeInsets.all(8.0),
                            margin: EdgeInsets.symmetric(vertical: 8.0),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Row(
                              children: [
                                // Hình ảnh
                                Container(
                                  width: 100.0,
                                  height: 120.0,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/daugia2.png'),
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                ),
                                SizedBox(width: 8.0),
                                // Thông tin sản phẩm
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Ấm chén thưởng trà',
                                        style: text20.semiBold,
                                      ),
                                      SizedBox(height: 4.0),
                                      Row(
                                        children: [
                                          Text(
                                            '420.000 đ',
                                            style: text18.medium
                                                .copyWith(color: redColor),
                                          ),
                                          Icon(
                                            Icons.arrow_forward,
                                            color: blackColor,
                                          ),
                                          Text(
                                            '480.000 đ',
                                            style: text18.medium
                                                .copyWith(color: green),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 4.sp,
                                      ),
                                      Text(
                                        '2 đặt giá - đã đóng phiên',
                                        style: text18.medium,
                                      ),
                                      SizedBox(
                                        height: 4.sp,
                                      ),
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: ElevatedButton(
                                          onPressed: () {
                                            // Xử lý khi nhấn vào nút Đánh giá
                                          },
                                          style: ElevatedButton.styleFrom(
                                            primary: green, // Đặt màu cho nút
                                          ),
                                          child: Text(
                                            'Thành công',
                                            style: text18.medium
                                                .copyWith(color: whiteColor),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          //sản phẩm 3
                          Container(
                            padding: EdgeInsets.all(8.0),
                            margin: EdgeInsets.symmetric(vertical: 8.0),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Row(
                              children: [
                                // Hình ảnh
                                Container(
                                  width: 100.0,
                                  height: 120.0,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/daugia2.png'),
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                ),
                                SizedBox(width: 8.0),
                                // Thông tin sản phẩm
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Ấm chén trà Bát Tràng độc quyền',
                                        style: text20.semiBold,
                                      ),
                                      SizedBox(height: 4.0),
                                      Row(
                                        children: [
                                          Text(
                                            '550.000 đ',
                                            style: text18.medium
                                                .copyWith(color: redColor),
                                          ),
                                          Icon(
                                            Icons.arrow_forward,
                                            color: blackColor,
                                          ),
                                          Text(
                                            '600.000 đ',
                                            style: text18.medium
                                                .copyWith(color: green),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 4.sp,
                                      ),
                                      Text(
                                        '3 đặt giá - đã đóng phiên',
                                        style: text18.medium,
                                      ),
                                      SizedBox(
                                        height: 4.sp,
                                      ),
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: ElevatedButton(
                                          onPressed: () {
                                            // Xử lý khi nhấn vào nút Đánh giá
                                          },
                                          style: ElevatedButton.styleFrom(
                                            primary: grey400, // Đặt màu cho nút
                                          ),
                                          child: Text(
                                            'Thất bại',
                                            style: text18.medium
                                                .copyWith(color: whiteColor),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          //sản phẩm 4
                          Container(
                            padding: EdgeInsets.all(8.0),
                            margin: EdgeInsets.symmetric(vertical: 8.0),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Row(
                              children: [
                                // Hình ảnh
                                Container(
                                  width: 100.0,
                                  height: 120.0,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/daugia1.png'),
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                ),
                                SizedBox(width: 8.0),
                                // Thông tin sản phẩm
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Lư hương hoa lam thế kỷ 17',
                                        style: text20.semiBold,
                                      ),
                                      SizedBox(height: 4.0),
                                      Row(
                                        children: [
                                          Text(
                                            '5.920.000 đ',
                                            style: text18.medium
                                                .copyWith(color: redColor),
                                          ),
                                          Icon(
                                            Icons.arrow_forward,
                                            color: blackColor,
                                          ),
                                          Text(
                                            '6.500.000 đ',
                                            style: text18.medium
                                                .copyWith(color: green),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 4.sp,
                                      ),
                                      Text(
                                        '6 đặt giá - còn 2 ngày 6 giờ',
                                        style: text18.medium,
                                      ),
                                      SizedBox(
                                        height: 4.sp,
                                      ),
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: ElevatedButton(
                                          onPressed: () {
                                            // Xử lý khi nhấn vào nút Đánh giá
                                          },
                                          style: ElevatedButton.styleFrom(
                                            primary: pink, // Đặt màu cho nút
                                          ),
                                          child: Text(
                                            'Chờ đóng giá',
                                            style: text18.medium
                                                .copyWith(color: whiteColor),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // Thêm các sản phẩm khác nếu cần
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ])));
  }
}

class ProductAuctions {
  final String imageName;
  final String title;
  final String minPrice;
  final String orderPrice;
  final String time;
  final String status;
  ProductAuctions(
      {required this.imageName,
      required this.title,
      required this.minPrice,
      required this.orderPrice,
      required this.status,
      required this.time});
}

List<ProductAuctions> yourAuctionList = [
  ProductAuctions(
      imageName: Png.daugia1,
      title: 'Sản phẩm 1',
      minPrice: '4.420.000',
      orderPrice: '4.800.000',
      time: '6 đặt giá - còn 2 ngày 6 giờ',
      status: 'chờ đóng giá'),
  ProductAuctions(
      imageName: Png.daugia2,
      title: 'Sản phẩm 1',
      minPrice: '4.420.000',
      orderPrice: '4.800.000',
      time: '6 đặt giá - còn 2 ngày 6 giờ',
      status: 'chờ đóng giá'),
  ProductAuctions(
      imageName: Png.daugia1,
      title: 'Sản phẩm 1',
      minPrice: '4.420.000',
      orderPrice: '4.800.000',
      time: '6 đặt giá - còn 2 ngày 6 giờ',
      status: 'chờ đóng giá'),
  ProductAuctions(
      imageName: Png.daugia2,
      title: 'Sản phẩm 1',
      minPrice: '4.420.000',
      orderPrice: '4.800.000',
      time: '6 đặt giá - còn 2 ngày 6 giờ',
      status: 'chờ đóng giá'),
  // Thêm các sản phẩm khác nếu cần
];
