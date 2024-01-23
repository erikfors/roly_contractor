import 'package:flutter/material.dart' show IconData;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HowItWorkCardModel {
  HowItWorkCardModel(this.id, this.icon, this.title, this.subtitle);

  final int id;
  final IconData icon;
  final String title;
  final String subtitle;
}

List<HowItWorkCardModel> cards = [
  HowItWorkCardModel(0, FontAwesomeIcons.clipboardCheck, 'Initial Consultation', 'Schedule a consultation to assess your renovation needs and discuss design ideas.'),
HowItWorkCardModel(1, FontAwesomeIcons.toolbox, 'Demolition and Preparation', 'Clear the space, address structural concerns, and prepare for new installations.'),
HowItWorkCardModel(2, FontAwesomeIcons.building, 'Construction and Implementation', 'Execute the planned renovations, coordinating skilled craftsmen for specialized tasks.'),
HowItWorkCardModel(3, FontAwesomeIcons.paintRoller, 'Finishing Touches and Inspection', 'Apply final touches, conduct a thorough inspection, and ensure compliance with standards.'),
];
