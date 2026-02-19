import 'package:admin_dashboard/utils/size_config.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

abstract class AppStyles {

  static TextStyle styleRegular16(BuildContext context){
    return TextStyle(
    color: Color(0XFF064060),
    fontSize: getResponsiveFontSize(context, fontSize: 16),
    fontFamily: "Montserrat",
    fontWeight: FontWeight.w400,
  );
  }
static TextStyle styleMedium16(BuildContext context){
    return TextStyle(
    color: Color(0XFF064061),
    fontSize: getResponsiveFontSize(context, fontSize: 16),
    fontFamily: "Montserrat",
    fontWeight: FontWeight.w500,
  );
  }
static TextStyle styleMedium20(BuildContext context){
    return TextStyle(
    color: Color(0XFFFFFFFF),
    fontSize: getResponsiveFontSize(context, fontSize: 20),
    fontFamily: "Montserrat",
    fontWeight: FontWeight.w500,
  );
  }
static TextStyle styleSemiBold16(BuildContext context){
    return TextStyle(
    color: Color(0XFF064061),
    fontSize: getResponsiveFontSize(context, fontSize: 16),
    fontFamily: "Montserrat",
    fontWeight: FontWeight.w600,
  );
  }
static TextStyle styleSemiBold20(BuildContext context){
    return TextStyle(
    color: Color(0XFF064061),
    fontSize: getResponsiveFontSize(context, fontSize: 20),
    fontFamily: "Montserrat",
    fontWeight: FontWeight.w600,
  );
  }
static TextStyle styleRegular12(BuildContext context){
    return TextStyle(
    color: Color(0XFFAAAAAA),
    fontSize: getResponsiveFontSize(context, fontSize: 12),
    fontFamily: "Montserrat",
    fontWeight: FontWeight.w400,
  );
  }
static TextStyle styleSemiBold24(BuildContext context){
    return TextStyle(
    color: Color(0XFF4EB7F2),
    fontSize: getResponsiveFontSize(context, fontSize: 24),
    fontFamily: "Montserrat",
    fontWeight: FontWeight.w600,
  );
  }
static TextStyle styleSemiBold18(BuildContext context){
    return TextStyle(
    color: Color(0XFF4EB7F2),
    fontSize: getResponsiveFontSize(context, fontSize: 18),
    fontFamily: "Montserrat",
    fontWeight: FontWeight.w600,
  );
  }
static TextStyle styleBold16(BuildContext context){
    return TextStyle(
    color: Color(0XFF4EB7F2),
    fontSize: getResponsiveFontSize(context, fontSize: 16),
    fontFamily: "Montserrat",
    fontWeight: FontWeight.bold,
  );
  }

}

double getScaleFactor(BuildContext context) {
  // var dispatcher = PlatformDispatcher.instance;
  // var physicalWidth = dispatcher.views.first.physicalSize.width;
  // var devicePixelRatio = dispatcher.views.first.devicePixelRatio;
  // double width = physicalWidth / devicePixelRatio; 
  // alternative of MediaQuery that needs context , good form mobile or tablet device only but web no

  double width = MediaQuery.sizeOf(context).width;
  if (width < SizeConfig.tablet) {
    return width / 400;
  } else if (width < SizeConfig.desktop) {
    return width / 1000;
  } else {
    return width / 1200;
  }
}

double getResponsiveFontSize(BuildContext context,{required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;

  double lowerLimit = fontSize * .8;
  double upperLimit = fontSize * 1.2;
  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}
