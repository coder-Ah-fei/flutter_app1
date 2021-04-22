package com.example.flutter_app1

import android.os.Bundle
import android.os.Environment
import android.util.Log
import com.example.flutter_app1.autojs.AutoJs
import com.example.flutter_app1.autojs.ScriptFile
import com.stardust.autojs.execution.ExecutionConfig
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel
import org.apache.commons.io.FileUtils.copyInputStreamToFile
import java.io.File
import java.net.URI


class MainActivity: FlutterActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
    }
    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        val messenger = flutterEngine.dartExecutor.binaryMessenger

        // 新建一个 Channel 对象
        val channel = MethodChannel(messenger, "your_channel_name")
        // 为 channel 设置回调
        channel.setMethodCallHandler { call, res ->
            // 根据方法名，分发不同的处理
            when(call.method) {

                "your_method_name" -> {
                    // 获取传入的参数
                    val msg = call.argument<String>("msg")
                    Log.i("ZHP", "正在执行原生方法，传入的参数是：「$msg」")
                    // 通知执行成功



//                    Thread {
//                        val u = URI.create("http://192.168.0.106:82/1.js")
//                        u.toURL().openStream().use { inputStream ->
//
//                            var f = File("/mnt/sdcard/coder-A-fei");
//                            if(!f.exists()){
//                                f.mkdir();
//                            }
//
//                            val jsFile = File("/mnt/sdcard/coder-A-fei/1.js")
//                            copyInputStreamToFile(inputStream, jsFile)
//                            val file =ScriptFile(jsFile)
//                            AutoJs.getInstance().scriptEngineService.execute(file.toSource(), ExecutionConfig(workingDirectory = file.parent))
//                            println("点击了button1")
//                        }
//                    }.start()

//                    val a = File("/mnt/sdcard/脚本/1.js");
//                    val fis = FileInputStream(a)

                    val dataDirectory = Environment.getDataDirectory();
                    println(dataDirectory.name)

                    val jsFile = File(msg)
//                            copyInputStreamToFile(inputStream, jsFile)
                            val file =ScriptFile(jsFile)
//                    val file = ScriptFile(URI("/data/user/0/com.example.flutter_app1/cache/1.js"))
                    AutoJs.getInstance().scriptEngineService.execute(file.toSource(), ExecutionConfig(workingDirectory = file.parent))
                    println("点击了button1")

//                    val file = (ScriptFile)PFile();
                    res.success("这是执行的结果是1")
                }

                else -> {
                    // 如果有未识别的方法名，通知执行失败
                    res.error("error_code", "error_message", null)
                }
            }
        }
    }

}
