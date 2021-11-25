import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:watchlist_theme_task/provider/theme_provider.dart';

class ChangeThemebutton extends StatelessWidget {
  const ChangeThemebutton({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final themeprovider = Provider.of<ThemeProvider>(context);
    return Switch.adaptive(
        value: themeprovider.isDarkmode,
        onChanged: (value) {
          final provider = Provider.of<ThemeProvider>(context, listen: false);
          provider.toggletheme(value);
        });
  }
}
