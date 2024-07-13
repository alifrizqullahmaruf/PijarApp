import 'package:flutter/material.dart';
import 'package:pijar_app/widgets/activity_card.dart';
import 'package:pijar_app/widgets/search_bar.dart';

class ActivityScreen extends StatelessWidget {
  const ActivityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.all(24.0),
        child: SafeArea(
            child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: EdgeInsets.only(bottom: 100),
            child: Column(
              children: [
                SearchBarWidgets(),
                // SizedBox(
                //   height: 24,
                // ),
                ActivityCard(
                  logoImagePath: "lib/assets/smallLogo.png",
                  activityImagePath: "lib/assets/activityImg.png",
                  timeAgo: "2 hours ago",
                  title: "Charity for Rengasdieng Tragedy",
                  location: "Rengasdieng, East Java",
                  moneySpent: "\$22,410",
                  description:
                      "We have done our part in providing food for a total of 10,321 individuals. Now, it's time to extend our support to ensure they have access to clean water and shelter.",
                ),
                SizedBox(height: 16),
                ActivityCard(
                  logoImagePath: "lib/assets/smallLogo.png",
                  activityImagePath: "lib/assets/anotherActivityImg.png",
                  timeAgo: "3 hours ago",
                  title: "Education Program for Orphans",
                  location: "Yogyakarta, Indonesia",
                  moneySpent: "\$15,200",
                  description:
                      "Our education program has helped improve the lives of 500 orphaned children by providing them with access to quality education and learning materials.",
                ),
              ],
            ),
          ),
        )),
      ),
    );
  }
}
