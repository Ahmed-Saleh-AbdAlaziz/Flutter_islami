import 'package:flutter/material.dart';
import 'package:flutter_application_1/colorApp.dart';
import 'package:flutter_application_1/provider/App_provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

class LanguageBottomSheet extends StatefulWidget {
  const LanguageBottomSheet({super.key});

  @override
  State<LanguageBottomSheet> createState() => _LanguageBottomSheetState();
}

class _LanguageBottomSheetState extends State<LanguageBottomSheet> {
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
              provider.changeLanguage("en");
            },
            child:provider.appLanguage=='en'?
                getSelectedItemWidget(AppLocalizations.of(context)!.english):
                getUnSelectedItemWidget(AppLocalizations.of(context)!.english)
          ),
          InkWell(
            onTap: () {
              provider.changeLanguage('ar');
            },
              child:provider.appLanguage=='ar'?
              getSelectedItemWidget(AppLocalizations.of(context)!.arabic):
              getUnSelectedItemWidget(AppLocalizations.of(context)!.arabic)
          ),
        ],
      ),
    );
  }

  getSelectedItemWidget( String text){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text,
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(color: AppColor.primaryLight_Color)),
        Icon(Icons.check)
      ],
    );
  }

  getUnSelectedItemWidget(String text){
    return  Text(text,
        style: Theme.of(context).textTheme.bodyMedium);
  }
}
