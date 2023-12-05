import 'package:journal_linker/assets/index.dart';
import 'package:journal_linker/widget/button/button_primary.dart';
import 'package:journal_linker/widget/button/outline_button.dart';
import 'package:journal_linker/widget/touchable_opacity.dart';
import 'package:flutter/material.dart';

class DialogConfirm extends StatefulWidget {
  String? title;
  double? titleSize;
  double? horizontal;
  double? iconSize;
  String? body;
  double? bodySize;
  String? txtCancel;
  Function? onCancel;
  String? txtAccept;
  Function? onAccept;
  String? icon;
  DialogConfirm({
    Key? key,
    this.title,
    this.titleSize,
    this.horizontal,
    this.iconSize,
    this.body,
    this.bodySize,
    this.txtCancel,
    this.onCancel,
    this.txtAccept,
    this.onAccept,
    this.icon,
  });

  @override
  State<DialogConfirm> createState() => _DialogConfirmState();
  static Future show(
    BuildContext context, {
    String? title,
    double? titleSize,
    double? horizontal,
    double? iconSize,
    String? body,
    double? bodySize,
    String? txtCancel,
    Function? onCancel,
    String? txtAccept,
    Function? onAccept,
    String? icon,
  }) async {
    await showDialog(
        context: context,
        builder: (context) {
          return WillPopScope(
              child: DialogConfirm(
                title: title,
                titleSize: titleSize,
                horizontal: horizontal,
                iconSize: iconSize,
                body: body,
                bodySize: bodySize,
                txtCancel: txtCancel,
                onCancel: onCancel,
                txtAccept: txtAccept,
                onAccept: onAccept,
                icon: icon,
              ),
              onWillPop: () => Future.value(true));
        });
  }
}

class _DialogConfirmState extends State<DialogConfirm> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: widget.horizontal ?? 20.sp),
      alignment: Alignment.center,
      child: Material(
        color: whiteColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.sp),
        ),
        type: MaterialType.card,
        child: Padding(
          padding: EdgeInsets.fromLTRB(20.sp, 12.sp, 20.sp, 30.sp),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              widget.icon != null
                  ? ImageAssets.svgAssets(
                      '${widget.icon}',
                      width: widget.iconSize ?? 25.sp,
                    )
                  : SizedBox(),
              SizedBox(
                height: 10.sp,
              ),
              widget.title != null
                  ? Text(
                      '${widget.title}',
                      textAlign: TextAlign.center,
                      maxLines: 3,
                      style: TextStyle(
                        fontSize: widget.titleSize ?? 24.sp,
                        color: blackColor,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  : SizedBox(),
              widget.body != null
                  ? Column(
                      children: [
                        SizedBox(
                          height: 10.sp,
                        ),
                        Text(
                          '${widget.body}',
                          textAlign: TextAlign.center,
                          maxLines: 3,
                          style: TextStyle(
                            fontSize: widget.bodySize ?? 18.sp,
                            color: kcBackground,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    )
                  : SizedBox(),
              SizedBox(
                height: 30.sp,
              ),
              Row(
                mainAxisAlignment: widget.txtCancel == null
                    ? MainAxisAlignment.center
                    : MainAxisAlignment.spaceBetween,
                children: [
                  widget.txtCancel != null
                      ? Container(
                          width: 165.sp,
                          height: 40.sp,
                          child: ButtonOutline(
                            onPress: () {
                              Navigator.pop(context);
                            },
                            text: '${widget.txtCancel}',
                            textSize: 16.sp,
                          ),
                        )
                      : SizedBox(),
                  widget.txtAccept != null
                      ? Container(
                          width: 165.sp,
                          height: 40.sp,
                          child: ButtonPrimary(
                            onPress: widget.onAccept!,
                            text: '${widget.txtAccept}',
                            textSize: 16.sp,
                          ),
                        )
                      : SizedBox(),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
