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
        child: Column(
          children: [
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
                                  padding: EdgeInsets.symmetric(vertical: 10.sp),
                                  margin: EdgeInsets.symmetric(horizontal: 5.sp),
                                  child: Column(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(right: 10.sp),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.stretch,
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(10.0),
                                              ),
                                              child: ClipRRect(
                                                borderRadius: BorderRadius.circular(30.0),
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
                                              style: TextStyle(
                                                fontSize: 16.sp,
                                                color: h1,
                                              ),
                                            ),
                                            SizedBox(height: 5.sp),
                                            Text(
                                              '4.420.000 đ',
                                              style: TextStyle(
                                                fontSize: 13.sp,
                                                color: blackColor,
                                              ),
                                            ),
                                            SizedBox(height: 5.sp),
                                            Text(
                                              '6 bids - 2d 6h left',
                                              style: TextStyle(
                                                fontSize: 13.sp,
                                                color: blackColor,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(right: 10.sp, top: 10.sp),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.stretch,
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(10.0),
                                              ),
                                              child: ClipRRect(
                                                borderRadius: BorderRadius.circular(30.0),
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
                                              style: TextStyle(
                                                fontSize: 16.sp,
                                                color: h1,
                                              ),
                                            ),
                                            SizedBox(height: 5.sp),
                                            Text(
                                              '4.420.000 đ',
                                              style: TextStyle(
                                                fontSize: 13.sp,
                                                color: blackColor,
                                              ),
                                            ),
                                            SizedBox(height: 5.sp),
                                            Text(
                                              '6 bids - 2d 6h left',
                                              style: TextStyle(
                                                fontSize: 13.sp,
                                                color: blackColor,
                                              ),
                                            ),
                                            Container(
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(10.0),
                                              ),
                                              child: ClipRRect(
                                                borderRadius: BorderRadius.circular(30.0),
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
                                              style: TextStyle(
                                                fontSize: 16.sp,
                                                color: h1,
                                              ),
                                            ),
                                            SizedBox(height: 5.sp),
                                            Text(
                                              '4.420.000 đ',
                                              style: TextStyle(
                                                fontSize: 13.sp,
                                                color: blackColor,
                                              ),
                                            ),
                                            SizedBox(height: 5.sp),
                                            Text(
                                              '6 bids - 2d 6h left',
                                              style: TextStyle(
                                                fontSize: 13.sp,
                                                color: blackColor,
                                              ),
                                            ),
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
                                  margin: EdgeInsets.symmetric(horizontal: 5.sp),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.stretch,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(30.0),
                                          child: Image.asset(
                                            'assets/images/daugia2.png',
                                            fit: BoxFit.cover,
                                            width: double.infinity,
                                            height: 210.0,
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 10.sp),
                                      Text(
                                        'Ấm Chén Thưởng Trà - Bát Tràng Độc Quyền',
                                        style: TextStyle(
                                          fontSize: 16.sp,
                                          color: h1,
                                        ),
                                      ),
                                      SizedBox(height: 5.sp),
                                      Text(
                                        '420.000 đ',
                                        style: TextStyle(
                                          fontSize: 13.sp,
                                          color: blackColor,
                                        ),
                                      ),
                                      SizedBox(height: 5.sp),
                                      Text(
                                        '2 bids - 5d 6h left',
                                        style: TextStyle(
                                          fontSize: 13.sp,
                                          color: blackColor,
                                        ),
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(30.0),
                                          child: Image.asset(
                                            'assets/images/daugia2.png',
                                            fit: BoxFit.cover,
                                            width: double.infinity,
                                            height: 210.0,
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 10.sp),
                                      Text(
                                        'Ấm Chén Thưởng Trà - Bát Tràng Độc Quyền',
                                        style: TextStyle(
                                          fontSize: 16.sp,
                                          color: h1,
                                        ),
                                      ),
                                      SizedBox(height: 5.sp),
                                      Text(
                                        '420.000 đ',
                                        style: TextStyle(
                                          fontSize: 13.sp,
                                          color: blackColor,
                                        ),
                                      ),
                                      SizedBox(height: 5.sp),
                                      Text(
                                        '2 bids - 5d 6h left',
                                        style: TextStyle(
                                          fontSize: 13.sp,
                                          color: blackColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.stretch,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(30.0),
                                          child: Image.asset(
                                            'assets/images/daugia2.png',
                                            fit: BoxFit.cover,
                                            width: double.infinity,
                                            height: 210.0,
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 10.sp),
                                      Text(
                                        'Ấm Chén Thưởng Trà - Bát Tràng Độc Quyền',
                                        style: TextStyle(
                                          fontSize: 16.sp,
                                          color: h1,
                                        ),
                                      ),
                                      SizedBox(height: 5.sp),
                                      Text(
                                        '420.000 đ',
                                        style: TextStyle(
                                          fontSize: 13.sp,
                                          color: blackColor,
                                        ),
                                      ),
                                      SizedBox(height: 5.sp),
                                      Text(
                                        '2 bids - 5d 6h left',
                                        style: TextStyle(
                                          fontSize: 13.sp,
                                          color: blackColor,
                                        ),
                                      ),
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
                  Container(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
