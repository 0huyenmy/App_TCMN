import 'package:flutter/material.dart';
import 'package:journal_linker/assets/index.dart';
import 'package:journal_linker/widget/dismiss_keyboard_widget.dart';

class GioHangPage extends StatefulWidget {
  const GioHangPage({Key? key}) : super(key: key);

  @override
  State<GioHangPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<GioHangPage> {
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: maincolor,
                    borderRadius: BorderRadius.circular(30.0),
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
                        child: Text('Giỏ hàng'),
                      ),
                      Tab(
                        child: Text('Các đơn hàng'),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: TabBarView(
                    children: [
                      // Content for the first tab
                      Tab1Content(),
                      // Content for the second tab
                      Tab2Content(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ProductItem extends StatelessWidget {
  final String imageUrl;
  final String productName;
  final int quantity;
  final double totalAmount;

  ProductItem({
    required this.imageUrl,
    required this.productName,
    required this.quantity,
    required this.totalAmount,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 16, 0, 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Left side: Image
          Container(
            width: 120.0.sp,
            height: 120.0.sp,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              image: DecorationImage(
                image: AssetImage(imageUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Right side: Product details
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    productName,
                    style: text22.semiBold,
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    'Quantity: $quantity',
                    style: text20.regular,
                  ),
                  SizedBox(
                    height: 8.sp,
                  ),
                  Text(
                    'Total: ${totalAmount.toStringAsFixed(2)} VND',
                    style: text20.regular,
                  ),
                ],
              ),
            ),
          ),
          // Delete button
          IconButton(
            icon: Icon(Icons.delete),
            onPressed: () {
              // Handle delete action
            },
          ),
        ],
      ),
    );
  }
}

class Tab1Content extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ProductItem(
          imageUrl: Png.img_bat_dua,
          productName: 'Bát làm từ dừa',
          quantity: 2,
          totalAmount: 250000.0,
        ),
        ProductItem(
          imageUrl: Png.img_dia_da,
          productName: 'Dĩa đá sơn mài',
          quantity: 1,
          totalAmount: 15000.0,
        ),
        ProductItem(
          imageUrl: Png.img_binh_son_mai,
          productName: 'Bình sơn mài',
          quantity: 2,
          totalAmount: 350000.0,
        ),
        ProductItem(
          imageUrl: Png.img_gio_tre,
          productName: 'Giỏ tre đan',
          quantity: 1,
          totalAmount: 1500000.0,
        ),
        ProductItem(
          imageUrl: Png.img_may_go,
          productName: 'Mây gỗ khắc',
          quantity: 1,
          totalAmount: 120000.0,
        ),
        // Add more ProductItems as needed...
        SizedBox(height: 16.0), // Space between product list and total amount
        // Total amount and delete button
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Total Amount: \4000000.0 VND',
              style: text20.semiBold,
            ),
            ElevatedButton(
              onPressed: () {
                // Handle delete all action
              },
              style: ElevatedButton.styleFrom(
                primary: maincolor, // Đặt màu cho nút
              ),
              child: Text(
                'Delete All',
                style: text20.medium.copyWith(color: whiteColor),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class ProductItemTab2 extends StatelessWidget {
  final String imageUrl;
  final String productName;
  final int quantity;
  final double totalAmount;

  ProductItemTab2({
    required this.imageUrl,
    required this.productName,
    required this.quantity,
    required this.totalAmount,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 16, 0, 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Left side: Image
          Container(
            width: 140.0.sp,
            height: 130.0.sp,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              image: DecorationImage(
                image: AssetImage(imageUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Right side: Product details
          Expanded(
            child: Padding(
              padding: EdgeInsets.fromLTRB(16, 0, 0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    productName,
                    style: text22.semiBold,
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    'Quantity: $quantity',
                    style: text20.regular,
                  ),
                  SizedBox(
                    height: 8.sp,
                  ),
                  Text(
                    'Total: ${totalAmount.toStringAsFixed(2)} VND',
                    style: text20.regular,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: ElevatedButton(
                      onPressed: () {
                        // Xử lý khi nhấn vào nút Đánh giá
                      },
                      style: ElevatedButton.styleFrom(
                        primary: maincolor, // Đặt màu cho nút
                      ),
                      child: Text(
                        'Đánh giá',
                        style: text18.medium.copyWith(color: whiteColor),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Delete button
        ],
      ),
    );
  }
}

class Tab2Content extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ProductItemTab2(
          imageUrl: Png.img_bat_dua,
          productName: 'Bát làm từ dừa',
          quantity: 2,
          totalAmount: 250000.0,
        ),
        ProductItemTab2(
          imageUrl: Png.img_trang_suc,
          productName: 'Trâm cài',
          quantity: 1,
          totalAmount: 15000.0,
        ),
        ProductItemTab2(
          imageUrl: Png.img_ly_son_mai,
          productName: 'Ly nước sơn mài',
          quantity: 2,
          totalAmount: 350000.0,
        ),
        ProductItemTab2(
          imageUrl: Png.img_ro_tre,
          productName: 'Rổ đan bằng tre',
          quantity: 1,
          totalAmount: 1500000.0,
        ),
        ProductItemTab2(
          imageUrl: 
          Png.img_tui_tho_cam,
          productName: 'Túi thổ cẩm',
          quantity: 1,
          totalAmount: 120000.0,
        ),
        // Add more ProductItems as needed...
      ],
    );
  }
}
