import 'package:flutter/material.dart';
import 'package:job_application/theme.dart';
import 'package:job_application/widget/job_card.dart';
import 'package:job_application/widget/custom_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget Header() {
      return SafeArea(
        child: Container(
          padding: EdgeInsets.only(top: 30, left: 20, right: 20),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Howdy',
                    style: titleTextStyle,
                  ),
                  Text(
                    'Jason Powell',
                    style: subTitleTextStyle,
                  ),
                ],
              ),
              Spacer(),
              Image.asset(
                'assets/user_pic.png',
                width: 58,
                height: 58,
              ),
            ],
          ),
        ),
      );
    }

    Widget Body() {
      return Container(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 20,
            right: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hot Categories',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff272C2F),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    JobCard(
                      jobTitle: 'Website Developer',
                      imageUrl: 'assets/card_category.png',
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    JobCard(
                      jobTitle: 'Mobile Developer',
                      imageUrl: 'assets/card_category2.png',
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    JobCard(
                      jobTitle: 'App Designer',
                      imageUrl: 'assets/card_category_three.png',
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    JobCard(
                      jobTitle: 'Content Writer',
                      imageUrl: 'assets/card_category_four.png',
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    JobCard(
                      jobTitle: 'Video Grapher',
                      imageUrl: 'assets/card_category_five.png',
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Just Posted',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff272C2F),
                ),
              ),
              SizedBox(height: 16),
              CustomList(
                jobName: 'Front-End Developer',
                companyName: 'Google',
                imageCompany: 'assets/google-icon.png',
              ),
              SizedBox(height: 16),
              CustomList(
                jobName: 'UI Designer',
                companyName: 'Instagram',
                imageCompany: 'assets/instagram-icon.png',
              ),
              SizedBox(height: 16),
              CustomList(
                jobName: 'Data Scientist',
                companyName: 'Facebook',
                imageCompany: 'assets/facebook-icon.png',
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(top: 30),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          unselectedItemColor: Color(0xffB3B5C4),
          selectedItemColor: Color(0xff272C2F),
          currentIndex: 0,
          elevation: 0,
          items: [
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/navbar_one.png'),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/navbar_two.png'),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/navbar_three.png'),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/navbar_four.png'),
              ),
              label: '',
            ),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Header(),
          SizedBox(
            height: 30,
          ),
          Body()
        ],
      ),
    );
  }
}
