import 'package:vms_driver/core/constants/app_assets.dart';

final List<Map<String, String>> onboardData = const [
  {
    'image': OnboardAssets.anywhereYouAre,
    'title': 'Anywhere you are',
    'description':
        'Sell houses easily with the help of\nListennoryx and to make this line big\nI am writing more.',
  },
  {
    'image': OnboardAssets.trackyourride,
    'title': 'Track Your Ride Live',
    'description':
        'Follow your driver in real time and\nknow exactly when they’ll arrive',
  },
  {
    'image': OnboardAssets.bookYourCar,
    'title': 'Book your car',
    'description':
        'Pay your way with cards, wallets, or \ncash—fast, safe, and hassle-free.',
  },
];

class AppTexts {
  AppTexts._();

  static const String welcomeTitle = 'Start Your Journey\nwith ';
  static const String welcomeSubtitle = 'Bookit';
  static const String welcomeDescription =
      'Book rides instantly, track your trip\nlive, and pay seamlessly.';

  static const String register = 'Register';
  static const String loginNow = 'Login now';

  static const String signUpTitle = 'Create Account';
  static const String namefield = 'Name';
  static const String emailfield = 'Email';
  static const String enterOtp = 'Enter OTP';
  static const String mobileNumber = 'Mobile number';
  static const String otpInfo = 'You will receive 5 - digit otp';
  static const String otpsubTitle = '5 digit otp has been sent to\n';
  static const String resendOtp = 'Resend OTP';
}
