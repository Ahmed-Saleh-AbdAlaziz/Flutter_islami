import 'package:flutter/material.dart';
import 'package:flutter_application_1/colorApp.dart';
import 'package:flutter_application_1/provider/App_provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

class ThemeBottomSheet extends StatefulWidget {


  @override
  State<ThemeBottomSheet> createState() => _ThemeBottomSheetState();
}

class _ThemeBottomSheetState extends State<ThemeBottomSheet> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppProvider>(context);
    return Container(
      margin: EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          InkWell(
            onTap: () {
              provider.changeTheme(ThemeMode.dark);
            },
            child:provider.isDarkMode()?
            getSelectedThemeMode(AppLocalizations.of(context)!.dark):
            getUnSelectedThemeMode(AppLocalizations.of(context)!.dark)


          ),
          InkWell(
            onTap: () {
              provider.changeTheme(ThemeMode.light);
            },
    child:provider.isDarkMode()?
    getSelectedThemeMode(AppLocalizations.of(context)!.light):
    getUnSelectedThemeMode(AppLocalizations.of(context)!.light)

          ),
        ],
      ),
    );
  }

  getSelectedThemeMode(String text){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text,
            style: Theme.of(context).textTheme.bodyMedium!
                .copyWith(color: AppColor.primaryLight_Color)), Icon(Icons.check)

      ],
    );
  }

  getUnSelectedThemeMode(String text){
    return Text(text,
        style: Theme.of(context).textTheme.bodyMedium);
  }
}
