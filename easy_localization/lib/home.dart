import 'package:dil_destek/const/local_enum.dart';
import 'package:dil_destek/init/language/locale_keys.g.dart';
import 'package:dil_destek/init/product_localization.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  bool isbool = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(LocaleKeys.home_title).tr(),
      ),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                setState(() {
                  isbool = !isbool;
                });
                if (isbool) {
                  Productlocalization.updateLanguage(
                      context: context, value: Locales.tr);
                } else {
                  Productlocalization.updateLanguage(
                      context: context, value: Locales.en);
                }
              },
              child: Text(LocaleKeys.general_button_save).tr()),
          Text("englis with turkish")
        ],
      ),
    );
  }
}
