import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotter_user/features/auth/presentation/screens/otb_view.dart';
import 'package:spotter_user/features/goals/business_logic/cubit/cubit/goals_cubit.dart';
import 'package:spotter_user/features/goals/presentation/screens/goals_view.dart';
import 'package:spotter_user/features/home/presentation/screens/main_view.dart';
import 'package:spotter_user/features/personal_info/presentation/screens/edit_personal_info_view.dart';
import 'package:spotter_user/features/personal_info/presentation/screens/personal_info_view.dart';

import '../../features/auth/presentation/screens/login_view.dart';

import '../../features/auth/presentation/screens/register_view.dart';
import '../../features/splash/presentation/screens/splash_view.dart';
import 'strings_manager.dart';

class Routes {
  static const String splashRoute = "/";
  static const String loginRoute = "/login";
  static const String registerRoute = "/register";
  static const String otbRoute = "/otbRoute";
  static const String personalInfo = "/personalInfoRoute";
  static const String editPersonalInfo = "/editPersonalInfoRoute";

  // static const String paymentSuccessRoute = "/paymentSuccess";
  static const String mainRoute = "/mainRoute";

  static const String homeRoute = "/homeRoute";
  static const String goalsRoute = "/goalsRoute";

  // static const String transactionDetailsRoute = "/transactionDetailsRoute";
  // static const String withdrawRoute = "/withdrawRoute";
  // static const String historyRoute = "/historyRoute";
  // static const String settingsRoute = "/settingsRoute";

  // static const String profileRoute = "/profile";
  // static const String editProfileRoute = "/editProfileRoute";

  // static const String forgotPasswordRoute = "/forgotPassword";
  // static const String mainPlanetsRoute = "/mainPlanets";
  // static const String storeDetailsRoute = "/storeDetails";
  // static const String qrDetails = "/qrDetails";
  // static const String cartRoute = "/cart";
  // static const String groupPaySuccessRoute = "/groupPaySuccessRoute";
  // static const String joinGroupRoute = "/joinGroupRoute";
  // static const String groupDetailsRoute = "/groupRoute";
  // static const String groupPayDetailsRoute = "/groupPayDetailsRoute";
  // static const String notificationRoute = "/notification";
  // static const String contactRoute = "/contactRoute";
  // static const String changePasswordRoute = "/changePasswordRoute";
  // static const String changeLanguagesRoute = "/changeLanguagesRoute";
  // static const String savedCardsRoute = "/savedCardsRoute";
  // static const String termsRoute = "/termsRoute";

  // static const String privacyPolicyRoute = "/privacyPolicyRoute";
  // static const String aboutUs = "/aboutUs";
  // static const String inviteOthersRoute = "/inviteOthersRoute";
  // static const String howItWorksRoute = "/howItWorksRoute";
  // static const String faqRoute = "/faqRoute";
}

class RouteGenerator {
  late GoalsCubit tasksCubit;
  RouteGenerator() {
    tasksCubit = GoalsCubit();
  }
  Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_) => const SplashView());
      case Routes.loginRoute:
        return MaterialPageRoute(
          builder: (_) => const LoginView(),
        );

      case Routes.otbRoute:
        return MaterialPageRoute(builder: (_) => const OtbView());

      case Routes.registerRoute:
        //  initRegisterModule();
        return MaterialPageRoute(builder: (_) => const RegisterView());

      case Routes.personalInfo:
        return MaterialPageRoute(builder: (_) => const PersonalInfoView());
      case Routes.editPersonalInfo:
        return MaterialPageRoute(builder: (_) => const EditPersonalInfoView());
      case Routes.mainRoute:
        return MaterialPageRoute(
            builder: (_) => BlocProvider.value(
                  value: tasksCubit,
                  child: const MainView(),
                ));
      case Routes.goalsRoute:
        return MaterialPageRoute(builder: (_) => const GoalsView());
      // case Routes.walletRoute:
      //   return MaterialPageRoute(builder: (_) => const WalletView());
      // case Routes.transactionDetailsRoute:
      //   return MaterialPageRoute(
      //       builder: (_) => const TransactionDetailsView());
      // case Routes.withdrawRoute:
      //   return MaterialPageRoute(builder: (_) => const WithdrawView());
      // case Routes.historyRoute:
      //   return MaterialPageRoute(builder: (_) => const HistoryView());
      // case Routes.groupDetailsRoute:
      //   return MaterialPageRoute(builder: (_) => const GroupDetailsView());
      // case Routes.joinGroupRoute:
      //   return MaterialPageRoute(builder: (_) => const JoinGroupsView());
      // case Routes.groupPayDetailsRoute:
      //   return MaterialPageRoute(builder: (_) => const GroupPayDetails());
      // case Routes.groupPaySuccessRoute:
      //   return MaterialPageRoute(builder: (_) => const GroupPaySuccess());
      // case Routes.settingsRoute:
      //   return MaterialPageRoute(builder: (_) => const SettingsView());
      // case Routes.profileRoute:
      //   return MaterialPageRoute(builder: (_) => const ProfileView());
      // case Routes.editProfileRoute:
      //   return MaterialPageRoute(builder: (_) => const EditProfileView());
      // case Routes.notificationRoute:
      //   return MaterialPageRoute(builder: (_) => const NotificationView());
      // case Routes.contactRoute:
      //   return MaterialPageRoute(builder: (_) => const ContactView());
      // case Routes.changePasswordRoute:
      //   return MaterialPageRoute(builder: (_) => const ChangePasswordView());
      // case Routes.changeLanguagesRoute:
      //   return MaterialPageRoute(builder: (_) => const ChangeLanguagesView());
      // case Routes.savedCardsRoute:
      //   return MaterialPageRoute(builder: (_) => const SavedCardsView());
      // case Routes.termsRoute:
      //   return MaterialPageRoute(builder: (_) => const TermsView());
      // case Routes.privacyPolicyRoute:
      //   return MaterialPageRoute(builder: (_) => const PrivacyPolicyView());
      // case Routes.aboutUs:
      //   return MaterialPageRoute(builder: (_) => const AboutUsView());
      // case Routes.inviteOthersRoute:
      //   return MaterialPageRoute(builder: (_) => const InviteOthersView());
      // case Routes.howItWorksRoute:
      //   return MaterialPageRoute(builder: (_) => const HowItWorksView());
      // case Routes.faqRoute:
      //   return MaterialPageRoute(builder: (_) => const FaqView());
      // case Routes.forgotPasswordRoute:
      //   //  initForgotPasswordModule();
      //   return MaterialPageRoute(builder: (_) => const ForgotPasswordView());
      // case Routes.homeRoute:
      //   //  initHomeModule();
      //   return MaterialPageRoute(
      //       builder: (_) => MultiBlocProvider(
      //             providers: [
      //               BlocProvider(
      //                 create: (context) => getIt<ProductsCubit>(),
      //               ),
      //               BlocProvider(
      //                 create: (context) => getIt<ForumsCubit>(),
      //               )
      //             ],
      //             child: const HomeView(),
      //           ));
      // case Routes.mainPlanetsRoute:
      //   //initLoginModule();
      //   return MaterialPageRoute(builder: (_) => const MainPlanetsView());
      // case Routes.storeDetailsRoute:
      //   // initStoreDetailsModule();
      //   return MaterialPageRoute(builder: (_) => const DetailsView());
      // case Routes.qrDetails:
      //   // initStoreDetailsModule();
      //   return MaterialPageRoute(builder: (_) => const ScannedItemDetails());
      // case Routes.cartRoute:
      //   // initStoreDetailsModule();
      //   return MaterialPageRoute(builder: (_) => const CartView());
      // case Routes.profileRoute:
      //   // initStoreDetailsModule();
      //   return MaterialPageRoute(builder: (_) => const ProfileView());
      // case Routes.createPostsRoute:
      //   // initStoreDetailsModule();
      //   return MaterialPageRoute(
      //       builder: (_) => BlocProvider(
      //             create: (context) => getIt<ForumsCubit>(),
      //             child: const CreatePostsView(),
      //           ));
      // case Routes.discussionForumRoute:
      //   // initStoreDetailsModule();
      //   return MaterialPageRoute(
      //       builder: (_) => BlocProvider(
      //             create: (context) => getIt<ForumsCubit>(),
      //             child: const DiscussionForumView(),
      //           ));
      // case Routes.quizRoute:
      //   // initStoreDetailsModule();
      //   return MaterialPageRoute(builder: (_) => const QuizView());
      // case Routes.blogRoute:
      //   // initStoreDetailsModule();
      //   return MaterialPageRoute(builder: (_) => const BlogView());
      // case Routes.singleBlogRoute:
      //   // initStoreDetailsModule();
      //   return MaterialPageRoute(builder: (_) => const SingleBlogView());
      // case Routes.notificationRoute:
      //   // initStoreDetailsModule();
      //   return MaterialPageRoute(builder: (_) => const NotifiticationView());
      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: Text(AppStrings.noRouteFound.trim()),
        ),
        body: Center(child: Text(AppStrings.noRouteFound.trim())),
      ),
    );
  }
}
