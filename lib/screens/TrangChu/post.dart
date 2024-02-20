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
            Text(
              'Tên sản phẩm',
              style: text20.medium,
            ),
            SizedBox(height: 16.sp),
            Container(
              height: 50.sp, // Tùy chỉnh chiều cao của TextField
              decoration: BoxDecoration(
                border:
                    Border.all(color: Colors.grey), // Màu viền của TextField
                borderRadius: BorderRadius.circular(8), // Độ cong của các góc
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 10), // Khoảng cách giữa nội dung và viền
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Nhập tên sản phẩm',
                    border:
                        InputBorder.none, // Loại bỏ viền mặc định của TextField
                  ),
                ),
              ),
            ),
            SizedBox(height: 16.sp),
            Text(
              'Giá',
              style: text20.medium,
            ),
            SizedBox(height: 16.sp),
            Container(
              height: 50.sp, // Tùy chỉnh chiều cao của TextField
              decoration: BoxDecoration(
                border:
                    Border.all(color: Colors.grey), // Màu viền của TextField
                borderRadius: BorderRadius.circular(8), // Độ cong của các góc
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 10), // Khoảng cách giữa nội dung và viền
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Nhập giá phẩm',
                    border:
                        InputBorder.none, // Loại bỏ viền mặc định của TextField
                  ),
                ),
              ),
            ),
            SizedBox(height: 16.sp),
            Text(
              'Mô tả',
              style: text20.medium,
            ),
            SizedBox(height: 16.sp),
            Container(
              height: 100.sp, // Tùy chỉnh chiều cao của TextField
              decoration: BoxDecoration(
                border:
                    Border.all(color: Colors.grey), // Màu viền của TextField
                borderRadius: BorderRadius.circular(8), // Độ cong của các góc
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 10), // Khoảng cách giữa nội dung và viền
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Nhập mô tả',
                    border:
                        InputBorder.none, // Loại bỏ viền mặc định của TextField
                  ),
                ),
              ),
            ),
            SizedBox(height: 16.sp),
            SizedBox(height: 16.sp),
            Text(
              'Tải ảnh lên',
              style: text20.medium,
            ),
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
