# hello_world

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


1. init project
  View > Command Palett
  type Flutter: New Project

1. run project 
  flutter run


android studio key map

command + o (open file or class)

replace + F6 rename symbol


Dart 基础知识

声明式UI

Flutter 入门基础知识

项目结构、资源、依赖和本地化

认识视图

布局与列表

状态管理

路由与导航

主题和文字处理

线程和异步UI

手势检测及触摸事件处理

调用硬件、第三方服务以及平台交互、通知

表单输入与富文本

youtube flutter 入门到进阶

3-5 项目结构、资源、依赖和本地化  2020.5.13  over
    json定义


    图片定义
    images/my_icons.png
    images/2.0x/my_icons.png
    images/3.0x/my_icons.png
    assets:
        - images/my_icon.png

    图片使用
    @override
    Widget build(BuildContext context) {
        return Image.asset("images/my_icon.png");
    }

3-6  认识视图  2020.5.14  over
    Flutter View
    更新Widgets
    布局
    布局中添加/删除组件
    对Widget做动画
    绘图
    构建自定义Widget
    设置Widget透明度


3-7  布局与列表  2020.5.14  over
    分层布局  Stack
    更新列表  ListView.builder


3-8  状态管理 2020.5.14
    StatelessWidget  无状态组件
    StatefulWidget   有状态组件






