import 'package:flutter/material.dart';

import 'alert_dialog_demo.dart';
import 'bottom_sheet_demo.dart';
import 'button_demo.dart';
import 'checkbox_demo.dart';
import 'datetime_demo.dart';
import 'expansion_panel_demo.dart';
import 'floating_action_demo.dart';
import 'form_demo.dart';
import 'popup_menu_button_demo.dart';
import 'radio_demo.dart';
import 'simple_dialog_demo.dart';
import 'slider_demo.dart';
import 'snack_bar_demo.dart';
import 'switch_demo.dart';

class MaterialComponents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MaterialComponents'),
        elevation: 0.0,
      ),
      body: ListView(
        children: <Widget>[
          ListItem(title: 'ExpansionPanelDemo', page: ExpansionPanelDemo()),
          ListItem(title: 'SnackBarDemo', page: SnackBarDemo()),
          ListItem(title: 'AlertDialogDemo', page: AlertDialogDemo()),
          ListItem(title: 'BottomSheetDemo', page: BottomSheetDemo()),
          ListItem(title: 'SimpleDialogDemo', page: SimpleDialogDemo()),
          ListItem(title: 'DateTimeDemo', page: DateTimeDemo()),
          ListItem(title: 'SliderDemo', page: SliderDemo()),
          ListItem(title: 'SwitchDemo', page: SwitchDemo()),
          ListItem(title: 'RadioDemo', page: RadioDemo()),
          ListItem(title: 'CheckboxDemo', page: CheckboxDemo()),
          ListItem(title: 'FormDemo', page: FormDemo()),
          ListItem(title: 'PopupMenuButton', page: PopupMenuButtonDemo()),
          ListItem(title: 'Button', page: ButtonDemo()),
          ListItem(
              title: 'FloatingActionButton', page: FloatingActionButtonDemo()),
        ],
      ),
    );
  }
}

class _WidgetDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('_WidgetDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[],
            ),
          ],
        ),
      ),
    );
  }
}

class ListItem extends StatelessWidget {
  final String title;
  final Widget page;

  ListItem({
    this.title,
    this.page,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => page),
        );
      },
    );
  }
}
