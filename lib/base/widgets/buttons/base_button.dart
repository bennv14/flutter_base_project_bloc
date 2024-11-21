import 'package:flutter/material.dart';
import 'package:flutter_base_project_riverpod/utils/gen/colors.gen.dart';

class BaseButton extends StatefulWidget {
  const BaseButton({
    super.key,
    required this.child,
    this.onPressed,
    this.backgroundColor = ColorName.secondary,
    this.borderColor,
    this.secondaryBackgroundColor = ColorName.primary,
    this.width,
    this.isFullWidth = false,
    this.padding = const EdgeInsets.symmetric(horizontal: 28, vertical: 12),
    this.borderRadius,
  });

  final Widget child;
  final VoidCallback? onPressed;
  final Color backgroundColor;
  final Color? borderColor;
  final Color secondaryBackgroundColor;
  final double? width;
  final bool isFullWidth;
  final EdgeInsetsGeometry? padding;
  final BorderRadiusGeometry? borderRadius;

  @override
  State<BaseButton> createState() => _BaseButtonState();
}

class _BaseButtonState extends State<BaseButton> {
  late Color colorDisplay;
  late BorderRadiusGeometry borderRadius;

  @override
  void initState() {
    colorDisplay = widget.backgroundColor;
    borderRadius = widget.borderRadius ?? BorderRadius.circular(100);
    super.initState();
  }

  void onTapDown(TapDownDetails details) {
    setState(() {
      colorDisplay = widget.secondaryBackgroundColor;
    });
  }

  void onTapCancel() {
    setState(() {
      colorDisplay = widget.backgroundColor;
    });
  }

  void onTap() {
    widget.onPressed?.call();
    setState(() {
      colorDisplay = widget.backgroundColor;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapCancel: onTapCancel,
      onTapUp: (details) => onTap(),
      onTapDown: onTapDown,
      child: AnimatedContainer(
        duration: Durations.short3,
        width: widget.isFullWidth ? double.infinity : widget.width,
        padding: widget.padding,
        decoration: BoxDecoration(
          color: colorDisplay,
          border: widget.borderColor != null
              ? Border.all(
                  color: widget.borderColor!,
                )
              : null,
          borderRadius: BorderRadius.circular(100),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            widget.child,
          ],
        ),
      ),
    );
  }
}
