import 'package:flutter/material.dart';
import 'package:ticket_app_project/base/res/styles/app_styles.dart';
import 'package:ticket_app_project/base/widgets/app_column_text_layout.dart';
import 'package:ticket_app_project/base/widgets/app_layoutbuilder_widget.dart';
import 'package:ticket_app_project/base/widgets/big_circle.dart';
import 'package:ticket_app_project/base/widgets/big_dot.dart';
import 'package:ticket_app_project/base/widgets/text_style_fourth.dart';
import 'package:ticket_app_project/base/widgets/text_style_third.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key, required this.ticket, this.wholeScreen = false});
  final Map<String, dynamic> ticket;
  final bool wholeScreen;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width * 0.85,
      height: 189,
      child: Container(
        margin: EdgeInsets.only(right: wholeScreen == true ? 0 : 16),
        child: Column(
          children: [
            //blue part of ticket
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppStyles.ticketBlue,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(21),
                  topRight: Radius.circular(21),
                ),
              ),
              child: Column(
                children: [
                  //show depature and destination with icons first line
                  Row(
                    children: [
                      TextStyleThird(text: ticket["from"]["code"]),
                      Expanded(child: Container()),
                      BigDot(),
                      Expanded(
                        child: Stack(
                          children: [
                            SizedBox(
                              height: 24,
                              child: AppLayoutbuilderWidget(randomDivider: 6),
                            ),
                            Center(
                              child: Transform.rotate(
                                angle: 1.57,
                                child: Icon(
                                  Icons.local_airport_rounded,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      BigDot(),
                      Expanded(child: Container()),
                      TextStyleThird(text: ticket["to"]["code"]),
                    ],
                  ),
                  SizedBox(height: 3),
                  // show departure and destination names with time
                  Row(
                    children: [
                      SizedBox(
                        width: 100,
                        child: TextStyleFourth(text: ticket["from"]["name"]),
                      ),
                      Expanded(child: Container()),
                      TextStyleFourth(text: ticket["flying_time"]),
                      Expanded(child: Container()),
                      SizedBox(
                        width: 100,
                        child: TextStyleFourth(
                          text: ticket["to"]["name"],
                          align: TextAlign.end,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            //circles and dots
            Container(
              color: AppStyles.ticketOrange,
              child: Row(
                children: [
                  BigCircle(isRight: false),
                  Expanded(
                    child: AppLayoutbuilderWidget(randomDivider: 16, width: 6),
                  ),
                  BigCircle(isRight: true),
                ],
              ),
            ),
            //orange part of ticket
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppStyles.ticketOrange,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(21),
                  bottomRight: Radius.circular(21),
                ),
              ),
              child: Column(
                children: [
                  //show depature and destination with name and time
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // TextStyleThird(text: "1 May"),
                      // Expanded(child: Container()),
                      // TextStyleThird(text: "08:00 AM"),
                      // Expanded(child: Container()),
                      // TextStyleThird(text: "23"),
                      AppColumnTextLayout(
                        topText: ticket["date"],
                        bottomText: "Date",
                        alignment: CrossAxisAlignment.start,
                      ),
                      AppColumnTextLayout(
                        topText: ticket["departure_time"],
                        bottomText: "Departure time",
                        alignment: CrossAxisAlignment.center,
                      ),
                      AppColumnTextLayout(
                        topText: ticket["number"].toString(),
                        bottomText: "Number",
                        alignment: CrossAxisAlignment.end,
                      ),
                    ],
                  ),
                  // SizedBox(height: 3),
                  // // show departure and destination names with time
                  // Row(
                  //   children: [
                  //     TextStyleFourth(text: "Date"),
                  //     Expanded(child: Container()),
                  //     TextStyleFourth(text: "Departure time"),
                  //     Expanded(child: Container()),
                  //     TextStyleFourth(text: "Number"),
                  //   ],
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
