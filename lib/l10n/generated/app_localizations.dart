import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_it.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'generated/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('it'),
  ];

  /// The name of the application
  ///
  /// In en, this message translates to:
  /// **'FEDMAN'**
  String get appName;

  /// Welcome message
  ///
  /// In en, this message translates to:
  /// **'Welcome!'**
  String get welcome;

  /// Subtitle on welcome page
  ///
  /// In en, this message translates to:
  /// **'Your all in one sports federation app'**
  String get yourAllInOneSportsFedrationApp;

  /// Apple sign up button text
  ///
  /// In en, this message translates to:
  /// **'Sign up With Apple'**
  String get signUpWithApple;

  /// Google sign up button text
  ///
  /// In en, this message translates to:
  /// **'Sign up With Google'**
  String get signUpWithGoogle;

  /// Prompt for existing account
  ///
  /// In en, this message translates to:
  /// **'Already have an account?'**
  String get alreadyHaveAnAccount;

  /// Login button text
  ///
  /// In en, this message translates to:
  /// **'Log In'**
  String get logIn;

  /// SignUp text
  ///
  /// In en, this message translates to:
  /// **'Login'**
  String get login;

  /// No description provided for @signup.
  ///
  /// In en, this message translates to:
  /// **'SignUp'**
  String get signup;

  /// Register button text
  ///
  /// In en, this message translates to:
  /// **'Register'**
  String get register;

  /// Email field label
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get email;

  /// Password field label
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get password;

  /// Forgot password link text
  ///
  /// In en, this message translates to:
  /// **'Forgot Password? '**
  String get forgotPassword;

  /// No description provided for @cancelReset.
  ///
  /// In en, this message translates to:
  /// **'Cancel Reset'**
  String get cancelReset;

  /// No description provided for @save.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get save;

  /// Reset password button text
  ///
  /// In en, this message translates to:
  /// **'Reset Password'**
  String get resetPassword;

  /// Reset password email page title
  ///
  /// In en, this message translates to:
  /// **'Reset Password'**
  String get resetPasswordEmail;

  /// Reset password phone page title
  ///
  /// In en, this message translates to:
  /// **'Reset Password'**
  String get resetPasswordPhone;

  /// Set new password page title
  ///
  /// In en, this message translates to:
  /// **'Set new password'**
  String get setNewPassword;

  /// Set new password subtitle
  ///
  /// In en, this message translates to:
  /// **'Let\'s set up a new password to keep going!'**
  String get setPasswordDescription;

  /// Google sign in button text
  ///
  /// In en, this message translates to:
  /// **'Login with Google'**
  String get signInWithGoogle;

  /// Apple sign in button text
  ///
  /// In en, this message translates to:
  /// **'Login in with Apple'**
  String get signInWithApple;

  /// Congratulations message
  ///
  /// In en, this message translates to:
  /// **'Congratulations!'**
  String get congratulations;

  /// Profile setup completion message
  ///
  /// In en, this message translates to:
  /// **'Awesome! You\'ve finished setting up your profile at FEDMAN.'**
  String get profileSetupComplete;

  /// Error message when Google Sign-In is cancelled
  ///
  /// In en, this message translates to:
  /// **'Google Sign-In was cancelled or failed. Please try again.'**
  String get googleSignInCancelled;

  /// Error message when ID token retrieval fails
  ///
  /// In en, this message translates to:
  /// **'Failed to get ID token from Google. Please try again.'**
  String get failedToGetIdToken;

  /// Generic sign-in failure message
  ///
  /// In en, this message translates to:
  /// **'Sign-in failed'**
  String get signInFailed;

  /// Error message for invalid reset code
  ///
  /// In en, this message translates to:
  /// **'Invalid reset code'**
  String get invalidResetCode;

  /// Social login error prefix
  ///
  /// In en, this message translates to:
  /// **'Social login error:'**
  String get socialLoginError;

  /// Phone tab label
  ///
  /// In en, this message translates to:
  /// **'Phone'**
  String get phone;

  /// Login page subtitle
  ///
  /// In en, this message translates to:
  /// **'Log in to your account and keep in touch with FEDMAN!'**
  String get logInToYourAccount;

  /// Email field title
  ///
  /// In en, this message translates to:
  /// **'Your Email'**
  String get yourEmail;

  /// Email field hint text
  ///
  /// In en, this message translates to:
  /// **'JhonDoe@mail.com'**
  String get emailHint;

  /// Password field title
  ///
  /// In en, this message translates to:
  /// **'Your password'**
  String get yourPassword;

  /// Password field hint text
  ///
  /// In en, this message translates to:
  /// **'enter your password'**
  String get passwordHint;

  /// Reset password link text
  ///
  /// In en, this message translates to:
  /// **'Reset'**
  String get reset;

  /// Login button loading text
  ///
  /// In en, this message translates to:
  /// **'Logging in...'**
  String get loggingIn;

  /// Register link prefix
  ///
  /// In en, this message translates to:
  /// **'Don\'t have an account? '**
  String get dontHaveAccount;

  /// Register link text
  ///
  /// In en, this message translates to:
  /// **'Create One'**
  String get createOne;

  /// Language selection label
  ///
  /// In en, this message translates to:
  /// **'Language : English (Change)'**
  String get languageLabel;

  /// Phone number field title
  ///
  /// In en, this message translates to:
  /// **'Phone Number'**
  String get phoneNumber;

  /// Register page title
  ///
  /// In en, this message translates to:
  /// **'Create an Account'**
  String get createAccount;

  /// Register page subtitle
  ///
  /// In en, this message translates to:
  /// **'Simply sign up to continue your journey with us and unlock all the exciting features we have to offer!'**
  String get registerSubtitle;

  /// Full name field title
  ///
  /// In en, this message translates to:
  /// **'Your Full name'**
  String get yourFullName;

  /// Full name field hint
  ///
  /// In en, this message translates to:
  /// **'John Doe'**
  String get fullNameHint;

  /// Email field title in register
  ///
  /// In en, this message translates to:
  /// **'Your email'**
  String get yourEmailInfo;

  /// Email field hint in register
  ///
  /// In en, this message translates to:
  /// **'JhonDoe@mail.com'**
  String get emailInfoHint;

  /// Create password field title
  ///
  /// In en, this message translates to:
  /// **'Create a password'**
  String get createPassword;

  /// Confirm password field title
  ///
  /// In en, this message translates to:
  /// **'Confirm Password'**
  String get confirmPassword;

  /// Confirm password field hint
  ///
  /// In en, this message translates to:
  /// **'confirm your password'**
  String get confirmPasswordHint;

  /// Generic loading text
  ///
  /// In en, this message translates to:
  /// **'Loading...'**
  String get loading;

  /// Continue button text
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get continueText;

  /// Success page title
  ///
  /// In en, this message translates to:
  /// **'Welcome to FEDMAN'**
  String get welcomeToFedman;

  /// Success page message
  ///
  /// In en, this message translates to:
  /// **'Awesome! Your account is all set up. Let\'s dive into the game and check out events, rankings, and more!'**
  String get successMessage;

  /// Continue to dashboard button
  ///
  /// In en, this message translates to:
  /// **'Continue to Dashboard'**
  String get continueToDashboard;

  /// Email validation error
  ///
  /// In en, this message translates to:
  /// **'Email is required'**
  String get emailRequired;

  /// Email format validation error
  ///
  /// In en, this message translates to:
  /// **'Enter a valid email'**
  String get enterValidEmail;

  /// Password validation error
  ///
  /// In en, this message translates to:
  /// **'Password is required'**
  String get passwordRequired;

  /// Password length validation error
  ///
  /// In en, this message translates to:
  /// **'Password must be at least 6 characters'**
  String get passwordMinLength;

  /// Full name validation error
  ///
  /// In en, this message translates to:
  /// **'Full name is required'**
  String get fullNameRequired;

  /// Confirm password validation error
  ///
  /// In en, this message translates to:
  /// **'Please confirm your password'**
  String get confirmPasswordRequired;

  /// Password match validation error
  ///
  /// In en, this message translates to:
  /// **'Passwords do not match'**
  String get passwordsDoNotMatch;

  /// Language selection page title
  ///
  /// In en, this message translates to:
  /// **'Choose Your Language'**
  String get chooseYourLanguage;

  /// Language selection page subtitle
  ///
  /// In en, this message translates to:
  /// **'Which language do you want to use for this app?'**
  String get whichLanguageDoYouWantToUseForThisApp;

  /// English language option
  ///
  /// In en, this message translates to:
  /// **'English'**
  String get english;

  /// Italian language option
  ///
  /// In en, this message translates to:
  /// **'Italia'**
  String get italia;

  /// Continue button text
  ///
  /// In en, this message translates to:
  /// **'Swipe to Continue'**
  String get swipeToContinue;

  /// Language change info text
  ///
  /// In en, this message translates to:
  /// **'You can change the language in settings'**
  String get youCanChangeTheLanguageInSettings;

  /// Language changed to English message
  ///
  /// In en, this message translates to:
  /// **'Language changed to English'**
  String get languageChangedToEnglish;

  /// Language changed to Italian message
  ///
  /// In en, this message translates to:
  /// **'Language changed to Italian'**
  String get languageChangedToItalian;

  /// Next button in profile completion
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get next;

  /// Title for language detection screen
  ///
  /// In en, this message translates to:
  /// **'Language detection'**
  String get languageDetection;

  /// Button text to confirm selected language
  ///
  /// In en, this message translates to:
  /// **'Confirm Language'**
  String get confirmLanguage;

  /// Label for default language option
  ///
  /// In en, this message translates to:
  /// **'Default Language'**
  String get defaultLanguage;

  /// Subtitle while detecting language
  ///
  /// In en, this message translates to:
  /// **'We are detecting your language...'**
  String get weAreDetectingYourLanguage;

  /// Detected label
  ///
  /// In en, this message translates to:
  /// **'Detected:'**
  String get detected;

  /// No description provided for @isThisYourPreferredLanguage.
  ///
  /// In en, this message translates to:
  /// **'Is this your preferred language?'**
  String get isThisYourPreferredLanguage;

  /// Change language button
  ///
  /// In en, this message translates to:
  /// **'Change Language'**
  String get changeLanguage;

  /// Back button in profile completion
  ///
  /// In en, this message translates to:
  /// **'Back'**
  String get back;

  /// Confirm button in profile completion
  ///
  /// In en, this message translates to:
  /// **'Confirm'**
  String get confirm;

  /// Step 1 label in profile completion
  ///
  /// In en, this message translates to:
  /// **'Step-01'**
  String get step01;

  /// Upload avatar instruction
  ///
  /// In en, this message translates to:
  /// **'Click to upload'**
  String get clickToUpload;

  /// Avatar upload option
  ///
  /// In en, this message translates to:
  /// **'or drag and drop'**
  String get orDragAndDrop;

  /// Random avatar generator
  ///
  /// In en, this message translates to:
  /// **'Generate a random avatar'**
  String get generateRandomAvatar;

  /// Federation selection title
  ///
  /// In en, this message translates to:
  /// **'Federation Selection'**
  String get federationSelection;

  /// Select federation dropdown hint
  ///
  /// In en, this message translates to:
  /// **'Select federation'**
  String get selectFederation;

  /// Add animal label
  ///
  /// In en, this message translates to:
  /// **'Add Animal'**
  String get addAnimal;

  /// Select animal dropdown hint
  ///
  /// In en, this message translates to:
  /// **'Select animal'**
  String get selectAnimal;

  /// Step 2 label in profile completion
  ///
  /// In en, this message translates to:
  /// **'Step-02'**
  String get step02;

  /// Country input field
  ///
  /// In en, this message translates to:
  /// **'Enter your country'**
  String get enterYourCountry;

  /// Country selection hint
  ///
  /// In en, this message translates to:
  /// **'Select country'**
  String get selectCountry;

  /// Street input field
  ///
  /// In en, this message translates to:
  /// **'Enter your street'**
  String get enterYourStreet;

  /// Street address input hint
  ///
  /// In en, this message translates to:
  /// **'Enter street address'**
  String get enterStreetAddress;

  /// City input field
  ///
  /// In en, this message translates to:
  /// **'Enter your city'**
  String get enterYourCity;

  /// City selection hint
  ///
  /// In en, this message translates to:
  /// **'Select city'**
  String get selectCity;

  /// Zip code input field
  ///
  /// In en, this message translates to:
  /// **'Enter zip code'**
  String get enterZipCode;

  /// Zip code input hint
  ///
  /// In en, this message translates to:
  /// **'Enter zip code'**
  String get enterZipCodeHint;

  /// Continue button after profile completion
  ///
  /// In en, this message translates to:
  /// **'Continue to Dashboard'**
  String get continueToDashboardProfile;

  /// First name field
  ///
  /// In en, this message translates to:
  /// **'Your first name'**
  String get yourFirstName;

  /// First name field hint
  ///
  /// In en, this message translates to:
  /// **'Jhon'**
  String get firstNameHint;

  /// Last name field
  ///
  /// In en, this message translates to:
  /// **'Your last name'**
  String get yourLastName;

  /// Last name field hint
  ///
  /// In en, this message translates to:
  /// **'Doe'**
  String get lastNameHint;

  /// Phone number field info
  ///
  /// In en, this message translates to:
  /// **'Phone Number'**
  String get phoneNumberInfo;

  /// DOB label
  ///
  /// In en, this message translates to:
  /// **'Date of Birth'**
  String get dateOfBirth;

  /// DOB field hint
  ///
  /// In en, this message translates to:
  /// **'22/10/1980'**
  String get dateOfBirthHint;

  /// Profile completion instruction
  ///
  /// In en, this message translates to:
  /// **'Tell me Details about yourself'**
  String get tellMeDetails;

  /// Profile completion instruction
  ///
  /// In en, this message translates to:
  /// **'Please fill out the fields below to help us set everything up smoothly!'**
  String get fillFieldsBelow;

  /// Completion status
  ///
  /// In en, this message translates to:
  /// **'All are done'**
  String get allAreDone;

  /// Password reset success message
  ///
  /// In en, this message translates to:
  /// **'Awesome! Your password\'s been reset. Just log in to your account now!'**
  String get passwordResetComplete;

  /// Code input field
  ///
  /// In en, this message translates to:
  /// **'Enter your code'**
  String get enterYourCode;

  /// Generic apology message
  ///
  /// In en, this message translates to:
  /// **'Sorry!'**
  String get sorry;

  /// Sign-up canceled message
  ///
  /// In en, this message translates to:
  /// **'The sign-up was canceled due to some issues.'**
  String get signupCanceled;

  /// Phone verification get code button
  ///
  /// In en, this message translates to:
  /// **'Get Code'**
  String get getCode;

  /// Phone verification verify button
  ///
  /// In en, this message translates to:
  /// **'Verify'**
  String get verify;

  /// Prompt for resend code
  ///
  /// In en, this message translates to:
  /// **'Didn\'t receive your code? '**
  String get didntReceiveCode;

  /// Retry button text
  ///
  /// In en, this message translates to:
  /// **'Try again'**
  String get tryAgain;

  /// Email confirmation login button
  ///
  /// In en, this message translates to:
  /// **'Login Now'**
  String get loginNow;

  /// Reset password page title
  ///
  /// In en, this message translates to:
  /// **'Forgot Password? '**
  String get forgotPasswordTitle;

  /// Reset password page description
  ///
  /// In en, this message translates to:
  /// **'No problem! We\'ll shoot you the reset instructions just pick whether you want them via phone or email.'**
  String get resetPasswordDescription;

  /// Prompt for resend code in reset pages
  ///
  /// In en, this message translates to:
  /// **'Didn\'t receive this code? '**
  String get didntReceiveThisCode;

  /// Resend code button
  ///
  /// In en, this message translates to:
  /// **'Click to resend'**
  String get clickToResend;

  /// Back to login button
  ///
  /// In en, this message translates to:
  /// **'Back to Login'**
  String get backToLogin;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'it'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
    case 'it':
      return AppLocalizationsIt();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
