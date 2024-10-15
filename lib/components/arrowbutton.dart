import 'package:flutter/material.dart';
import 'package:my_wallet_app/config/colors.dart';
import 'package:my_wallet_app/config/size.dart';

class ArrowButton extends StatelessWidget {
  final EdgeInsets margin;
  final Widget icon;
  ArrowButton({required this.margin, required this.icon});
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    var height = SizeConfig.getHeight(context);
    // ignore: unused_local_variable
    var width = SizeConfig.getWidth(context);
    return Expanded(
      child: Container(
        margin: margin,
        decoration: BoxDecoration(
            color: AppColors.primaryWhite,
            borderRadius: BorderRadius.circular(15),
            boxShadow: AppColors.neumorpShadow),
        alignment: Alignment.center,
        child: icon,
      ),
    );
  }
}
