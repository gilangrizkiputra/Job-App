import 'package:flutter/material.dart';
import 'package:job_application/theme.dart';

class CustomList extends StatelessWidget {
  final String jobName;
  final String companyName;
  final String imageCompany;

  CustomList(
      {required this.jobName,
      required this.companyName,
      required this.imageCompany});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          imageCompany,
          width: 45,
          height: 45,
        ),
        SizedBox(width: 26),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  jobName,
                  style: jobNameTextStyle,
                ),
                Text(
                  companyName,
                  style: companyNameTextStyle,
                ),
                SizedBox(height: 10),
                Divider(
                  color: Color(0xffECEDF1),
                  thickness: 1,
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
