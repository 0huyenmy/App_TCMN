import 'package:flutter/material.dart';
import 'package:journal_linker/assets/index.dart';
import 'package:journal_linker/widget/input/app_input.dart';

class ChangePassPage extends StatefulWidget {
  const ChangePassPage({Key? key}) : super(key: key);

  @override
  State<ChangePassPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<ChangePassPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: maincolor,
          title: Text('ĐỔI MẬT KHẨU'),
        ),
        body: SafeArea(
            child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 23.sp),
          child: Column(
            children: [
              SizedBox(height: 20.sp),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Mật khẩu hiện tại',
                    style: text20.medium,
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 8.sp, bottom: 16.sp),
                child: AppInput(
                  hintText: 'Nhập mật khẩu hiện tại',
                  valueStyle: text16.medium,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Mật khẩu mới',
                    style: text20.medium,
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 8.sp, bottom: 16.sp),
                child: AppInput(
                  hintText: 'Nhập mật khẩu mới',
                  valueStyle: text16.medium,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Xác nhận mật khẩu',
                    style: text20.medium,
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 8.sp, bottom: 16.sp),
                child: AppInput(
                  hintText: 'Nhập lại mật khẩu mới',
                  valueStyle: text16.medium,
                ),
              ),
              // Add more form fields as needed...

              SizedBox(height: 16.0), // Add space between form fields

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          primary: maincolor, // Set color for cancel button
                        ),
                        child: Text(
                          'Lưu thay đổi',
                          style: text20.medium.copyWith(color: whiteColor),
                        ),
                      ),
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
        )));
  }
}
