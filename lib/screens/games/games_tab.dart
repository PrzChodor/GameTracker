import 'package:flutter/material.dart';
import 'package:gametracker/helpers/custom_colors.dart';

class GamesTab extends StatefulWidget {
  final String text;
  final bool selected;
  final void Function() onTap;

  const GamesTab(
      {Key? key,
      required this.text,
      required this.selected,
      required this.onTap})
      : super(key: key);

  @override
  _GamesTabState createState() => _GamesTabState();
}

class _GamesTabState extends State<GamesTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Material(
        child: InkWell(
          onTap: widget.onTap,
          child: Column(
            children: [
              Expanded(
                child: Center(
                  child: Text(
                    widget.text,
                    style: widget.selected
                        ? null
                        : TextStyle(
                            color: CustomColors.primaryColor,
                          ),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 5,
                color: widget.selected ? CustomColors.secondaryColor : null,
              ),
            ],
          ),
        ),
      ),
      color: CustomColors.backgroundColor,
    );
  }
}
