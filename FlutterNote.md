# Flutter 环境安装

## SDK 的安装

Flutter 的 SDK 是以仓库的形式获取的,命令行中执行以下语句.

```ssh
$ git clone -b beta https://github.com/flutter/flutter.git
```

flutter  加入环境变量中.

```ssh
$ export PATH=`pwd`/flutter/bin:$PATH
```

## 执行 doctor 命令
进行依赖安装.
```ssh
$ flutter  doctor
```

## Android 工具的安装
- AndroidStudio 
- API 16 以上,Android4.1 以上的模拟器或者手机


## 编辑器安装
### AndroidStudio 插件安装

安装 `Flutter` 和 `Dart` 插件.



### VS Code 插件安装

在 VS Code 的控制面板的插件中心安装 dart code.
在控制面板输入doctor 看是否显示"Flutter: Run Flutter Doctor"
查看控制台输出的内容.



# 测试案例
## AndroidStudio 
1. 选择 ` File>New Flutter Project`,设置下flutter的SDK,创建工程
2. 选择 Flutter application,一路finish

## VS Code
1. 控制面板中输入 Flutter:New Project
2. 输入项目名称,然后运行
3. 出现main.dat文件就代表创建成功

## 命令行
1. 命令中输入 flutter 的创建命令
```ssh
$ flutter create myapp
```
就会创建一个 项目名为 myapp 的 flutter 工程.
在命令行下进入项目中,运行'flutter devices' 检查设备连接情况.
2. 运行项目
```ssh
flutter run
```
3. 体验热加载
修改 'lib/main.dart' 文件,然后保存,命令行下输入r,即是热加载,R是重启启动就可以看到效果.

# 尝试第一个应用
[测试项目](https://flutter.io/get-started/codelab/)

## 创建应用
- main 方法以箭头`=>`开始,箭头是单线函数或者放那该法的简写形式
- app 继承于 `StatelessWidget` ,让 app 作为一个 `widget`.在 Flutter 中,几乎所有东西都是一个 `widget`,包括 `alignment`, `padding`, `layout`.
- `Scaffold`,来自于 Material 库中,提供了默认的头部,标题和内容属性.这个是屏幕主树,子树可以变得非常复杂.
- 一个 widget 的主要职责就是提供一个 `build` 方法,方法中描述了相对于其他的 widget 或者低级别的 widget 该如何展示.
- 这个 widget 树 中还包含了一个 center widget ,包含了一个文本子 widget. center widget 可以实现将其子树对齐到屏幕中心.

## 使用外部的包
此处使用一个叫做 ` english_words` 的外部包,里面包含了几千个常用的英语单词.
下载的地址 https://pub.dartlang.org/packages/english_words

1. 在项目的根目录下修改 pubspec.yaml 文件,添加依赖.
```yaml
dependencies:
  flutter:
    sdk: flutter

  cupertino_icons: ^0.1.0
  english_words: ^3.1.0
```
保存文件之后,会自动进行依赖包的下载.
2. 导入第三方包文件
```dart
import 'package:english_words/english_words.dart';

```
3. 使用第三方包生成字符,代替写死.

4. 按 r 进行热加载查看预览,每次渲染都会重新调用随机函数生成不同的字符串,所以,每次加载都可能看到不同的字符串.

> 如果没有按照预期的产生效果,检查 pubspec.yaml 和 lib/main.dart 两个文件

## 增加一个有状态的 widget
StatelessWidget 是不可更改的,意味着所有的属性都是不可变的,都是 final 的.
StatefulWidget 维持着一个状态,这个状态在控件的整个生命周期中都是可能变化的.

实现一个有状态变化的 Widget  至少要两个类: 1: 一个 StatefulWidget,用来创建状态类.2:一个状态类.由1创建它的实例.StatefulWidget 本身是不可变的,但是状态类在 widget 的整个生命周期中一直持有着.


## 创建一个无穷的滚动列表

变量以下划线作为前缀是 dart 语言中的强制的措施.

## 增加一些交互






























