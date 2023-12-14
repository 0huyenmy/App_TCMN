import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:journal_linker/assets/colors.dart';
import 'package:journal_linker/assets/index.dart';

class PostPage extends StatefulWidget {
  @override
  _PostPageState createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  //Uint8List? _image;
  TextEditingController _productNameController = TextEditingController();
  TextEditingController _priceController = TextEditingController();
  TextEditingController _descriptionController = TextEditingController();

  late ImagePicker _imagePicker;
  Uint8List? _imageBytes; // Sử dụng Uint8List để lưu trữ dữ liệu ảnh

  @override
  void initState() {
    super.initState();
    _imagePicker = ImagePicker();
  }

  Future<void> selectImage() async {
    XFile? image = await _imagePicker.pickImage(source: ImageSource.gallery);

    if (image != null) {
      List<int> imageBytes = await image.readAsBytes(); // Đọc dữ liệu từ XFile
      setState(() {
        _imageBytes =
            Uint8List.fromList(imageBytes); // Chuyển đổi thành Uint8List
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ĐĂNG TẢI SẢN PHẨM'),
        backgroundColor: maincolor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: _productNameController,
              decoration: InputDecoration(
                labelText: 'Tên Sản Phẩm',
                labelStyle: TextStyle(color: Colors.black),
                //contentPadding: EdgeInsets.symmetric(vertical: 10.0),
              ),
              style: text20.regular,
            ),
            TextField(
              controller: _productNameController,
              decoration: InputDecoration(
                labelText: 'Giá',
                labelStyle: TextStyle(color: Colors.black),
                //contentPadding: EdgeInsets.symmetric(vertical: 10.0),
              ),
              style: text20.regular,
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: _productNameController,
              decoration: InputDecoration(
                labelText: 'Mô tả sản phẩm',
                labelStyle: TextStyle(color: Colors.black),
                //contentPadding: EdgeInsets.symmetric(vertical: 10.0),
              ),
              style: text20.regular,
              maxLines: 4,
            ),
            SizedBox(height: 16.sp),
            Text('Tải ảnh lên', style: text20.regular,),
            SizedBox(height: 16.sp),
            GestureDetector(
              onTap: selectImage,
              child: _imageBytes != null
                  ? Image.memory(
                      _imageBytes!,
                      height: 200.sp,
                      width: 200.sp,
                      fit: BoxFit.cover,
                    )
                  : Icon(
                      Icons.camera_alt,
                      color: Colors.black,
                    ),
            ),
            SizedBox(
              height: 16.sp,
            ),
            Expanded(
              child: Align(
                alignment: Alignment.center,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: maincolor, // Set color for cancel button
                  ),
                  child: Text(
                    'Đăng Tải',
                    style: text20.medium.copyWith(color: whiteColor),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
