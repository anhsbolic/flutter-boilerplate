import 'package:flutter/material.dart';
import 'package:kencleng_flutter_mobile/common/style/my_color.dart';

class TextAreaDefault extends StatelessWidget {
  final String? initialValue;
  final double fontSize;
  final String? Function(String?)? onChanged;
  final FocusNode? focusNode;

  const TextAreaDefault({
    Key? key,
    this.initialValue,
    this.fontSize = 14,
    this.onChanged,
    this.focusNode,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      focusNode: focusNode,
      initialValue: initialValue,
      style: TextStyle(fontSize: fontSize),
      keyboardType: TextInputType.multiline,
      textInputAction: TextInputAction.newline,
      minLines: null,
      maxLines: null,
      expands: true,
      showCursor: true,
      onChanged: onChanged,
      textAlignVertical: TextAlignVertical.top,
      decoration: const InputDecoration(
        filled: true,
        fillColor: MyColor.bgFormInput,
        contentPadding: EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 11,
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
              width: 1, style: BorderStyle.solid, color: MyColor.primary),
          borderRadius: BorderRadius.all(
            Radius.circular(4),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: 1,
            style: BorderStyle.solid,
            color: Colors.grey,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(4),
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: 1,
            style: BorderStyle.solid,
            color: Colors.redAccent,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(4),
          ),
        ),
      ),
    );
  }
}
