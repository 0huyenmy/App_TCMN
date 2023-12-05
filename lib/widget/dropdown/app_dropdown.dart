import 'package:journal_linker/assets/index.dart';
import 'package:journal_linker/widget/input/income_textfield.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppDropDown extends StatefulWidget {
  final List<String> data;
  final String selected;
  final ValueChanged<String?> onChanged;
  final String? prefixIcon;
  final bool hasBorder;
  final bool isEnable;
  final double? itemSize;
  final Color? itemColor;
  final double? selectSize;
  final Color? selectColor;
  final double? borderRadius;
  final Color? backgroundColor;
  AppDropDown({
    required this.data,
    required this.selected,
    required this.onChanged,
    this.hasBorder = true,
    this.prefixIcon,
    this.isEnable = true,
    this.itemSize = 14,
    this.itemColor = Colors.black,
    this.selectSize = 14,
    this.selectColor = Colors.black,
    this.borderRadius = 16,
    this.backgroundColor = Colors.white,
  });

  @override
  _AppDropDownState createState() => _AppDropDownState();
}

class _AppDropDownState extends State<AppDropDown> {
  String selected = '';

  @override
  void initState() {
    selected = widget.selected;
    super.initState();
  }

  @override
  void didUpdateWidget(covariant AppDropDown oldWidget) {
    selected = widget.selected;
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return widget.isEnable
        ? Container(
            child: DropdownSearch<String>(
              mode: Mode.MENU,
              items: widget.data,
              dropDownButton: ImageAssets.svgAssets(
                'Svg.icDown',
                color: dLabelColor,
              ),
              popupItemBuilder: (BuildContext context, item, bool isSelected) {
                return Container(
                  decoration: BoxDecoration(
                    color: isSelected ? Color(0xfff0fcfe) : Colors.white,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  child: Text(
                    item.toString(),
                    style: TextStyle(
                      fontSize: widget.itemSize,
                      color: widget.itemColor,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                );
              },
              onChanged: widget.onChanged,
              dropdownSearchDecoration: widget.hasBorder
                  ? InputDecoration(
                      fillColor: widget.backgroundColor,
                      filled: true,
                      hintText: widget.selected,
                      hintStyle: TextStyle(
                        fontSize: widget.selectSize,
                        color: widget.selectColor,
                        fontWeight: FontWeight.normal,
                      ),
                      prefixIcon: widget.prefixIcon != null
                          ? Container(
                              width: 30,
                              child: SvgPicture.asset(widget.prefixIcon!),
                            )
                          : Container(
                              width: 16.sp,
                            ),
                      suffixIcon: null,
                      prefixIconConstraints:
                          BoxConstraints(minWidth: 0, maxWidth: 64),
                      focusedBorder: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.circular(widget.borderRadius!),
                          borderSide:
                              BorderSide(color: backgroundColor, width: 1)),
                      contentPadding:
                          EdgeInsets.only(top: 0, bottom: 0, left: 0, right: 0),
                      border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.circular(widget.borderRadius!),
                          borderSide:
                              BorderSide(color: Colors.black, width: 1)),
                      enabledBorder: OutlineInputBorder(
                        borderRadius:
                            BorderRadius.circular(widget.borderRadius!),
                        borderSide:
                            BorderSide(color: Color(0xffEEF2F6), width: 1),
                      ),
                      disabledBorder: OutlineInputBorder(
                        borderRadius:
                            BorderRadius.circular(widget.borderRadius!),
                        borderSide: BorderSide(color: backgroundColor),
                      ),
                    )
                  : InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      prefixIcon: widget.prefixIcon != null
                          ? Container(
                              padding: const EdgeInsets.only(left: 12),
                              width: 30,
                              child: SvgPicture.asset(widget.prefixIcon!),
                            )
                          : Container(
                              width: 16.sp,
                            ),
                      suffixIcon: null,
                      prefixIconConstraints:
                          BoxConstraints(minWidth: 0, maxWidth: 100),
                      hintStyle: TextStyle(fontSize: 12),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide:
                              BorderSide(color: Colors.white, width: 2)),
                      contentPadding: EdgeInsets.only(
                          top: 4, bottom: 4, left: 16, right: 20),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide:
                              BorderSide(color: Colors.white, width: 2)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide:
                              BorderSide(color: Colors.white, width: 2)),
                    ),
            ),
          )
        : Stack(
            children: [
              IncomeTextFiled(
                labelText: selected,
                isEnable: true,
                prefixIcon: widget.prefixIcon,
              ),
              Positioned(
                right: 20,
                top: 20,
                child: ImageAssets.svgAssets(
                  'Svg.icDown',
                  color: dLabelColor,
                ),
              ),
            ],
          );
  }
}
