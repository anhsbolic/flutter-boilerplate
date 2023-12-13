import 'package:flutter/material.dart';
import 'package:kencleng_flutter_mobile/common/style/my_color.dart';

class InputDefault extends StatelessWidget {
  final String? initialValue;
  final double fontSize;
  final TextInputAction textInputAction;
  final TextInputType textInputType;
  final String? suffixText;
  final String? Function(String?)? onChanged;

  const InputDefault({
    Key? key,
    this.initialValue,
    this.fontSize = 14,
    this.textInputAction = TextInputAction.next,
    this.textInputType = TextInputType.text,
    this.suffixText,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: initialValue,
      style: TextStyle(fontSize: fontSize),
      keyboardType: textInputType,
      showCursor: true,
      textInputAction: textInputAction,
      onChanged: onChanged,
      decoration: InputDecoration(
        suffixText: suffixText,
        filled: true,
        fillColor: MyColor.bgFormInput,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 11,
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
              width: 1, style: BorderStyle.solid, color: MyColor.primary),
          borderRadius: BorderRadius.all(
            Radius.circular(4),
          ),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            width: 1,
            style: BorderStyle.solid,
            color: Colors.grey,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(4),
          ),
        ),
        focusedErrorBorder: const OutlineInputBorder(
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

validatorDefault() {
  return ((value) {
    if (value!.isEmpty) {
      return "required";
    }
    return null;
  });
}
