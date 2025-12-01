import 'package:expense_tracker_2_0/models/totalspent_model.dart';
import 'package:expense_tracker_2_0/widgets/appbar_container.dart';
import 'package:expense_tracker_2_0/widgets/section_available_budget.dart';
import 'package:expense_tracker_2_0/widgets/section_totalspent.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: appBar(),
      body: Stack(
          children: [
            AppBarContainer(),
            SectionTotalSpent(totalspentModel: TotalspentModel(spent: 2000.00, budget: 5000)),
            SectionAvailableBudget(),
          ],
        )
    );
  }
  AppBar appBar(){
    return AppBar(
      toolbarHeight: 100,
      backgroundColor: Colors.transparent,
      title: Container(
        margin: EdgeInsets.only(left: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Dashboard',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w500
              ),
            ),
            SizedBox(height: 5),
            Text('November 2025',
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.w500
              ),
            )
          ],
        ),
      ),
      actions: [
        Container(
          width: 30,
          height: 30,
          margin: EdgeInsets.only(right: 20),
          decoration: BoxDecoration(
            color: Colors.grey.shade200.withAlpha(80),
            borderRadius: BorderRadius.circular(10)
          ),
          child: Icon(Icons.stacked_bar_chart_rounded,
            color: Colors.white,
            size: 20,
          ),
        )
      ],
    );
  }
}