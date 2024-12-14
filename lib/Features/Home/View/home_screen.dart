import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vehup/Commons/appcolors.dart';
import 'package:vehup/Extentions/screen_size.dart';
import 'package:vehup/Features/Home/View/Widgets/custom_floating_action_button.dart';
import 'package:vehup/Features/Home/View/Widgets/custom_grid_view.dart';
import 'package:vehup/Features/Home/View/Widgets/home_appbar.dart';
import 'package:vehup/Features/Home/ViewModel/home_view_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    final homeViewmodel = Provider.of<HomeViewModel>(context,listen: false);
    homeViewmodel.loadJsonData();
  }
  @override
  Widget build(BuildContext context) {
    final homeViewmodel = Provider.of<HomeViewModel>(context);
    return Scaffold(
      floatingActionButton: customFloatingActionbutton(context),
      appBar: homeAppbar(),
      backgroundColor: Appcolors.mainBackgroundColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            SizedBox(height: ScreenSize.screenwidth*.1,),
            CustomGridView(jsonModelList: homeViewmodel.jsonModelList)
          ],
        ),
      ),
    );
  }
}
