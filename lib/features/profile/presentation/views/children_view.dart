import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../core/utils/app_router.dart';
import '../../../../core/utils/color_manager.dart';
import '../../../../core/widget/app_bar.dart';
import 'widgets/children_view_body.dart';

class ChildrenView extends StatelessWidget {
  const ChildrenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.darkScaffoldBackgroundColor,
      appBar: appBar(context, text: "Children",centerTitle: true),
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.pushNamed(context, Routes.addChildRoute);
      },backgroundColor: ColorManager.darkDefaultColor,child: const Icon(FontAwesomeIcons.plus,color: Colors.white,),),
      body: const ChildrenViewBody(),
    );
  }
}
