import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:inscribe/core/extensions/context_extensions.dart';
import 'package:inscribe/core/i18n/strings.g.dart';
import 'package:inscribe/core/injection_container.dart';
import 'package:inscribe/core/presentation/app_button_styles.dart';
import 'package:inscribe/core/presentation/app_color_scheme.dart';
import 'package:inscribe/core/presentation/app_text_styles.dart';
import 'package:inscribe/core/presentation/widgets/app_button.dart';
import 'package:inscribe/core/router/app_router.dart';
import 'package:inscribe/features/welcome/bloc/welcome_bloc.dart';
import 'package:inscribe/features/welcome/ui/welcome_divider_const.dart';

class WelcomeBasePage extends StatelessWidget {
  WelcomeBasePage({super.key, required this.index, this.isLast = false});

  final int index;
  final bool isLast;

  final _bloc = IC.getIt<WelcomeBloc>();

  void _navigateHome(BuildContext context) async {
    _bloc.add(FinishFirstRunEvent());
    await Future.delayed(Durations.short1);
    context.pushReplacement(Routes.home);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      fit: StackFit.expand,
      children: [
        _buildOverlapBox(context),
        _buildIllustration(context),
        _buildBackground(context),
        _buildTextDescription(context),
      ],
    );
  }

  Widget _buildTextDescription(BuildContext context) {
    double containerHeight =
        (context.getScreenHeight() * welcomeBottomContainerHeightPercentage) +
            (context.getScreenWidth() * waveDividerHeight / waveDividerWidth);

    return Align(
      alignment: Alignment.bottomCenter,
      child: SizedBox(
        height: containerHeight,
        width: double.infinity,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  Translations.of(context).welcomeScreen.slides[index],
                  style: AppTextStyles.of(context).welcomeDescription,
                  textAlign: TextAlign.center,
                ),
                if (isLast)
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: SizedBox(
                      width: double.infinity,
                      child: AppButton(
                        text:
                            Translations.of(context).welcomeScreen.startButton,
                        style: AppButtonStyles.of(context).white,
                        onPressed: () {
                          _navigateHome(context);
                        },
                      ),
                    ),
                  )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildBackground(BuildContext context) {
    double containerHeight =
        (context.getScreenHeight() * welcomeBottomContainerHeightPercentage);

    String imageAssetPath =
        "assets/images/wave_dividers/${context.getIsDarkTheme() ? 'dark' : 'light'}/wave_divider_${index + 1}.png";

    return Align(
      alignment: Alignment.bottomCenter,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: double.infinity,
            child: Image.asset(
              imageAssetPath,
              fit: BoxFit.fitWidth,
            ),
          ),
          Container(
            color: AppColorScheme.of(context).gray,
            height: containerHeight,
          ),
        ],
      ),
    );
  }

  Widget _buildIllustration(BuildContext context) {
    double containerHeight = context.getScreenHeight() -
        ((context.getScreenHeight() *
                welcomeBottomContainerHeightPercentage) + // Bottom container height
            (context.getScreenWidth() * waveDividerHeight / waveDividerWidth) *
                0.5); // Wave divider height

    String imageAssetPath =
        "assets/images/welcome_illustrations/${context.getIsDarkTheme() ? 'dark' : 'light'}/welcome_illustration_${index + 1}.png";

    return Align(
      alignment: Alignment.topCenter,
      child: SizedBox(
        height: containerHeight,
        width: double.infinity,
        child: FractionallySizedBox(
          widthFactor: 0.8,
          heightFactor: 0.8,
          child: Padding(
            padding: const EdgeInsets.only(top: 70),
            child: Image.asset(
              imageAssetPath,
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
    );
  }

  //**
  // This box helps with the thin white line that appears sometimes between
  // the bottom container and the wave image
  // */
  Widget _buildOverlapBox(BuildContext context) {
    final bottomContainerHeight =
        (context.getScreenHeight() * welcomeBottomContainerHeightPercentage);

    return Positioned(
        bottom: bottomContainerHeight - 15,
        height: 30,
        left: 0,
        right: 0,
        child: Container(
          color: AppColorScheme.of(context).black,
        ));
  }
}
