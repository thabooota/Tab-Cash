import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../../core/utils/color_manager.dart';
import '../../../../../core/utils/styles.dart';

class ChildInfoBody extends StatelessWidget {
  const ChildInfoBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 22.0),
      children: const [
        InformationChildSection(),
        SizedBox(
          height: 35.0,
        ),
        BalanceChildSection(),
        SizedBox(
          height: 35.0,
        ),
        OrderReviewListView(),
      ],
    );
  }
}

class InformationChildSection extends StatelessWidget {
  const InformationChildSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18.0),
      ),
      elevation: 2.5,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 22.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              text: const TextSpan(
                  text: "Full Name: ",
                  style: TextStyle(
                    color: ColorManager.darkDefaultColor,
                    fontSize: 24.0,
                    fontWeight: FontWeight.w600,
                  ),
                  children: [
                    TextSpan(
                      text: "Mohammed Ahmed",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ]),
            ),
            const SizedBox(
              height: 8.0,
            ),
            RichText(
              text: const TextSpan(
                  text: "National ID: ",
                  style: TextStyle(
                    color: ColorManager.darkDefaultColor,
                    fontSize: 24.0,
                    fontWeight: FontWeight.w600,
                  ),
                  children: [
                    TextSpan(
                      text: "12345678912345",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ]),
            ),
            const SizedBox(
              height: 8.0,
            ),
            RichText(
              text: const TextSpan(
                  text: "Phone Number: ",
                  style: TextStyle(
                    color: ColorManager.darkDefaultColor,
                    fontSize: 24.0,
                    fontWeight: FontWeight.w600,
                  ),
                  children: [
                    TextSpan(
                      text: "01227559261",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}

class BalanceChildSection extends StatelessWidget {
  const BalanceChildSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorManager.darkDefaultColor,
        borderRadius: BorderRadius.circular(16.0),
      ),
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text(
                "Balance",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 24.0,
                ),
              ),
              Text(
                "200.0 EGP",
                style: TextStyle(
                  color: Colors.white.withOpacity(0.9),
                  fontWeight: FontWeight.w600,
                  fontSize: 24.0,
                ),
              ),
            ],
          ),
          Container(
            color: ColorManager.darkScaffoldBackgroundColor,
            margin: const EdgeInsets.only(top: 12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(
                  FontAwesomeIcons.clockRotateLeft,
                  color: ColorManager.darkDefaultColor,
                  size: 20.0,
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  "History",
                  style: TextStyle(
                    color: ColorManager.darkDefaultColor,
                    fontSize: 22.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

Widget orderReviewItem() => Container(
      padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 12.0),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(16.0), topLeft: Radius.circular(16.0)),
        color: ColorManager.darkDefaultColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: const TextSpan(
              text: "Service Name:    ",
              style: TextStyle(
                color: Colors.white60,
                fontSize: 22.0,
                fontWeight: FontWeight.w600,
              ),
              children: [
                TextSpan(
                  text: "Payment Netflix",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          RichText(
            text: const TextSpan(
              text: "Price:    ",
              style: TextStyle(
                color: Colors.white60,
                fontSize: 22.0,
                fontWeight: FontWeight.w600,
              ),
              children: [
                TextSpan(
                  text: "165 EGP",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: 90.0,
                padding:
                    const EdgeInsets.symmetric(horizontal: 10.0, vertical: 1.0),
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: const Text(
                  "Reject",
                  style: Styles.textStyle20,
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                width: 8.0,
              ),
              Container(
                width: 90.0,
                padding:
                    const EdgeInsets.symmetric(horizontal: 10.0, vertical: 1.0),
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: const Text(
                  "Accept",
                  style: Styles.textStyle20,
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ],
      ),
    );

class OrderReviewListView extends StatelessWidget {
  const OrderReviewListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Orders Review",
          style: TextStyle(
              color: Colors.black45,
              fontWeight: FontWeight.w600,
              fontSize: 22.0),
        ),
        Container(
          height: 0.8,
          color: Colors.grey,
          margin: const EdgeInsets.only(top: 4.0, bottom: 16.0),
        ),
        ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) => orderReviewItem(),
          separatorBuilder: (context, index) => const SizedBox(
            height: 12.0,
          ),
          itemCount:3,
        ),
      ],
    );
  }
}

