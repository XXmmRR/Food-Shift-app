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
        appBar: AppBar(title: Text('Profile'), backgroundColor: Colors.white,),
        bottomNavigationBar: CustomNavbar(onTabTapped),   
        backgroundColor: Color.fromARGB(255, 229, 229, 229),
        body: SettingsList(
        contentPadding: EdgeInsets.only(top: 5),
        platform: DevicePlatform.android,
        lightTheme: SettingsThemeData(
                dividerColor: Colors.black,
                
                settingsListBackground:   Colors.white70,
                settingsSectionBackground: Colors.white,
                settingsTileTextColor: Colors.black,
                tileHighlightColor: Colors.grey,
                titleTextColor: Colors.black,
                trailingTextColor: Colors.black,
                
                ),
        sections: [
          
          SettingsSection(
            
            tiles: [
              SettingsTile(
                title: const Text('Vlasov Daniil'),
                description: const Text('+998 91 545 76 70'),
                backgroundColor: Colors.white,
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
            backgroundColor: Colors.white,

            ),
            SettingsTile(
              title: Text('My addresses'),
              leading: Icon(Icons.gps_fixed),
              backgroundColor: Colors.white,
            )
            ]
          ),
          SettingsSection(
            title: Text('Information'),
            tiles: [
            SettingsTile(title: 
            Text('Notifications'),
            leading: Icon(Icons.notifications),
            backgroundColor: Colors.white,

            ),
            SettingsTile(
              title: Text('Support service'),
              leading: Icon(Icons.chat),
              backgroundColor: Colors.white,
            ),
            SettingsTile(
              title: Text('User agreement'), 
              leading: Icon(Icons.list),
              backgroundColor: Colors.white,

            )
            ]
          ),
          SettingsSection(
            title: Text('Account'),
            tiles: [
            SettingsTile(
              title: Text('Log out'),
              leading: Icon(Icons.logout),
                backgroundColor: Colors.white,

            ),
            SettingsTile(
              title: Text('Delete account'), 
              leading: Icon(Icons.person_2_sharp),
                    backgroundColor: Colors.white,

            )

          ],)
        ],
      ),
      
      
    );
  }
}