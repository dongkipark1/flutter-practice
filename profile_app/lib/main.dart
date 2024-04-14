import 'package:flutter/material.dart';
import 'package:profile_app/components/Profile_count_info.dart';
import 'package:profile_app/components/Profile_drawer.dart';
import 'package:profile_app/components/profile_buttons.dart';
import 'package:profile_app/components/profile_header.dart';
import 'package:profile_app/components/profile_tab.dart';
import 'package:profile_app/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme(),
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        endDrawer: ProfileDrawer(),
        appBar: _buildProfileAppBar(),
        body: NestedScrollView(
          headerSliverBuilder: (context, _) {
            return [
              SliverList(
                delegate: SliverChildListDelegate([
                  ProfileHeader(),
                  SizedBox(height: 20),
                  ProfileCountInfo(),
                  SizedBox(height: 20),
                  ProfileButtons(),
                ]),
              ),
            ];
          },
          body: ProfileTab(),
        ));
  }

  AppBar _buildProfileAppBar(){
    return AppBar(
      leading: Icon(Icons.arrow_back_ios_new_outlined),
      title: Text("NewJeans_Minji"),
      centerTitle: true,
    );
  }
}


