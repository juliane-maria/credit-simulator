import 'package:flutter/material.dart';
import 'package:simular_credito/presenter/theme_app.dart';

class ProgressBarComponent extends StatelessWidget {
  final double progress;
  final double maxProgress;
  const ProgressBarComponent(
      {Key? key, required this.progress, required this.maxProgress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: maxProgress,
      height: 5,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.grey[400],
      ),
      child: Row(
        children: [
          Container(
            height: 5,
            width: progress,
            decoration: BoxDecoration(
              color: ThemeApp.primaryColor,
              borderRadius: BorderRadius.circular(5),
            ),
          ),
        ],
      ),
    );
  }
}
