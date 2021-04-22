package com.example.flutter_app1

import androidx.multidex.MultiDexApplication
import com.example.flutter_app1.autojs.AutoJs

/**
 * Created by Stardust on 2017/1/27.
 */

class App : MultiDexApplication() {

    override fun onCreate() {
        super.onCreate()
        init()
    }
    private fun init() {
        AutoJs.initInstance(this)
    }
}
