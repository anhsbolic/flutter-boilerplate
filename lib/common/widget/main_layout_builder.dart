import 'package:flutter/material.dart';

class MainLayoutBuilder extends StatelessWidget {
  final RefreshCallback onRefresh;
  final NotificationListenerCallback notificationListener;
  final Widget body;
  final EdgeInsetsGeometry? padding;
  final ScrollPhysics scrollPhysics;
  final ScrollController? scrollController;

  const MainLayoutBuilder(
      {Key? key,
      required this.onRefresh,
      required this.notificationListener,
      required this.body,
      this.padding,
      this.scrollPhysics = const ClampingScrollPhysics(),
      this.scrollController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, constraints) => NotificationListener<ScrollNotification>(
        onNotification: notificationListener,
        child: RefreshIndicator(
          onRefresh: onRefresh,
          child: SingleChildScrollView(
            controller: scrollController,
            padding: padding,
            physics: scrollPhysics,
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraints.maxHeight),
              child: body,
            ),
          ),
        ),
      ),
    );
  }
}
