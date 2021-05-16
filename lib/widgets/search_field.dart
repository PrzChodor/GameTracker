import 'package:flutter/material.dart';
import 'package:gametracker/helpers/custom_colors.dart';

class SearchField extends StatefulWidget {
  final Function(String) onSubmitted;

  const SearchField({Key? key, required this.onSubmitted}) : super(key: key);

  @override
  _SearchFieldState createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Card(
        color: CustomColors.backgroundColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        elevation: 4,
        child: SizedBox(
          height: 48,
          child: TextField(
            cursorColor: CustomColors.secondaryColor,
            onSubmitted: widget.onSubmitted,
            textInputAction: TextInputAction.search,
            textAlignVertical: TextAlignVertical.center,
            style: TextStyle(color: CustomColors.primaryColor, fontSize: 18),
            decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.search,
                color: CustomColors.primaryColor,
              ),
              hintText: 'Search...',
              hintStyle: TextStyle(color: CustomColors.primaryColor),
              border: OutlineInputBorder(borderSide: BorderSide.none),
              //contentPadding: EdgeInsets.zero,
              isCollapsed: true,
            ),
          ),
        ),
      ),
    );
  }
}
