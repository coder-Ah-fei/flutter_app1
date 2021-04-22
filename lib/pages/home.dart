import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app1/pages/drawer.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:path_provider/path_provider.dart';
import 'appList.dart';
import 'package:dio/dio.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var bannerList = [];
// 创建渠道
  static const channel = const MethodChannel("your_channel_name");

  Future<void> callNativeMethod(String msg) async {
    try {
      // 通过渠道，调用原生代码代码的方法
      String future = await channel.invokeMethod("your_method_name", {"msg": msg});
      // 打印执行的结果
      print('dsafas');
      print(future);
    } on PlatformException catch (e) {
      print(e.toString());
    }
  }

  void _incrementCounter() {
    callNativeMethod("开始");
  }

  final List<BottomNavigationBarItem> bottomNavItems = [
    BottomNavigationBarItem(
      backgroundColor: Colors.blue,
      icon: Icon(Icons.home),
      label: "自提秒到",
    ),
    BottomNavigationBarItem(
      backgroundColor: Colors.green,
      icon: Icon(Icons.message),
      label: "长线阅读",
    ),
    BottomNavigationBarItem(
      backgroundColor: Colors.amber,
      icon: Icon(Icons.shopping_cart),
      label: "任务综合",
    ),
  ];
  int currentIndex = 0;

  List<String> _bannerUrlList = [
    "http://ossweb-img.qq.com/images/lol/wallpapers/sivir_1024x768.jpg",
    "http://ossweb-img.qq.com/images/lol/wallpapers/Alistar_1024x768.jpg",
    "http://ossweb-img.qq.com/images/lol/wallpapers/Janna_1024x768.jpg",
    "http://ossweb-img.qq.com/images/lol/wallpapers/Amumu_1024x768.jpg",
  ];
  //定义文本控制器
  TextEditingController _inputController = new TextEditingController();
  final pages = [AppListForIPage(), AppListForIPage(), AppListForIPage()];
  /*切换页面*/
  void _changePage(int index) {
    /*如果点击的导航项不是当前项  切换 */
    if (index != currentIndex) {
      setState(() {
        currentIndex = index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBarFun(),
      drawer: DrawerPage(),
      bottomNavigationBar: BottomNavigationBar(
        items: bottomNavItems,
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          _changePage(index);
        },
      ),
      body: Column(
        children: [
          Container(
              height: ScreenUtil().setHeight(200), child: getBannerWidgetFun()),
          Card(
            margin: EdgeInsets.fromLTRB(
                ScreenUtil().setWidth(5),
                ScreenUtil().setHeight(10),
                ScreenUtil().setWidth(5),
                ScreenUtil().setHeight(10)),
            elevation: 15.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.all(ScreenUtil().setWidth(2.5)),
                  child: ElevatedButton(
                    child: Text("运行时段"),
                    onPressed: () {},
                    style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all(Colors.white),
                        minimumSize: MaterialStateProperty.all(
                            Size.square(ScreenUtil().setWidth(30))),
                        padding: MaterialStateProperty.all(EdgeInsets.fromLTRB(
                            ScreenUtil().setWidth(10),
                            ScreenUtil().setHeight(5),
                            ScreenUtil().setWidth(10),
                            ScreenUtil().setHeight(5))),
                        textStyle: MaterialStateProperty.all(
                            TextStyle(fontSize: ScreenUtil().setSp(11)))),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(ScreenUtil().setWidth(2.5)),
                  child: ElevatedButton(
                    child: Text("运行时段"),
                    onPressed: () {},
                    style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all(Colors.white),
                        minimumSize: MaterialStateProperty.all(
                            Size.square(ScreenUtil().setWidth(30))),
                        padding: MaterialStateProperty.all(EdgeInsets.fromLTRB(
                            ScreenUtil().setWidth(10),
                            ScreenUtil().setHeight(5),
                            ScreenUtil().setWidth(10),
                            ScreenUtil().setHeight(5))),
                        textStyle: MaterialStateProperty.all(
                            TextStyle(fontSize: ScreenUtil().setSp(11)))),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(ScreenUtil().setWidth(2.5)),
                  child: ElevatedButton(
                    child: Text("运行时段"),
                    onPressed: () {},
                    style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all(Colors.white),
                        minimumSize: MaterialStateProperty.all(
                            Size.square(ScreenUtil().setWidth(30))),
                        padding: MaterialStateProperty.all(EdgeInsets.fromLTRB(
                            ScreenUtil().setWidth(10),
                            ScreenUtil().setHeight(5),
                            ScreenUtil().setWidth(10),
                            ScreenUtil().setHeight(5))),
                        textStyle: MaterialStateProperty.all(
                            TextStyle(fontSize: ScreenUtil().setSp(11)))),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(ScreenUtil().setWidth(2.5)),
                  child: ElevatedButton(
                    child: Text("运行时段"),
                    onPressed: () {},
                    style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all(Colors.white),
                        minimumSize: MaterialStateProperty.all(
                            Size.square(ScreenUtil().setWidth(30))),
                        padding: MaterialStateProperty.all(EdgeInsets.fromLTRB(
                            ScreenUtil().setWidth(10),
                            ScreenUtil().setHeight(5),
                            ScreenUtil().setWidth(10),
                            ScreenUtil().setHeight(5))),
                        textStyle: MaterialStateProperty.all(
                            TextStyle(fontSize: ScreenUtil().setSp(11)))),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(ScreenUtil().setWidth(2.5)),
                  child: ElevatedButton(
                    child: Text("运行时段"),
                    onPressed: () {},
                    style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all(Colors.white),
                        minimumSize: MaterialStateProperty.all(
                            Size.square(ScreenUtil().setWidth(30))),
                        padding: MaterialStateProperty.all(EdgeInsets.fromLTRB(
                            ScreenUtil().setWidth(10),
                            ScreenUtil().setHeight(5),
                            ScreenUtil().setWidth(10),
                            ScreenUtil().setHeight(5))),
                        textStyle: MaterialStateProperty.all(
                            TextStyle(fontSize: ScreenUtil().setSp(11)))),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Center(
              child: Container(
                alignment: Alignment.center,
                width: ScreenUtil().setWidth(150),
                height: ScreenUtil().setWidth(150),
                color: Colors.cyan[200],
                child: Text("直接点击运行按钮"),
              ),
            ),
            // child: pages[currentIndex],
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          print("11111sadfsaf");
          Directory tempDir = await getTemporaryDirectory();
          String tempPath = tempDir.path;
          File file = File("$tempPath/2.js");

          Response<List<int>> rs;
          rs = await Dio().get<List<int>>("http://192.168.1.10:82/2.js",
            options: Options(responseType: ResponseType.bytes), //设置接收类型为二进制数组
          );
          print(rs.data); // 二进制数组
        file.writeAsBytes(rs.data);
          print("$tempPath/1.js");
         await callNativeMethod("$tempPath/2.js");
          const timeout = const Duration(seconds: 5);
          print('currentTime='+DateTime.now().toString()); // 当前时间
          Timer(timeout, () { //callback function
            file.delete();
            print('afterTimer='+DateTime.now().toString()); // 5s之后
          });

          print("22222sadfsafadfa的撒法第三");




          // showDialog<Null>(
          //   context: context,
          //   barrierDismissible: false,
          //   builder: (BuildContext context) {
          //     return new AlertDialog(
          //       title: new Text('请输入要运行的课程序号'),
          //       content: new SingleChildScrollView(
          //         child: new ListBody(
          //           children: <Widget>[
          //             TextField(
          //               keyboardType: TextInputType.number,
          //               maxLength: 1,
          //               maxLines: 1,
          //               controller: _inputController,
          //               onEditingComplete: () {
          //                 //输入完成时调用
          //                 if (num.parse(_inputController.text) > 5) {
          //                   _inputController.text = 5.toString();
          //                 }
          //               },
          //             ),
          //           ],
          //         ),
          //       ),
          //       actions: <Widget>[
          //         new FlatButton(
          //           child: new Text('取 消'),
          //           onPressed: () {
          //             Navigator.of(context).pop();
          //           },
          //         ),
          //         new FlatButton(
          //           child: new Text('开 始'),
          //           onPressed: () {
          //             _incrementCounter();
          //           },
          //         ),
          //       ],
          //     );
          //   },
          // ).then((val) {
          //   print(val);
          // });
        },
        tooltip: 'Increment',
        child: Icon(
          Icons.play_arrow,
          color: Colors.white,
        ),
      ),
    );
  }

  /// 生成appbar
  getAppBarFun() {
    return AppBar(
      centerTitle: true,
      title: Text(
        "一路繁花",
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      leading: Builder(builder: (context) {
        return IconButton(
          icon: Icon(
            Icons.dehaze,
            color: Colors.white,
          ),
          onPressed: () {
            //打开Drawer抽屉菜单
            Scaffold.of(context).openDrawer();
          },
        );
      }),
    );
  }

  /// 生成banner
  getBannerWidgetFun() {
    return Swiper(
      controller: SwiperController(),
      autoplay: true,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          margin: EdgeInsets.all(ScreenUtil().setWidth(5)),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(ScreenUtil().setWidth(10)),
            child: Image.network(
              _bannerUrlList[index],
              fit: BoxFit.fitWidth,
            ),
          ),
        );
      },
      itemCount: _bannerUrlList.length,
      onTap: aa,
      // pagination: new SwiperPagination(),
      // control: new SwiperControl(),
    );
  }

  aa(index) {
    print(MediaQuery.of(context).size);
  }


  /// 文件下载

  // Future<void> downloadFile() async {
  //   Dio dio = Dio();
  //
  //   Map<PermissionGroup, PermissionStatus> permissions =
  //   await PermissionHandler()
  //       .requestPermissions([PermissionGroup.location,PermissionGroup.camera]);
  //   //校验权限
  //   if(permissions[PermissionGroup.camera] != PermissionStatus.granted){
  //     print("无照相权限");
  //   }
  //   if(permissions[PermissionGroup.location] != PermissionStatus.granted){
  //     print("无定位权限");
  //   }
  //
  //
  //
  //   bool checkPermission1 =
  //   //1、权限检查
  //   await SimplePermissions.checkPermission(permission1);
  //   if (checkPermission1 == false) {
  //     await SimplePermissions.requestPermission(permission1);
  //     checkPermission1 = await SimplePermissions.checkPermission(permission1);
  //   }
  //
  //   if (checkPermission1 == true) {
  //     String dirloc = "";
  //     if (Platform.isAndroid) {
  //       dirloc = "/sdcard/download/";
  //     } else {
  //       dirloc = (await getApplicationDocumentsDirectory()).path;
  //     }
  //
  //     var randid = random.nextInt(10000);
  //
  //     try {
  //
  //       //2、创建文件
  //       FileUtils.mkdir([dirloc]);
  //
  //       //3、使用 dio 下载文件
  //       await dio.download(fileURl, dirloc + randid.toString() + ".mp3",
  //           onReceiveProgress: (receivedBytes, totalBytes) {
  //             setState(() {
  //               downloading = true;
  //               // 4、连接资源成功开始下载后更新状态
  //               progress = (receivedBytes / totalBytes) ;
  //             });
  //           });
  //
  //     } catch (e) {
  //       print(e);
  //     }
  //
  //
  //     setState(() {
  //       downloading = false;
  //       progress = 0;
  //       path = dirloc + randid.toString() + ".mp3";
  //     });
  //
  //
  //   } else {
  //     setState(() {
  //       progress = 0;
  //       _onPressed = () {
  //         downloadFile();
  //       };
  //     });
  //   }
  // }
}
