import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:inscribe/core/i18n/strings.g.dart';
import 'package:inscribe/core/presentation/app_color_scheme.dart';
import 'package:inscribe/core/presentation/app_text_styles.dart';
import 'package:inscribe/core/presentation/widgets/app_scaffold.dart';
import 'package:inscribe/features/welcome/ui/welcome_base_page.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  int activePageIndex = 0;

  @override
  Widget build(BuildContext context) {
    // throw Exception();
    return AppScaffold(
      child: SizedBox.expand(
        child: Container(
          color: AppColorScheme.of(context).beige,
          child: Stack(
            fit: StackFit.expand,
            children: [
              PageView(
                children: _getWelcomePageWidgets(),
                onPageChanged: (value) {
                  setState(() {
                    activePageIndex = value;
                  });
                },
              ),
              Positioned(
                top: 50,
                left: 50,
                child: Text(
                  Translations.of(context).appName,
                  style: AppTextStyles.of(context).mainTitle,
                ),
              ),
              _buildPageIndicator(),
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> _getWelcomePageWidgets() {
    const maxPages = 5;
    return List.generate(
        maxPages,
        (index) => WelcomeBasePage(
              index: index,
              isLast: index == maxPages - 1,
            ));
  }

  Widget _buildPageIndicator() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 40),
        child: AnimatedSmoothIndicator(
          activeIndex: activePageIndex,
          count: _getWelcomePageWidgets().length,
          effect: SwapEffect(
              dotHeight: 10,
              dotWidth: 10,
              spacing: 15,
              dotColor: AppColorScheme.of(context).beige.withOpacity(0.5),
              activeDotColor: AppColorScheme.of(context).beige),
        ),
      ),
    );
  }
}
