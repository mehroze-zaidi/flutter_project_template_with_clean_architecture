import 'package:fedman_admin_app/core/common_widgets/common_widgets_barrel.dart';
import 'package:fedman_admin_app/core/common_widgets/google_social_login_button.dart';
import 'package:fedman_admin_app/core/constants/app_assets.dart';
import 'package:fedman_admin_app/core/constants/app_colors.dart';
import 'package:fedman_admin_app/core/extensions/extensions_barrell.dart';
import 'package:fedman_admin_app/core/navigation/app_routes.dart';
import 'package:fedman_admin_app/core/navigation/route_name.dart';
import 'package:fedman_admin_app/core/theme/app_text_styles.dart';
import 'package:fedman_admin_app/core/utils/logger_service.dart';
import 'package:fedman_admin_app/core/utils/snackbar_utils.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:google_sign_in_web/web_only.dart' as web;

import '../blocs/login_bloc/login_bloc.dart';
import '../data/repositories/account_repo.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  ValueNotifier isGoogleSingInInitialized = ValueNotifier(false);
  final _bloc = LoginBloc(accountRepo: GetIt.I.get<AccountRepo>());

  @override
  void initState() {
    super.initState();
    // WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
    //
    //   SnackbarUtils.showCustomToast(toastGravity: ToastGravity.BOTTOM_RIGHT,context, "Test Toast",duration: Duration(seconds: 50),isError: true);
    // },);
    GoogleSignIn.instance
        .initialize(
          clientId:
              "919583029988-ss0acloi6chqd3r4o3vc1nru1nt5otbo.apps.googleusercontent.com",
        )
        .then((value) {
          isGoogleSingInInitialized.value = true;

          GoogleSignIn.instance.authenticationEvents
              .listen((event) {
                if (event is GoogleSignInAuthenticationEventSignIn) {
                  GetIt.I.get<LoggerService>().i(
                    event.user.authentication.idToken,
                  );
                  _bloc.add(GoogleLoginRequested(event.user));
                }
              })
              .onError((Object e) {
                print(e);
              });
        });
  }

  @override
  Widget build(BuildContext context) {

    return BlocProvider(
      create: (context) => _bloc,
      child: BlocListener<LoginBloc, LoginState>(
        listener: (context, state) {
          if (state is LoginSuccess) {
            SnackbarUtils.showCustomToast(context,state.message,toastGravity: ToastGravity.BOTTOM_RIGHT);
            context.go(RouteName.home);
          } else if (state is LoginError) {
            SnackbarUtils.showCustomToast(context,state.message,toastGravity: ToastGravity.BOTTOM_RIGHT,isError: true,width: 300);
          }
        },
        child: BlocBuilder<LoginBloc, LoginState>(
          builder: (context, state) {
            return ScreenBody(
              enableScroll: false,
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 100),
                      height: double.maxFinite,
                      width: double.maxFinite,
                      color: AppColors.primaryColor,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            AppAssets.fedmanLogoLoginScreen,
                            width: 200,
                            height: 200,
                          ),
                          const SizedBox(height: 40),
                          Text(
                            'Welcome!',
                            style: AppTextStyles.heading1.copyWith(
                              color: AppColors.baseWhiteColor,
                            ),
                          ),
                          10.verticalSpace,
                          Text(
                            'Manage your federation with ease',
                            style: AppTextStyles.subHeading1.copyWith(
                              color: AppColors.baseWhiteColor,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Expanded(
                            child: Image.asset(
                              'assets/images/login_screen_showcase_image.png',
                              fit: BoxFit.contain,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Column(
                        children: [
                          Spacer(),

                          ValueListenableBuilder(
                            valueListenable: isGoogleSingInInitialized,
                            builder: (context, value, child) {
                              return value
                                  ? SizedBox(
                                      width: 300,
                                      child: web.renderButton()

                                    )
                                  : SizedBox();
                            },
                          ),

                          if (state is LoginLoading) ...[
                            const SizedBox(height: 20),
                            const CircularProgressIndicator(),
                          ],
                          const Spacer(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Copyright© 2025 by fedman.io',
                                style: AppTextStyles.navlinks1,
                              ),
                              TextButton(
                                onPressed: () {
                                  // TODO: Navigate to privacy policy
                                },
                                child: Text(
                                  'Privacy Policy',
                                  style: AppTextStyles.navlinks1,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
