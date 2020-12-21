import 'package:ck_login/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InputForm extends TextFormField {
  static const _contentPadding = const EdgeInsets.symmetric(horizontal: 15.0);
  static const _hintStyle =
      const TextStyle(color: CustomColors.disabledTextColor);

  static const _borderRadius = 13.0;
  static const _borderWidth = 1.0;

  static const _unFocusedBorder = const OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(_borderRadius)),
    borderSide: const BorderSide(
      width: _borderWidth,
      color: CustomColors.inputBackGroundColor,
    ),
  );

  static const _focusedBorder = const OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(_borderRadius)),
    borderSide: const BorderSide(
      width: _borderWidth,
      color: CustomColors.buttonBackGroundColor,
    ),
  );

  static const _errorStyle = const TextStyle(color: Colors.red, fontSize: 16);

  InputForm({
    TextEditingController controller,
    InputDecoration decoration,
    ValueChanged<String> onChanged,
    TextInputType textInputType,
    FormFieldValidator<String> validator,
    List<TextInputFormatter> inputFormatters,
  }) : super(
          inputFormatters: inputFormatters,
          controller: controller,
          onChanged: onChanged,
          keyboardType: textInputType,
          validator: validator,
          decoration: decoration,
          style: TextStyle(
            color: CustomColors.white,
            fontSize: 16,
          ),
        );

  factory InputForm.filled({
    TextEditingController controller,
    ValueChanged<String> onChanged,
    Widget suffixIcon,
    TextInputType textInputType,
    FormFieldValidator<String> validator,
    List<TextInputFormatter> inputFormatters,
  }) {
    return InputForm(
      onChanged: onChanged,
      controller: controller,
      textInputType: textInputType,
      inputFormatters: inputFormatters,
      validator: validator,
      decoration: InputDecoration(
        filled: true,
        fillColor: CustomColors.inputBackGroundColor,
        suffixIcon: suffixIcon,
        hintStyle: _hintStyle,
        contentPadding: _contentPadding,
        errorStyle: _errorStyle,
        enabledBorder: _unFocusedBorder,
        focusedBorder: _focusedBorder,
      ),
    );
  }
}
