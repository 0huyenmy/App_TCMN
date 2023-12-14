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
                    labelColor: whiteColor,
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
                image: NetworkImage(imageUrl),
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
          imageUrl:
              'https://lytachun.com/wp-content/uploads/2021/07/tui-xach-tho-cam-day-rut2.jpg',
          productName: 'Túi thổ cẩm',
          quantity: 2,
          totalAmount: 250000.0,
        ),
        ProductItem(
          imageUrl:
              'https://longhungphat.com/luutru/images/mat-hang/gui-hang-thu-cong-my-nghe-di-uc.jpg',
          productName: 'Gốm sơn mài',
          quantity: 1,
          totalAmount: 15000.0,
        ),
        ProductItem(
          imageUrl:
              'https://i.ex-cdn.com/taichinhdoanhnghiep.net.vn/files/mainguyen/2021/02/04/7-1-1709.jpg',
          productName: 'Bát lợn con',
          quantity: 2,
          totalAmount: 350000.0,
        ),
        ProductItem(
          imageUrl:
              'https://canmuagi.vn/wp-content/uploads/2023/05/hang-thu-cong-my-nghe-co.jpg',
          productName: 'Bình hoa thời Trần',
          quantity: 1,
          totalAmount: 1500000.0,
        ),
        ProductItem(
          imageUrl:
              'https://gotrangtri.vn/wp-content/uploads/2019/08/my-nghe-dua-3-1.jpg',
          productName: 'Bát làm từ dừa',
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
                image: NetworkImage(imageUrl),
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
          imageUrl:
              'https://gotrangtri.vn/wp-content/uploads/2019/08/thu-cong-my-nghe-lam-tu-dua-8.jpg',
          productName: 'Bát làm từ dừa',
          quantity: 2,
          totalAmount: 250000.0,
        ),
        ProductItemTab2(
          imageUrl:
              'https://nhacuangoai.vn/wp-content/uploads/2019/11/de%CC%80n-du%CC%9B%CC%81ng-scaled.jpg',
          productName: 'Đèn gốm trố thủng',
          quantity: 1,
          totalAmount: 15000.0,
        ),
        ProductItemTab2(
          imageUrl:
              'https://ninebegin.com/wp-content/uploads/2021/01/combo-3-ro-may-dan-thu-cong-hoa-tiet-hoa-dung-do-decor-1.jpg',
          productName: 'Bình hoa',
          quantity: 2,
          totalAmount: 350000.0,
        ),
        ProductItemTab2(
          imageUrl:
              'https://canmuagi.vn/wp-content/uploads/2023/05/hang-thu-cong-my-nghe-co.jpg',
          productName: 'Bình hoa thời Trần',
          quantity: 1,
          totalAmount: 1500000.0,
        ),
        ProductItemTab2(
          imageUrl:
              'https://gotrangtri.vn/wp-content/uploads/2019/08/my-nghe-dua-3-1.jpg',
          productName: 'Bát làm từ dừa',
          quantity: 1,
          totalAmount: 120000.0,
        ),
        // Add more ProductItems as needed...
      ],
    );
  }
}
