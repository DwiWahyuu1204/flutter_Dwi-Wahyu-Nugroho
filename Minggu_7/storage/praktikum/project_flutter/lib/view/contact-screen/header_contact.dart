import 'package:flutter/material.dart';

import '../../view-models/widget-global/my_color_thema.dart';
import '../../view-models/widget-global/my_fonts_style.dart';

class HeaderContacts extends StatelessWidget {
  const HeaderContacts({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Icon(Icons.phone_iphone_sharp),
        const SizedBox(height: 16.0),
        Text(
          'Create New Contacts',
          style: MyFonstStyle().m3HeadlineSmall,
        ),
        const SizedBox(height: 16.0),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(children: [
            Text(
              'A dialog is a type of modal window that appears in front of app content to provide critical information, or prompt for a decision to be made.',
              style: MyFonstStyle().m3BodyMedium,
            ),
            const SizedBox(height: 16.0),
            const Divider(
              color: MyColorThema.m3syslightDivider,
            )
          ]),
        ),
      ],
    );
  }
}
