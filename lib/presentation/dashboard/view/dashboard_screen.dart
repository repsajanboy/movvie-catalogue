import 'package:flutter/material.dart';

import 'widgets/leftpane/left_pane_widget.dart';
import 'widgets/mainheader/main_header_widget.dart';
import 'widgets/subheader/sub_header_widget.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  final int _currentPage = 4;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 300,
          color: Colors.grey[900],
          child: LeftPaneWidget(mainNavAction: menuAction, selected: _currentPage,),
        ),
        Expanded(
          child: Container(
            color: Colors.grey[800],
            child: Column(
              children: [
                const MainHeaderWidget(),
                const SubheaderWidget(),
                Expanded(
                  child: Container(),
                )
              ],
            ),
          ),
        )
      ],
    );
  }

  void menuAction(int page, List<Map<String, dynamic>> data){

  }
}