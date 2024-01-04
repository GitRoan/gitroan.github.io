---
layout: post
title: "MobileDevices-小米Root刷机"
categories: [移动设备 系列]
tags: Root 小米
---
<div style="text-align:center;font-size: 24px;">
小米Root刷机流程
</div>

### 一. 处理方法-打开手机开发者模式，通常操作为点击版本号【这里小米手机为例】
<img src="/image/image-2024-1-3-01.png" alt="图片" width="300" height="140"/>

### 二. 解锁小米BootLoader

<img src="/image/image-2024-1-3-02.png" alt="图片" width="430" height="70"/>

#### 1. 首先在手机上绑定小米账号，【设置】-【我的设备】-【全部参数】，多次点击MIUI版本直到显示进入开发者模式。这时在【更多设置】找到【开发者选项】-【设备解锁状态】

#### 注：在官网下载最新版本的misflash才能进入解锁界面。 ，然后进入小米官网[申请解锁小米手机](https://link.zhihu.com/?target=http%3A//www.miui.com/unlock/index.html)查看设备解锁状态后将手机关机，同时按住【电源键+音量-】，几秒后进入Fastboot模式/兔子模式。用数据线酱手机和电脑连接，解锁后重启手机。

<img src="/image/image-2024-1-3-03.png" alt="图片" width="300" height="200"/>
<img src="/image/image-2024-1-3-04.png" alt="图片" width="300" height="200"/>

### 三. [下载Root包](https://roms.miuier.com/zh-cn/-下载Root包)【Root包一定要匹配手机型号跟MIUI版本去下载】

* 根据小米8普通版-手机型号MI 8 和 MIUI 12.0.4 稳定版匹配-选择Root包[小米8(dipper)dipper](https://link.zhihu.com/?target=http%3A//www.miui.com/unlock/index.html)进入Root阶段

* 3.1 : 解锁Bootloader-需要安装工具,这里需要下载SDK工具

<img src="/image/image-2024-1-3-05.png" alt="图片" width="300" height="200"/>

* 3.2 : 将Root中的Boot文件拷贝到FastBoot中做备份
*

<img src="/image/image-2024-1-3-06.png" alt="图片" width="300" height="200"/>
<br>
<img src="/image/image-2024-1-3-07.png" alt="图片" width="300" height="200"/>

* 3.3 : 连接手机到电脑, 手机打开开发者模式中的usb调试功能,复制Magik跟boot

<img src="/image/image-2024-1-3-08.png" alt="图片" width="300" height="200"/>
<br>
<img src="/image/image-2024-1-3-09.png" alt="图片" width="300" height="50"/>

* 3.4 : 接着安装，然后进入到Magisk里面，点击安装，选择一个文件修复
  
<img src="/image/image-2024-1-3-10.png" alt="图片" width="300" height="200"/>
<br>
<img src="/image/image-2024-1-3-11.png" alt="图片" width="150" height="300"/>
<img src="/image/image-2024-1-3-12.png" alt="图片" width="150" height="300"/>

* 3.5 : 文件传送电脑然后将magisk文件复制到Fastboot,对其重新命名：M8

<img src="/image/image-2024-1-3-13.png" alt="图片" width="300">
<br>
<img src="/image/image-2024-1-3-14.png" alt="图片" width="400">

* 3.6 : 关机，减声键+开启键进入到Fastboot；接着连接USB，启动Bat进入中控
  
<img src="/image/image-2024-1-3-15.png" alt="图片" width="400">

* 3.7 : 先检查手机连接状态

<img src="/image/image-2024-1-3-16.png" alt="图片" width="400">

* 3.8 : 再执行 fastboot flash boot 【从手机传到电脑的】.img 例如：fastboot flash boot M8_Root.img；fastboot flash boot M8_Root_02.img
  
<img src="/image/image-2024-1-3-17.png" alt="图片" width="400">

* 4.9 :成功刷Root后，需要操作fastboot  reboot命令重启,【或者手动操作手机重启】

<img src="/image/image-2024-1-3-18.png" alt="图片" width="400">

* 4.10 :重启后检查手机Root权限：adb shell连接到手机后，输入su，手机上会提示已被授予超级用户权限，之后使用都是root权限了。

启动 ADB Shell：输入以下命令以启动 ADB Shell：

```
adb shell
```

检查 Root 权限：在 ADB Shell 中，输入以下命令：

```
su
```

或者使用RootChecker.apk来查看Root是否已经成功

<img src="/image/image-2024-1-3-19.png" alt="图片" width="400">

### 简化步骤：

```
#### 确保你的手机已经解锁，比如小米需要先看开发者选项中设备是否解锁
#### 检查电脑上手机驱动，在设备管理中查看驱动【正常/或者需要更新】
#### 下载对应手机版本跟型号的Root包【<https://roms.miuier.com/zh-cn/-】接着安装Magisk【https://github.com/topjohnwu/Magisk/releases】到你手机>
#### 将Root中boot.img拷贝到手机通过Magisk修补，然后返回一个修补后的.img到电脑通过以下命令行操作，此时手机连接电脑后需要进入Fastboot状态【关机-减声键+开机键】
#### 确保设备正确连接电脑adb devices【检查手机连接状态】
#### 输入fastboot flash boot 263.img
#### 重启fastboot reboot
#### 通过手机Magisk应用管理权限
```

5：如果需要回复原来的root，需要重新连接电脑操作，把原来的Boot重新刷回去。

<img src="/image/image-2024-1-3-20.png" alt="图片" width="400">
<br>
<img src="/image/image-2024-1-3-21.png" alt="图片" width="400">

### 其他

[Magisk-APK](https://link.zhihu.com/?target=http%3A//www.miui.com/unlock/index.html)

[视频教程-Root-教程](https://www.youtube.com/watch?v=tz46YaWK9N8-)

[各机型-Root下载](https://roms.miuier.com/zh-cn/devices/)
