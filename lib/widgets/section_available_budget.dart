import 'package:flutter/material.dart';

class SectionAvailableBudget extends StatelessWidget {
  const SectionAvailableBudget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          bottom: 280,
          left: 45,
          child: Material(
            elevation: 8.0, // The z-coordinate for the shadow size
            borderRadius: BorderRadius.circular(25.0), // Match the container's radius
            shadowColor: Colors.grey, // Customize the shadow color
            child: Container(
              width: 400,
              height: 80,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25)
              ),
              child: Container(
                margin: EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.green.shade400.withAlpha(40),
                        borderRadius: BorderRadius.circular(14)
                      ),
                      child: Icon(Icons.wallet,color: Colors.green,),
                    ),
                    SizedBox(width: 10),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Available Budget',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.black.withOpacity(0.5),
                              fontWeight: FontWeight.w600
                            ),
                          ),
                          Text('5000.00')
                        ],
                      ),
                    )
                  ],
                ),
              )
            )
          )
        )
      ],
    );
  }
}