import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/helpers/reponsiveness.dart';
import 'package:flutter_web_dashboard/constants/controllers.dart';
import 'package:flutter_web_dashboard/pages/stations/widget/stations.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class StationsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Obx(() => Row(children: [
                Container(
                  height: 55,
                  margin: EdgeInsets.only(
                      top: ResponsiveWidget.isSmallScreen(context) ? 56 : 6),
                  child: Text(menuController.activeItem.value,
                      style: GoogleFonts.roboto(
                          fontSize: 30, fontWeight: FontWeight.bold)),
                )
              ])),
          stations()
        ],
      ),
    );
  }
}
