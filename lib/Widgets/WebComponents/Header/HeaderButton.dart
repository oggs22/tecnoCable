import 'package:flutter/material.dart';
import 'package:tecnocable/Values/ResponsiveApp.dart';
import 'package:tecnocable/Values/ColorsApp.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

class HeaderButton extends StatefulWidget {
  String title;
  int index;
  bool lineIsVisible;
  AutoScrollController _scrollController;

  HeaderButton(this.index, this.title, this._scrollController,
      {this.lineIsVisible = true});

  @override
  State<StatefulWidget> createState() => _HeaderButtonState(this.index);
}

class _HeaderButtonState extends State<HeaderButton> {
  int index;
  final List _isHovering = [false, false, false, false, false];

  ResponsiveApp responsiveApp;

  _HeaderButtonState(this.index);

  @override
  Widget build(BuildContext context) {
    responsiveApp = ResponsiveApp(context);
    return InkWell(
      onHover: (value) {
        setState(() {
          value
              ? _isHovering[this.index] = true
              : _isHovering[this.index] = false;
        });
      },
      onTap: () => scrollIndex(index),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            widget.title.toUpperCase(),
            style: TextStyle(
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
              color: _isHovering[this.index] ? Colors.white : barWhiteTextColor,
            ),
          ),
          SizedBox(height: 4),
          Visibility(
            maintainAnimation: true,
            maintainState: true,
            maintainSize: true,
            visible: widget.lineIsVisible
                ? _isHovering[this.index]
                : widget.lineIsVisible,
            child: Container(
              height: responsiveApp.lineHznButtonHeight,
              width: responsiveApp.lineHznButtonWidth,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }

  scrollIndex(index) {
    widget._scrollController.scrollToIndex(index);
  }
}
