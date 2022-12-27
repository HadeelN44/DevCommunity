import 'package:community_dev/views/Dashboard.dart';
import 'package:community_dev/views/MainPage.dart';
import 'package:community_dev/views/Members.dart';
import 'package:community_dev/views/Registry/SignIn.dart';
import 'package:community_dev/views/Registry/SignUp.dart';
import 'package:community_dev/views/Timeline2/TimelineScreen.dart';
import 'package:community_dev/views/profile/Profile.dart';

import 'package:community_dev/views/Team.dart';
import 'package:community_dev/views/Teams.dart';

import 'package:community_dev/views/Timeline2/createPost.dart';
import 'package:community_dev/views/Registry/forgetPassword.dart';
import 'package:get/get.dart';

List<GetPage<dynamic>>? routerApp = [
  GetPage(
    name: NameRoute.signIn,
    page: () => SignIn(),
  ),
  GetPage(
    name: NameRoute.signUp,
    page: () => SignUp(),
  ),
  GetPage(
    name: NameRoute.timeline,
    page: () => TimelineScreen(
      isMyPost: false,
    ),
  ),
  GetPage(
    name: NameRoute.newPost,
    page: () => createPost(),
  ),
  GetPage(
    name: NameRoute.dashborad,
    page: () => Dashboard(),
  ),
  GetPage(
    name: NameRoute.teams,
    page: () => Teams(),
  ),
  GetPage(
    name: NameRoute.team,
    page: () => Team(),
  ),
  GetPage(
    name: NameRoute.mainScreen,
    page: () => MainPage(),
  ),
  GetPage(
    name: NameRoute.profile,
    page: () => Profile(),
  ),
  GetPage(
    name: NameRoute.members,
    page: () => Members(),
  ),
  GetPage(
    name: NameRoute.forgetPass,
    page: () => forgetPassword(),
  ),
];

abstract class NameRoute {
  static String signIn = "/signIn";
  static String signUp = "/signUp";
  static String timeline = "/timeline";
  static String newPost = "/newPost";
  static String dashborad = "/dashborad";
  static String teams = "/teams";
  static String team = "/team";
  static String mainScreen = "/mainScreen";
  static String profile = "/profile";
  static String members = "/members";
  static String forgetPass = "/forgetPass";
}
