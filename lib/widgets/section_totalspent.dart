import 'package:expense_tracker_2_0/models/totalspent_model.dart';
import 'package:flutter/material.dart';

class SectionTotalSpent extends StatelessWidget {
  const SectionTotalSpent({super.key, required this.totalspentModel});
  final TotalspentModel totalspentModel;

  @override
  Widget build(BuildContext context) {
    double percentage = totalspentModel.spent / totalspentModel.budget;

    return LayoutBuilder(
      builder: (context, constraints) {
        // Calculate the width of the filled portion
        double filledWidth = constraints.maxWidth * percentage;

    return Stack(
      children: <Widget>[
        Positioned(
          top: 120,
          left: 45,
          child: Container(
            width: 400,
            height: 150,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(25),
            ),
            child: Material(
            elevation: 8.0, // The z-coordinate for the shadow size
            borderRadius: BorderRadius.circular(25.0), // Match the container's radius
            shadowColor: Colors.grey, // Customize the shadow color
              child: Container(
                margin: EdgeInsets.only(left: 20,top: 20),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Colors.red.shade400.withAlpha(40),
                            borderRadius: BorderRadius.circular(14)
                          ),
                          child: Icon(Icons.trending_up,color: Colors.red,),
                        ),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Total Spent',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.black.withOpacity(0.5),
                                fontWeight: FontWeight.w600
                              ),
                            ),
                            Text(totalspentModel.spent.toString(),
                              style: TextStyle(
                                fontSize: 20
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 30),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            // Background track
                            Container(
                              height: 8,
                              decoration: BoxDecoration(
                                color: Colors.grey[300],
                                borderRadius: BorderRadius.circular(4),
                              ),
                            ),
                            // Filled progress
                            Container(
                              height: 8,
                              width: filledWidth,
                              decoration: BoxDecoration(
                                color: Colors.green, // The progress color
                                borderRadius: BorderRadius.circular(4),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        Text(
                          '${(percentage * 100).toStringAsFixed(1)}% of \$${totalspentModel.budget.toStringAsFixed(2)} budget',
                          style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Colors.grey),
                        ),
                      ],
                    )
                  ],
                ),
              )
            )
          )
        )
      ],
    );
    });
  }
}