import 'package:flutter/material.dart';
import 'package:nti_f/views/widgets/c_header_text.dart';
import 'package:nti_f/views/widgets/info_item.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile',
          style: TextStyle(fontWeight: FontWeight.w900, fontSize: 18),
        ),
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 28),
            Center(
              child: Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('images/boy.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),

            Spacer(),
            Center(
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'Change Profile Picture',
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
                ),
              ),
            ),

            Spacer(),
            Divider(),
            Spacer(),
            CHeaderText(text: 'Profile Information'),
            Spacer(),
            InfoItem(title: 'Name', text: 'Taimoor Sikander'),
            SizedBox(height: 10),
            InfoItem(title: 'Username', text: 'taimoor_sikander'),
            Spacer(),
            Divider(),
            Spacer(),
            CHeaderText(text: 'Pesronal Information'),
            Spacer(),
            InfoItem(title: 'User ID', text: '45689', icon: Icons.copy_rounded),
            SizedBox(height: 10),
            InfoItem(title: 'E-mail', text: 'taimoor@gmail.com'),
            SizedBox(height: 10),
            InfoItem(title: 'Phone Number', text: '+201721587799'),

            SizedBox(height: 10),
            InfoItem(title: 'Gender', text: 'male'),

            SizedBox(height: 10),
            InfoItem(title: 'Birth of Date', text: '10 Oct, 1994'),
            Divider(),
            Spacer(flex: 3),
            Center(
              child: Text('Close Account', style: TextStyle(color: Colors.red)),
            ),
            Spacer(flex: 16),
          ],
        ),
      ),
    );
  }
}
