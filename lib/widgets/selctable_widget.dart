import 'package:flutter/material.dart';

class SelectableWidget extends StatefulWidget {
  final List<String> elements;
  Function(int index)? onChanged;
  final bool withTextBorder;
  final double padding;
  final TextStyle textStyle;
  final double height;
  final List<int> count;
  final TextStyle tappedButtonTextStyle;
  final Color borderColor;
  final List<int> a = [0];
  SelectableWidget({
    super.key,
    required this.tappedButtonTextStyle,
    required this.textStyle,
    required this.elements,
    this.onChanged,
    required this.count,
    this.withTextBorder = false,
    this.padding = 25,
    required this.height,
    required this.borderColor,
  });

  @override
  State<SelectableWidget> createState() => _SelectableWidgetState();
}

class _SelectableWidgetState extends State<SelectableWidget> {
  int indexi = 0;
  int onChange(int index) {
    return index;
  }

  @override
  void initState() {
    super.initState();
    onChange(selectedIndex) {
      widget.onChanged;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: widget.height,
      child: Stack(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 38),
            width: double.infinity,
            height: 2,
            color: const Color(0xFFF5F5F5),
          ),
          Column(
            children: [
              Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: widget.elements.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(right: widget.padding),
                      child: MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: InkWell(
                          excludeFromSemantics: false,
                          hoverColor: Colors.transparent,
                          enableFeedback: false,
                          onTap: () {
                            indexi = index;
                            widget.onChanged?.call(index);
                            setState(() {});
                          },
                          child: Column(
                            children: [
                              Text(
                                widget.elements[index],
                                style: index == indexi
                                    ? widget.tappedButtonTextStyle
                                    : widget.textStyle,
                              ),
                              const Spacer(),
                              widget.withTextBorder
                                  ? Container(
                                      width: textSize(
                                        widget.elements[index],
                                        const TextStyle(
                                          fontSize: 16,
                                        ),
                                      ).width,
                                      height: 2,
                                      decoration: BoxDecoration(
                                        color: indexi == index
                                            ? widget.borderColor
                                            : Colors.transparent,
                                      ),
                                    )
                                  : const SizedBox(),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Size textSize(String text, TextStyle style) {
    final TextPainter textPainter = TextPainter(
        text: TextSpan(text: text, style: style),
        maxLines: 1,
        textDirection: TextDirection.ltr)
      ..layout(minWidth: 0, maxWidth: double.infinity);
    return textPainter.size;
  }
}
