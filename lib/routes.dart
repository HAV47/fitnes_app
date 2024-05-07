import 'package:fitness_ui_ticket/ui/dashboard/ativity_tracker_screen.dart';
import 'package:fitness_ui_ticket/ui/dashboard/complete_setup_screen.dart';
import 'package:fitness_ui_ticket/ui/dashboard/home_screen.dart';
import 'package:fitness_ui_ticket/ui/dashboard/notification_screen.dart';
import 'package:fitness_ui_ticket/ui/dashboard/profile_screen.dart';
import 'package:fitness_ui_ticket/ui/login_register/complete_screen.dart';
import 'package:fitness_ui_ticket/ui/login_register/intro_register_screen.dart';
import 'package:fitness_ui_ticket/ui/login_register/login_screen.dart';
import 'package:fitness_ui_ticket/ui/login_register/register_screen.dart';
import 'package:fitness_ui_ticket/ui/login_register/welcome_screen.dart';
import 'package:fitness_ui_ticket/ui/meal_planner/breakfast_screen.dart';
import 'package:fitness_ui_ticket/ui/meal_planner/meal_home_screen.dart';
import 'package:fitness_ui_ticket/ui/meal_planner/meal_schedule_screen.dart';
import 'package:fitness_ui_ticket/ui/meal_planner/pancake_screen.dart';
import 'package:fitness_ui_ticket/ui/test_card.dart';
import 'package:fitness_ui_ticket/ui/workout_tracker/fullbody_workout_screen.dart';
import 'package:fitness_ui_ticket/ui/workout_tracker/instruct_workout_screen.dart';
import 'package:fitness_ui_ticket/ui/workout_tracker/workout_home_screen.dart';
import 'package:fitness_ui_ticket/ui/workout_tracker/workout_schedule_screen.dart';
import 'package:flutter/cupertino.dart';

final Map<String, WidgetBuilder> routes = {
  RegisterScreen.routeName: (context) => const RegisterScreen(),
  CompleteScreen.routeName: (context) => const CompleteScreen(),
  IntroRegisterScreen.routeName: (context) => const IntroRegisterScreen(),
  Test.routeName: (context) => const Test(),
  LoginScreen.routeName: (context) => const LoginScreen(),
  WelcomeScreen.routeName: (context) => const WelcomeScreen(),
  HomeScreen.routeName: (context) => const HomeScreen(),
  NotificationScreen.routeName: (context) => const NotificationScreen(),
  ActivityTrackerScreen.routeName: (context) => const ActivityTrackerScreen(),
  ProfileScreen.routeName: (context) => const ProfileScreen(),
  CompleteSetupScreen.routeName: (context) => const CompleteSetupScreen(),
  WorkoutHomeScreen.routeName: (context) => const WorkoutHomeScreen(),
  FullbodyWorkoutScreen.routeName: (context) => const FullbodyWorkoutScreen(),
  InstructWorkoutScreen.routeName: (context) => const InstructWorkoutScreen(),
  WorkoutScheduleScreen.routeName: (context) => const WorkoutScheduleScreen(),
  MealHomeScreen.routeName: (context) => const MealHomeScreen(),
  BreakfastScreen.routeName: (context) => const BreakfastScreen(),
  PancakeScreen.routeName: (context) => const PancakeScreen(),
  MealScheduleScreen.routeName: (context) => const MealScheduleScreen(),
};
