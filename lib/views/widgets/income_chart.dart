import 'package:admin_dashboard/utils/app_styles.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeChart extends StatefulWidget {
  const IncomeChart({super.key});

  @override
  State<IncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeChart> {
  int activeIndex = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 1, child: PieChart(getChartData()));
  }

  PieChartData getChartData() {
    return PieChartData(
      pieTouchData: PieTouchData(
        enabled: true,
        touchCallback: (e, pieToutchResponse) {
          activeIndex =
              pieToutchResponse?.touchedSection?.touchedSectionIndex ?? -1;
          setState(() {});
        },
      ),
      sectionsSpace: 0,
      sections: [
        PieChartSectionData(
          title: "40%",
          titleStyle: AppStyles.styleMedium16(context).copyWith(color: Colors.white),
          value: 40,
          color: Color(0XFF208BC7),
          radius: activeIndex == 0 ? 60 : 50,
        ),
        PieChartSectionData(
          title: "25%",
          titleStyle: AppStyles.styleMedium16(context).copyWith(color: Colors.white),
          value: 25,
          color: Color(0XFF4DB7F2),
          radius: activeIndex == 1 ? 60 : 50,
        ),
        PieChartSectionData(
          title: "20%",
          titleStyle: AppStyles.styleMedium16(context).copyWith(color: Colors.white),
          value: 20,
          color: Color(0XFF064060),
          radius: activeIndex == 2 ? 60 : 50,
        ),
        PieChartSectionData(
          title: "22%",
          titleStyle: AppStyles.styleMedium16(context).copyWith(color: Colors.white),
          value: 22,
          color: Color(0XFFE2DECD),
          radius: activeIndex == 3 ? 60 : 50,
        ),
      ],
    );
  }
}
