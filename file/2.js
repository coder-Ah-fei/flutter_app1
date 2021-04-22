 
launchApp('学习通')
sleep(10000)
id("tabButton").className("android.widget.TextView").text("我").findOne().parent().click();
sleep(1000)
课程 = id("myCourse").findOne()
课程.click();
sleep(1000)
面向对象程序设计 = id("tv_name").findOnce(1).parent().parent().parent().parent().parent().parent().parent()
面向对象程序设计.click();
sleep(1000);
章节 = className("android.widget.TextView").text("章节").findOne().click()
sleep(1000);

let a = true;
let b = 0;
while(a){
    b++;
    滚动();
    sleep(2000);
    if(b == 1){
        a = false;
    }
    // c= className("android.widget.TextView").text("1").findOne();
    // console.info(c )
    // d=className("android.widget.TextView").text("1").findOne().parent().children()[2].text()
    // if(d == '单元测试'){
    //     continue;
    // }
    // c.parent().parent().parent().parent().click();
    // sleep(2000);
    // className("android.widget.Image").findOne().click();
    // sleep(1000 * 60 * 15);
    // back();
    list = id("rv_knowledge").findOne().children();
    for(let i = 0; i < list.length; i++){
        target = list[i].findOne(id("tv_icon").text("1"));
        if(target){
            target.parent().parent().parent().parent().click()
            break;
        }
    }
    sleep(2000);
    className("android.widget.Image").findOne().click();
    // 截屏按钮出现说明视频加载完成，开始播放了。
    id("shot_screen").findOne()
    sleep(1000)
    console.log("视频开始播放了" )
    id("speed").findOne().click()
    console.log("点击了倍速按钮" )
    sleep(1500)
    倍速列表 = className("android.support.v7.widget.RecyclerView").findOne().children()
    倍速列表[4].click()
    console.log("选择了倍速" )
    console.log("开始三分钟睡眠" )
    // 睡眠三分钟后开始查找，视频播放完成之后显示出来的开始按钮
    sleep(1000*60*3)
    console.log("结束三分钟睡眠" )
    id("start").findOne()
    console.info(id("start").exists() )
    back();
    sleep(1000);
    back();
    sleep(1000);
}



function 滚动(){
    setScreenMetrics(1080, 1920);
    swipe(10, 731, 10, 613, 500)
}