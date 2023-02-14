// import 'package:flutter/material.dart';
// import 'package:sausau/core/resources/route_manager.dart';

// import 'assets_manager.dart';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:spotter_user/features/goals/data/models/goal.dart';

class AppConstants {
  static const int splashDelay = 2;
}

int selectedIndex = -1;
List selectedIndexs = [];

final List<String> choicesList = ['YEAR', 'WEEK', 'MONTH'];
final List<String> days = ['Mo', 'Tu', 'We', 'Th', 'Fr', 'Sa', 'Su'];
List months = [
  'Jan',
  'Feb',
  'Mar',
  'Apr',
  'May',
  'Jun',
  'Jul',
  'Aug',
  'Sep',
  'Oct',
  'Nov',
  'Dec'
];
// List goals = [
//   Goal( title: 'Running',target: '5 km'),
// ];

int defaultChoiceIndex = 1;

void showSelectedView() {
  if (defaultChoiceIndex == 0) {}
  if (defaultChoiceIndex == 1) {}
  if (defaultChoiceIndex == 2) {}
  // if (defaultChoiceIndex == 3) {}
}

showScaffold({required var text, required context, Color? color}) {
  return ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(
        text.toString(),
        textAlign: TextAlign.center,
      ),
      backgroundColor: color,
    ),
  );
}

int idGenerator() {
  final now = DateTime.now();
  return now.microsecondsSinceEpoch;
}

DateTime date = DateTime.now();
TimeOfDay timeNow = TimeOfDay.now();

var selectedDateFor = DateFormat("yyyy/MM/dd").format(date);

var dates = List<DateTime>.generate(
    30,
    (i) => DateTime(
          DateTime.now().year,
          DateTime.now().month,
          DateTime.now().day,
        ).add(Duration(days: i)));

// List<String> drawerTitles = [
//   'Home',
//   'e-Wallet',
//   'History',
//   'Join Additional',
//   'Invite Others',
//   'How it works',
//   'FAQ\'s',
//   'My Profile',
//   'Notifitcations',
//   'Settings',
//   'About Us',
//   'Contact Us',
//   'Logout',
// ];
// List<IconData> drawerIcons = [
//   Icons.home,
//   Icons.account_balance_wallet,
//   Icons.people,
//   Icons.person_add_alt_sharp,
//   Icons.arrow_circle_down,
//   Icons.computer_outlined,
//   Icons.question_mark_sharp,
//   Icons.person,
//   Icons.notifications,
//   Icons.settings,
//   Icons.my_library_books,
//   Icons.chrome_reader_mode_rounded,
//   Icons.logout,
// ];

// List<String> settingImages = [
//   ImageAssets.person,
//   ImageAssets.notify,
//   ImageAssets.privacy,
//   ImageAssets.card,
//   ImageAssets.world,
//   ImageAssets.guard,
//   ImageAssets.terms,
// ];
// List<String> settingsTitles = [
//   'Account',
//   'Notifitcation',
//   'Change Password',
//   'Saved Cards',
//   'Change your language',
//   'Privacy Police',
//   'Terms & Conditions',
// ];

// List settingRoutes = [
//   Routes.profileRoute,
//   Routes.notificationRoute,
//   Routes.changePasswordRoute,
//   Routes.savedCardsRoute,
//   Routes.changeLanguagesRoute,
//   Routes.privacyPolicyRoute,
//   Routes.termsRoute,
// ];
// List drawerRoutes = [
//   Routes.mainRoute,
//   Routes.walletRoute,
//   Routes.historyRoute,
//   Routes.joinGroupRoute,
//   Routes.inviteOthersRoute,
//   Routes.howItWorksRoute,
//   Routes.faqRoute,
//   Routes.profileRoute,
//   Routes.notificationRoute,
//   Routes.settingsRoute,
//   Routes.aboutUs,
//   Routes.contactRoute,
//   Routes.loginRoute,
// ];

List faqQuestions = [
  '01.  What is SUSU?',
  '02.  How did this concept begin?',
  '03.  How does the SUSU activity work?',
  '04.  Who can participate?',
  '05.  Is this a company?',
  '06.  How can you give to a stranger?',
  '07.  Is this a pyramid?',
  '08.  Why would I want to participate?',
  '09.  Do I have to share this with family and friends?',
  '10.  Can I do this part-time?',
  '11.  Do I have to be a salesperson to do this program?',
];

List<String> languages = [
  'English',
  'French',
  'Deitsch',
  'Hutterisch',
  'Ukrainian',
  'Newfoundland Irish',
];

const String termsText =
    'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum';
