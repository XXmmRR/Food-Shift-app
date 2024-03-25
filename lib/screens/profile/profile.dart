import 'package:flutter/material.dart';
import 'package:flutter_application_2/widgets/custom_nav_bar.dart';
import 'package:flutter_application_2/widgets/pages.dart';
import 'package:flutter_settings_ui/flutter_settings_ui.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
    int pageindex = 0;
    void onTabTapped(int index) {
      print(pageindex);
      setState(() {pageindex = index;});
      Navigator.of(context).push(MaterialPageRoute(builder: (context) =>  pages[pageindex]));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Profile'),),
        bottomNavigationBar: CustomNavbar(onTabTapped),   
        body: SettingsList(
        
        sections: [
          SettingsSection(
            tiles: [
              SettingsTile(
                title: const Text('Vlasov Daniil'),
                description: const Text('+998 91 545 76 70'),
                onPressed: (BuildContext context) {},
                ),
            ],
          ),
          SettingsSection(
            title: Text('Payment and Location'),
            tiles: [
            SettingsTile(title: 
            Text('Debit cards'),
            leading: Icon(Icons.add_card_sharp),
            ),
            SettingsTile(
              title: Text('My addresses'),
              leading: Icon(Icons.gps_fixed),
            )
            ]
          ),
          SettingsSection(
            title: Text('Information'),
            tiles: [
            SettingsTile(title: 
            Text('Notifications'),
            leading: Icon(Icons.notifications),
            ),
            SettingsTile(
              title: Text('Support service'),
              leading: Icon(Icons.chat),
            ),
            SettingsTile(
              title: Text('User agreement'), 
              leading: Icon(Icons.list),
            )
            ]
          ),
          SettingsSection(
            title: Text('Account'),
            tiles: [
            SettingsTile(
              title: Text('Log out'),
              leading: Icon(Icons.logout),
            ),
            SettingsTile(
              title: Text('Delete account'), 
              leading: Icon(Icons.person_2_sharp),
            )

          ],)
        ],
      ),
      
      
    );
  }
}