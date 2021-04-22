import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppListForIPage extends StatefulWidget {

  AppListForIPage({Key key}) : super(key: key);


  @override
  AppListForIPageState createState() => AppListForIPageState();
}

class AppListForIPageState extends State<AppListForIPage>{

  bool value = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        padding: EdgeInsets.only(bottom: 80),
        children: [
          Card(
            elevation: value ? 15 : 5,
            child: AnimatedSwitcher(
              duration: Duration(microseconds: 200),
              child: ListTile(
                key: UniqueKey(),
                dense: true,
                selected: value,
                title: Text('学习通'),
                subtitle: Text('学习是一种信仰'),
                trailing: Container(
                    width: ScreenUtil().setWidth(60),
                    height: ScreenUtil().setWidth(50),
                    child: Switch(
                      activeColor:Colors.red,
                      activeTrackColor:Colors.yellow,
                      inactiveThumbColor:Colors.pink[200],
                      inactiveTrackColor:Colors.black,
                      value: value,
                      onChanged: (bool v) {
                        setState(() {
                          value = !value;
                        });
                      },
                    )
                ),
              ),
            ),
          ),
          Card(
            elevation: value ? 15 : 5,
            child: AnimatedSwitcher(
              duration: Duration(microseconds: 200),
              child: ListTile(
                key: UniqueKey(),
                dense: true,
                selected: value,
                title: Text('学习通'),
                subtitle: Text('学习是一种信仰'),
                trailing: Container(
                    width: ScreenUtil().setWidth(60),
                    height: ScreenUtil().setWidth(50),
                    child: Switch(
                      activeColor:Colors.red,
                      activeTrackColor:Colors.yellow,
                      inactiveThumbColor:Colors.pink[200],
                      inactiveTrackColor:Colors.black,
                      value: value,
                      onChanged: (bool v) {
                        setState(() {
                          value = !value;
                        });
                      },
                    )
                ),
              ),
            ),
          ),
          Card(
            elevation: value ? 15 : 5,
            child: AnimatedSwitcher(
              duration: Duration(microseconds: 200),
              child: ListTile(
                key: UniqueKey(),
                dense: true,
                selected: value,
                title: Text('学习通'),
                subtitle: Text('学习是一种信仰'),
                trailing: Container(
                    width: ScreenUtil().setWidth(60),
                    height: ScreenUtil().setWidth(50),
                    child: Switch(
                      activeColor:Colors.red,
                      activeTrackColor:Colors.yellow,
                      inactiveThumbColor:Colors.pink[200],
                      inactiveTrackColor:Colors.black,
                      value: value,
                      onChanged: (bool v) {
                        setState(() {
                          value = !value;
                        });
                      },
                    )
                ),
              ),
            ),
          ),
          Card(
            elevation: value ? 15 : 5,
            child: AnimatedSwitcher(
              duration: Duration(microseconds: 200),
              child: ListTile(
                key: UniqueKey(),
                dense: true,
                selected: value,
                title: Text('学习通'),
                subtitle: Text('学习是一种信仰'),
                trailing: Container(
                    width: ScreenUtil().setWidth(60),
                    height: ScreenUtil().setWidth(50),
                    child: Switch(
                      activeColor:Colors.red,
                      activeTrackColor:Colors.yellow,
                      inactiveThumbColor:Colors.pink[200],
                      inactiveTrackColor:Colors.black,
                      value: value,
                      onChanged: (bool v) {
                        setState(() {
                          value = !value;
                        });
                      },
                    )
                ),
              ),
            ),
          ),
          Card(
            elevation: value ? 15 : 5,
            child: AnimatedSwitcher(
              duration: Duration(microseconds: 200),
              child: ListTile(
                key: UniqueKey(),
                dense: true,
                selected: value,
                title: Text('学习通'),
                subtitle: Text('学习是一种信仰'),
                trailing: Container(
                    width: ScreenUtil().setWidth(60),
                    height: ScreenUtil().setWidth(50),
                    child: Switch(
                      activeColor:Colors.red,
                      activeTrackColor:Colors.yellow,
                      inactiveThumbColor:Colors.pink[200],
                      inactiveTrackColor:Colors.black,
                      value: value,
                      onChanged: (bool v) {
                        setState(() {
                          value = !value;
                        });
                      },
                    )
                ),
              ),
            ),
          ),
          Card(
            elevation: value ? 15 : 5,
            child: AnimatedSwitcher(
              duration: Duration(microseconds: 200),
              child: ListTile(
                key: UniqueKey(),
                dense: true,
                selected: value,
                title: Text('学习通'),
                subtitle: Text('学习是一种信仰'),
                trailing: Container(
                    width: ScreenUtil().setWidth(60),
                    height: ScreenUtil().setWidth(50),
                    child: Switch(
                      activeColor:Colors.red,
                      activeTrackColor:Colors.yellow,
                      inactiveThumbColor:Colors.pink[200],
                      inactiveTrackColor:Colors.black,
                      value: value,
                      onChanged: (bool v) {
                        setState(() {
                          value = !value;
                        });
                      },
                    )
                ),
              ),
            ),
          ),
          Card(
            elevation: value ? 15 : 5,
            child: AnimatedSwitcher(
              duration: Duration(microseconds: 200),
              child: ListTile(
                key: UniqueKey(),
                dense: true,
                selected: value,
                title: Text('学习通'),
                subtitle: Text('学习是一种信仰'),
                trailing: Container(
                    width: ScreenUtil().setWidth(60),
                    height: ScreenUtil().setWidth(50),
                    child: Switch(
                      activeColor:Colors.red,
                      activeTrackColor:Colors.yellow,
                      inactiveThumbColor:Colors.pink[200],
                      inactiveTrackColor:Colors.black,
                      value: value,
                      onChanged: (bool v) {
                        setState(() {
                          value = !value;
                        });
                      },
                    )
                ),
              ),
            ),
          ),
          Card(
            elevation: value ? 15 : 5,
            child: AnimatedSwitcher(
              duration: Duration(microseconds: 200),
              child: ListTile(
                key: UniqueKey(),
                dense: true,
                selected: value,
                title: Text('学习通'),
                subtitle: Text('学习是一种信仰'),
                trailing: Container(
                    width: ScreenUtil().setWidth(60),
                    height: ScreenUtil().setWidth(50),
                    child: Switch(
                      activeColor:Colors.red,
                      activeTrackColor:Colors.yellow,
                      inactiveThumbColor:Colors.pink[200],
                      inactiveTrackColor:Colors.black,
                      value: value,
                      onChanged: (bool v) {
                        setState(() {
                          value = !value;
                        });
                      },
                    )
                ),
              ),
            ),
          ),
          Card(
            elevation: value ? 15 : 5,
            child: AnimatedSwitcher(
              duration: Duration(microseconds: 200),
              child: ListTile(
                key: UniqueKey(),
                dense: true,
                selected: value,
                title: Text('学习通'),
                subtitle: Text('学习是一种信仰'),
                trailing: Container(
                    width: ScreenUtil().setWidth(60),
                    height: ScreenUtil().setWidth(50),
                    child: Switch(
                      activeColor:Colors.red,
                      activeTrackColor:Colors.yellow,
                      inactiveThumbColor:Colors.pink[200],
                      inactiveTrackColor:Colors.black,
                      value: value,
                      onChanged: (bool v) {
                        setState(() {
                          value = !value;
                        });
                      },
                    )
                ),
              ),
            ),
          ),
          Card(
            elevation: value ? 15 : 5,
            child: AnimatedSwitcher(
              duration: Duration(microseconds: 200),
              child: ListTile(
                key: UniqueKey(),
                dense: true,
                selected: value,
                title: Text('学习通'),
                subtitle: Text('学习是一种信仰'),
                trailing: Container(
                    width: ScreenUtil().setWidth(60),
                    height: ScreenUtil().setWidth(50),
                    child: Switch(
                      activeColor:Colors.red,
                      activeTrackColor:Colors.yellow,
                      inactiveThumbColor:Colors.pink[200],
                      inactiveTrackColor:Colors.black,
                      value: value,
                      onChanged: (bool v) {
                        setState(() {
                          value = !value;
                        });
                      },
                    )
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

}
