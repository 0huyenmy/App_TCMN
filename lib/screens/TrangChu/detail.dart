import 'package:flutter/material.dart';
import 'package:journal_linker/assets/colors.dart';
import 'package:journal_linker/assets/index.dart';
import 'package:journal_linker/widget/input/app_input.dart';

class ProductDetailPage extends StatefulWidget {
  final String imagePath;
  final String productName;
  final double price;
  final String description;
  final String sellerName;

  ProductDetailPage({
    required this.imagePath,
    required this.productName,
    required this.price,
    required this.description,
    required this.sellerName,
  });

  @override
  _ProductDetailPageState createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  //Dialog đặt hàng theo yêu cầu
  Future<void> _showCustomOrderDialog() async {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
            title: Text(
              'ĐẶT HÀNG THEO YÊU CẦU',
              style: text22.semiBold.copyWith(color: whiteColor),
            ),
            backgroundColor: maincolor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            content: SizedBox(
              height: 400.sp,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Số lượng',
                        style: text20.medium.copyWith(color: whiteColor),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 8.sp, bottom: 16.sp),
                    child: AppInput(
                      hintText: 'Nhập số lượng',
                      valueStyle: text16.medium,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Kích thước',
                        style: text20.medium.copyWith(color: whiteColor),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 8.sp, bottom: 16.sp),
                    child: AppInput(
                      hintText: 'Nhập kích thước',
                      valueStyle: text16.medium,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Mô tả',
                        style: text20.medium.copyWith(color: whiteColor),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 8.sp, bottom: 16.sp),
                    child: AppInput(
                      hintText: 'Nhập mô tả',
                      valueStyle: text16.medium,
                    ),
                  ),
                  // Add more form fields as needed...

                  SizedBox(height: 16.0), // Add space between form fields

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          // Handle custom order submission
                          Navigator.of(context).pop(); // Close the dialog
                        },
                        child: Text(
                          'Đặt hàng',
                          style: text18.medium.copyWith(color: whiteColor),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pop(
                              'đã gửi thành công'); // Close the dialog on cancel
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.grey, // Set color for cancel button
                        ),
                        child: Text(
                          'Hủy',
                          style: text18.medium.copyWith(color: whiteColor),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ));
      },
    );
  }
  int _quantity = 1;
  void _showAddToCartDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
            title: Text(
              'THÔNG TIN SẢN PHẨM',
              style: text22.semiBold.copyWith(color: whiteColor),
            ),
            backgroundColor: maincolor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.sp)),
            content: SizedBox(
              height: 400.sp,
              //width: 100.sp,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                //mainAxisSize: MainAxisSize.min,
                children: [
                  Image.network(
                    widget.imagePath,
                    width: 150.sp,
                    height: 150.0.sp,
                    //fit: BoxFit.cover,
                  ),
                  SizedBox(height: 16.0),
                  Text(
                    'Price: ${widget.price.toStringAsFixed(2)} VND',
                    style: text20.semiBold.copyWith(color: whiteColor),
                  ),
                  // Add more information about the product...

                  SizedBox(height: 16.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        icon: Icon(Icons.remove),
                        onPressed: () {
                          setState(() {
                            if (_quantity > 1) {
                              _quantity--;
                            }
                          });
                        },
                      ),
                      Text(
                        '$_quantity',
                        style: TextStyle(fontSize: 18.0),
                      ),
                      IconButton(
                        icon: Icon(Icons.add),
                        onPressed: () {
                          setState(() {
                            _quantity++;
                          });
                        },
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          // Handle custom order submission
                          Navigator.of(context).pop(); // Close the dialog
                        },
                        child: Text(
                          'Thêm vào giỏ hàng',
                          style: text18.medium.copyWith(color: whiteColor),
                        ),
                      ),
                      SizedBox(width: 10.sp,),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pop(
                              'đã gửi thành công'); // Close the dialog on cancel
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.grey, // Set color for cancel button
                        ),
                        child: Text(
                          'Hủy',
                          style: text18.medium.copyWith(color: whiteColor),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: maincolor,
        title: Text('CHI TIẾT SẢN PHẨM'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              widget.imagePath,
              width: double.infinity,
              height: 200.0,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16.0),
            Text(
              widget.productName,
              style: text26.semiBold,
            ),
            SizedBox(height: 8.0),
            Text(
              'Price: ${widget.price.toStringAsFixed(2)} VND',
              style: text20.semiBold.copyWith(color: Colors.green),
            ),
            SizedBox(height: 8.0),
            Text(
              'Description:',
              style: text20.semiBold,
            ),
            SizedBox(height: 8.0),
            Text(
              widget.description,
              style: text20.regular,
            ),
            SizedBox(height: 8.0),
            Text(
              'Seller: ${widget.sellerName}',
              style: text20.regular,
            ),
            SizedBox(height: 20.sp),
            Column(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 240.0.sp,
                  child: ElevatedButton(
                    onPressed: () {
                      // Add your logic for 'Nhắn tin' button
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue, // Set color for this button
                    ),
                    child: Text(
                      'Nhắn tin',
                      style: text20.regular.copyWith(color: whiteColor),
                    ),
                  ),
                ),
                SizedBox(height: 8.0), // Add space between buttons
                Container(
                  width: 240.0.sp,
                  child: ElevatedButton(
                    onPressed: () {
                      // Add your logic for 'Mua ngay' button
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green, // Set color for this button
                    ),
                    child: Text('Mua ngay',
                        style: text20.regular.copyWith(color: whiteColor)),
                  ),
                ),
                SizedBox(height: 8.0), // Add space between buttons
                Container(
                  width: 240.0.sp,
                  child: ElevatedButton(
                    onPressed: () {
                      _showAddToCartDialog();
                      // Add your logic for 'Thêm vào giỏ hàng' button
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.orange, // Set color for this button
                    ),
                    child: Text('Thêm vào giỏ hàng',
                        style: text20.regular.copyWith(color: whiteColor)),
                  ),
                ),
                SizedBox(height: 8.0), // Add space between buttons
                Container(
                  width: 240.0.sp,
                  child: ElevatedButton(
                    onPressed: () {
                      _showCustomOrderDialog();
                      // Add your logic for 'Đặt hàng theo yêu cầu' button
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.red, // Set color for this button
                    ),
                    child: Text('Đặt hàng theo yêu cầu',
                        style: text20.regular.copyWith(color: whiteColor)),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
