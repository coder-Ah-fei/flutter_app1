import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DrawerPage extends StatefulWidget {
  DrawerPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _DrawerPageState createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {


  @override
  Widget build(BuildContext context) {
    return Drawer(
      semanticLabel: "aa",
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.cyan,
            ),
            child: Center(
              child: SizedBox(
                width: 60.0,
                height: 60.0,
                child: CircleAvatar(
                  child: Text('R'),
                ),
              ),
            ),
          ),
          ListTile(
              title: Text('ListTile1'),
              subtitle: Text('ListSubtitle1',maxLines: 2,overflow: TextOverflow.ellipsis,),
              leading: CircleAvatar(child: Text("1")),
              onTap: (){Navigator.pop(context);},
          ),
          Divider(),
          ListTile(
            title: Text('ListTile1'),
            subtitle: Text('ListSubtitle1',maxLines: 2,overflow: TextOverflow.ellipsis,),
            leading: CircleAvatar(child: Text("1")),
            onTap: (){Navigator.pop(context);},
          ),
        ],
      ),
    );
  }


}
