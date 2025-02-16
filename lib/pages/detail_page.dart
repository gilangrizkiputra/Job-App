import 'package:flutter/material.dart';
import 'package:job_application/theme.dart';
import 'package:job_application/widget/criteria.dart';

class DetailPage extends StatefulWidget {
  final String jobTitle;
  final String companyName;
  final String imageUrl;

  const DetailPage({
    required this.jobTitle,
    required this.companyName,
    required this.imageUrl,
  });

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  bool isApplied = false;

  Widget applyButton() {
    return Container(
      width: 200,
      height: 45,
      decoration: BoxDecoration(
        color: Color(0xff4141A4),
        borderRadius: BorderRadius.circular(66),
      ),
      child: TextButton(
        onPressed: () {
          setState(() {
            isApplied = !isApplied;
          });
        },
        child: Text(
          'Apply for Job',
          style: TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }

  Widget successAppliedMessage() {
    return Center(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        margin: EdgeInsets.only(bottom: 30, left: 20, right: 20),
        decoration: BoxDecoration(
          color: Color(0xffECEDF1),
          borderRadius: BorderRadius.circular(50),
        ),
        child: Text(
          'You have applied this job and the recruiter will contact you',
          style: messageTextStyle,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  Widget cancelButton() {
    return Container(
      width: 200,
      height: 45,
      decoration: BoxDecoration(
        color: Color(0xffFD4F56),
        borderRadius: BorderRadius.circular(66),
      ),
      child: TextButton(
        onPressed: () {
          setState(() {
            isApplied = !isApplied;
          });
        },
        child: Text(
          'Cancel Apply',
          style: TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 50,
            ),
            isApplied
                ? successAppliedMessage()
                : SizedBox(
                    height: 50,
                  ),
            Center(
              child: Column(
                children: [
                  Image(
                    image: AssetImage(widget.imageUrl),
                    width: 60,
                    height: 60,
                  ),
                  const SizedBox(height: 20),
                  Text(
                    widget.jobTitle,
                    style: detailJobTitleTextStyle,
                  ),
                  const SizedBox(height: 2),
                  Text(
                    widget.companyName,
                    style: detailInfoTextStyle,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'About the job',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Criteria(criteriaText: 'Full-Time On Site'),
                  Criteria(criteriaText: 'Start at \$18,000 per month'),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Qualifications',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Criteria(
                      criteriaText:
                          "Candidate must possess at least a Bachelor's Degree."),
                  Criteria(
                      criteriaText:
                          'Able to use Microsoft Office and Google based service.'),
                  Criteria(
                      criteriaText:
                          'Have an excellent time management, good at organized and details'),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Responsibilities',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Criteria(
                      criteriaText:
                          'Initiate and promote any programs, events, training, or activities.'),
                  Criteria(
                      criteriaText:
                          'Assessing and anticipating needs and collaborate with Division.'),
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Center(
              child: Column(
                children: [
                  isApplied ? cancelButton() : applyButton(),
                  SizedBox(
                    height: 20,
                  ),
                  Text('Message Recruiter', style: detailInfoTextStyle),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
