import 'package:flutter/material.dart';
import 'package:job_application/pages/second_homepage.dart';

class JobCard extends StatelessWidget {
  final String jobTitle;
  final String imageUrl;

  JobCard({required this.jobTitle, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SecondHomepage(
              jobTitle: jobTitle,
              imageUrl: imageUrl,
            ),
          ),
        );
      },
      child: Container(
        width: 150,
        height: 200,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              jobTitle,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
          ),
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
            imageUrl,
          )),
        ),
      ),
    );
  }
}
