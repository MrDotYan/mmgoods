import 'package:flutter/material.dart';

final List<Map> menus = [
  {
    "title": "用户信息管理",
    "children": [
      {"icon": Icons.supervised_user_circle, "title": "编辑个人资料"},
      {"icon": Icons.local_airport, "title": "用户收货地址"},
      {"icon": Icons.verified_outlined, "title": "用户实名认证"},
    ]
  },
  {
    "title": "APP设置",
    "children": [
      {"icon": Icons.update, "title": "检查更新"},
      {"icon": Icons.change_history_sharp, "title": "关于"}
    ]
  },
  {
    "title": "LogOut",
    "children": [
      {"icon": Icons.power_settings_new_sharp, "title": "退出登录"}
    ]
  }
];
