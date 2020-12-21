import 'package:ck_login/constants.dart';
import 'package:flutter/cupertino.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final Function onPress;
  final double width;
  final bool isLoading;
  final EdgeInsets padding;

  final _ButtonStyle _style;

  const CustomButton([
    this.title,
    this.onPress,
    this.width,
    this.isLoading,
    this.padding,
    _ButtonStyle style,
  ]) : _style = style;

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: EdgeInsets.zero,
      onPressed: isLoading ? null : onPress,
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        height: 54,
        width: width,
        padding: padding,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: onPress == null ? _style.disabledBgColor : _style.bgColor,
          border: _style.border,
          borderRadius: BorderRadius.circular(13),
        ),
        child: isLoading
            ? CupertinoActivityIndicator()
            : AnimatedDefaultTextStyle(
                duration: Duration(milliseconds: 200),
                child: Text(title),
                style: TextStyle(
                  fontSize: 16,
                  decoration: _style.textDecoration,
                  color: onPress == null
                      ? _style.disabledTextColor
                      : _style.textColor,
                  fontWeight: _style.fontWeight,
                ),
              ),
      ),
    );
  }

  factory CustomButton.primary({
    @required String title,
    @required Function onPress,
    EdgeInsets padding: EdgeInsets.zero,
    double width,
    bool isLoading = false,
  }) {
    return CustomButton(
      title,
      onPress,
      width,
      isLoading,
      padding,
      _ButtonStyle(
          bgColor: CustomColors.buttonBackGroundColor,
          textColor: CustomColors.white,
          disabledBgColor: CustomColors.disabledButtonBackGroundColor,
          disabledTextColor: CustomColors.disabledTextColor),
    );
  }

  factory CustomButton.secondary({
    @required String title,
    @required Function onPress,
    EdgeInsets padding: EdgeInsets.zero,
    double width,
    bool isLoading = false,
  }) {
    return CustomButton(
      title,
      onPress,
      width,
      isLoading,
      padding,
      _ButtonStyle(
        border: onPress == null
            ? Border.all(
                width: 1, color: CustomColors.disabledButtonBackGroundColor)
            : Border.all(width: 1, color: CustomColors.buttonBackGroundColor),
        textColor: CustomColors.white,
        disabledTextColor: CustomColors.disabledTextColor,
      ),
    );
  }
}

class _ButtonStyle {
  final Color bgColor;
  final Color textColor;
  final Color disabledBgColor;
  final Color disabledTextColor;
  final FontWeight fontWeight;
  final Border border;
  final TextDecoration textDecoration;

  _ButtonStyle({
    this.border,
    this.textColor,
    this.disabledBgColor,
    this.disabledTextColor,
    this.fontWeight,
    this.bgColor,
    this.textDecoration,
  });
}
