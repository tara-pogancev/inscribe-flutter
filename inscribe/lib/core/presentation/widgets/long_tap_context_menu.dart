import 'package:flutter/material.dart';

@Deprecated("Not functional yet.")
class LongTapContextMenu extends StatefulWidget {
  const LongTapContextMenu({
    super.key,
    required this.child,
    required this.menuItems,
    required this.childContext,
  });

  final Widget child;
  final BuildContext childContext;
  final List<PopupMenuItem> menuItems;

  @override
  State<LongTapContextMenu> createState() => _LongTapContextMenuState();
}

@Deprecated("Not functional yet.")
class _LongTapContextMenuState extends State<LongTapContextMenu> {
  Offset _tapPosition = const Offset(0, 0);

  void _getTapPosition(TapDownDetails tapPosition) {
    final RenderBox referenceBox = context.findRenderObject() as RenderBox;
    setState(() {
      _tapPosition = referenceBox.globalToLocal(tapPosition.globalPosition);
    });
  }

  void _showContextMenu(BuildContext context) async {
    final RenderBox? overlay =
        Overlay.of(context).context.findRenderObject() as RenderBox?;

    if (overlay != null) {
      await showMenu(
        context: context,
        position: RelativeRect.fromRect(
          Rect.fromLTWH(_tapPosition.dx, _tapPosition.dy, 100, 100),
          Rect.fromLTWH(0, 0, overlay.paintBounds.size.width,
              overlay.paintBounds.size.height),
        ),
        items: widget.menuItems,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTapDown: (position) {
          _getTapPosition(position);
        },
        onLongPress: () {
          _showContextMenu(widget.childContext);
        },
        child: widget.child);
  }
}
