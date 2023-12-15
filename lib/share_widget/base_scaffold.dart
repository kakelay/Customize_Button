import 'package:customize_button/cores/thems/app_style.dart';
import 'package:customize_button/cores/values/app_colors.dart';
import 'package:flutter/material.dart';
 

class BaseScaffold extends StatelessWidget {
  const BaseScaffold({
    super.key,
    required this.body,
    this.hideBackButton = false,
    this.title = '',
    this.topPadding = AppStyle.SPACING_LARGE,
    this.horizontalPadding = AppStyle.SPACING_LARGE,
    this.bottomNavigationBarWidget,
    this.actions = const [],
  });
  final Widget body;
  final bool hideBackButton;

  final String title;
  final double topPadding;
  final double horizontalPadding;
  final Widget? bottomNavigationBarWidget;
  final List<Widget> actions;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          leading: _backButton(),
          title: title == '' ? null : Text(title),
          centerTitle: true,
          automaticallyImplyLeading: false,
          actions: actions,
        ),
        body: SafeArea(
          minimum: EdgeInsets.symmetric(horizontal: horizontalPadding),
          child: Padding(
            padding: EdgeInsets.only(
              top: topPadding,
            ),
            child: body,
          ),
        ),
        bottomNavigationBar: bottomNavigationBarWidget,
      ),
    );
  }

  Widget? _backButton() {
    return (hideBackButton
        ? null
        : const Row(
            children: [
              Spacer(),
              DecoratedBox(
                decoration: BoxDecoration(
                  color: AppColors.white,
                  shape: BoxShape.circle,
                ),
                child: Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    Icon(Icons.arrow_back),
                    BackButton(
                      color: Colors.transparent,
                    )
                  ],
                ),
              ),
            ],
          ));
  }
}
