import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeaderWidgetHomeScreen extends StatelessWidget {
  const HeaderWidgetHomeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Hi Jacky!',
                      ),
                      Text('Good Morning!',
                          style: GoogleFonts.nunito(
                            textStyle: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                            ),
                          )),
                    ],
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/profile.png'),
                  ),
                ],
              );
  }
}