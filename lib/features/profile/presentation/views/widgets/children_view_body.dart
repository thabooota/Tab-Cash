import 'package:flutter/material.dart';
import 'list_child_item.dart';

class ChildrenViewBody extends StatelessWidget {
  const ChildrenViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.symmetric(horizontal: 22.0,vertical: 10.0),
      itemBuilder: (context, index) => listChildrenItem(context),
      separatorBuilder: (context, index) => const SizedBox(
        height: 12.0,
      ),
      itemCount: 3,
    );
  }
}

