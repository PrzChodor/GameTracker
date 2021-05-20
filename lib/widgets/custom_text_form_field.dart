import 'package:flutter/material.dart';
import 'package:gametracker/helpers/custom_colors.dart';
import 'package:gametracker/helpers/focus_next_field.dart';

class CustomTextFormField extends StatefulWidget {
  final TextEditingController controller;
  final IconData prefixIcon;
  final String labelText;
  final bool isValid;
  final String errorText;
  final bool isLast;
  final Function(String)? onFieldSubmitted;

  ///TextFormField with decoration fitting to the design of the app
  const CustomTextFormField(
      {Key? key,
      required this.controller,
      required this.prefixIcon,
      required this.labelText,
      required this.isValid,
      required this.errorText,
      this.isLast = false,
      this.onFieldSubmitted})
      : super(key: key);

  @override
  _CustomTextFormFieldState createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      TextFormField(
          controller: widget.controller,
          autocorrect: false,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          style: TextStyle(color: CustomColors.backgroundColor),
          cursorColor: CustomColors.backgroundColor,
          textInputAction:
              widget.isLast ? TextInputAction.done : TextInputAction.next,
          onEditingComplete: widget.isLast
              ? () => FocusScope.of(context).unfocus()
              : () => FocusScope.of(context).focusNextField(),
          onFieldSubmitted: widget.onFieldSubmitted,
          decoration: InputDecoration(
              border: UnderlineInputBorder(
                borderSide: BorderSide(style: BorderStyle.none),
                borderRadius: BorderRadius.circular(15),
              ),
              filled: true,
              fillColor: widget.isValid
                  ? CustomColors.primaryColor
                  : CustomColors.errorColor,
              prefixIcon:
                  Icon(widget.prefixIcon, color: CustomColors.backgroundColor),
              labelText: widget.labelText,
              contentPadding: const EdgeInsets.symmetric(vertical: 5.0),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(style: BorderStyle.none),
                borderRadius: BorderRadius.circular(15),
              ),
              errorBorder: UnderlineInputBorder(
                borderSide: BorderSide(style: BorderStyle.none),
                borderRadius: BorderRadius.circular(15),
              ),
              focusedErrorBorder: UnderlineInputBorder(
                borderSide: BorderSide(style: BorderStyle.none),
                borderRadius: BorderRadius.circular(15),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(style: BorderStyle.none),
                borderRadius: BorderRadius.circular(15),
              ),
              labelStyle: TextStyle(color: CustomColors.backgroundColor),
              errorMaxLines: 2)),
      AnimatedSize(
        duration: Duration(milliseconds: 300),
        vsync: this,
        child: AnimatedOpacity(
          opacity: widget.isValid ? 0 : 1,
          duration: Duration(milliseconds: 300),
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Container(
              height: widget.isValid ? 0 : null,
              child: Row(children: [
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Icon(
                    Icons.error,
                    color: CustomColors.errorColor,
                    size: widget.isValid ? 0 : 24,
                  ),
                ),
                Expanded(
                    child: Text(
                  widget.errorText,
                  style:
                      TextStyle(color: CustomColors.errorColor, fontSize: 12),
                ))
              ]),
            ),
          ),
        ),
      )
    ]);
  }
}
