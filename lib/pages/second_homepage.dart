import 'package:flutter/material.dart';
import 'package:job_application/theme.dart';
import 'package:job_application/widget/custom_list.dart';

class SecondHomepage extends StatelessWidget {
  final String jobTitle;
  final String imageUrl;

  SecondHomepage({
    required this.jobTitle,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(imageUrl),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(23),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(jobTitle, style: titleJobTextStyle),
                    SizedBox(
                      height: 2,
                    ),
                    Text('12.309 available', style: availableTextStyle),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 30, left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Big Companies',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff272C2F),
                    ),
                  ),
                  CustomList(
                    jobName: 'Front-End Developer',
                    companyName: 'Google',
                    imageCompany: 'assets/google-icon.png',
                  ),
                  CustomList(
                    jobName: 'UI Designer',
                    companyName: 'Instagram',
                    imageCompany: 'assets/instagram-icon.png',
                  ),
                  CustomList(
                    jobName: 'Data Scientist',
                    companyName: 'Facebook',
                    imageCompany: 'assets/facebook-icon.png',
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 30, left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'New Startups',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff272C2F),
                    ),
                  ),
                  CustomList(
                    jobName: 'Front-End Developer',
                    companyName: 'Google',
                    imageCompany: 'assets/google-icon.png',
                  ),
                  CustomList(
                    jobName: 'UI Designer',
                    companyName: 'Instagram',
                    imageCompany: 'assets/instagram-icon.png',
                  ),
                  CustomList(
                    jobName: 'Data Scientist',
                    companyName: 'Facebook',
                    imageCompany: 'assets/facebook-icon.png',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
