import 'package:flutter/material.dart';
import 'package:smartwallet/core/utils/styles.dart';
import '../../../../../core/utils/color_manager.dart';

class ChildrenViewBody extends StatelessWidget {
  const ChildrenViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.symmetric(horizontal: 22.0),
      itemBuilder: (context, index) => listChildrenItem(context),
      separatorBuilder: (context, index) => const SizedBox(
        height: 12.0,
      ),
      itemCount: 3,
    );
  }
}

Widget listChildrenItem(context) => InkWell(
      onTap: () {
        // ToDo To Navigation to info Screen
      },
      child: Card(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(52.0),
              topLeft: Radius.circular(52.0)),
        ),
        color: Colors.white,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          width: MediaQuery.of(context).size.width - 32.0,
          decoration: BoxDecoration(
            border: Border.all(
              color: ColorManager.defaultColor,
              width: 1.0,
            ),
            borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(52.0),
                topLeft: Radius.circular(52.0)),
          ),
          child: Column(
            children: [
              const Text(
                "Mohamed Ahmed",
                style: Styles.textStyle24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Text(
                    "Phone: 01227559261",
                    style: TextStyle(color: Colors.black54),
                  ),
                  Text(
                    "Balane: 200.0",
                    style: TextStyle(color: Colors.black54),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
