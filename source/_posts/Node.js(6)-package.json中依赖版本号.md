title: npm的package.json中的dependencies版本号
date: 2016-01-03 10:14:00
tags: [Node.js,JavaScript]
categories: Node.js 
---
依赖写错，就会各种报错，有点坑，专门去看了下package.json中的依赖版本号的写法，总结了下，(*^__^*) 嘻嘻……
------------------------------------------------
- version 必须完全和version一致
- >version 必须比version大
- >=version 同上
- `<`version 同上<=version 同上
- ~version 约等于
比如~1.2.2，表示安装1.2.x的最新版本（不低于1.2.2），但是不安装1.3.x，也就是说安装时不改变大版本号和次要版本号。
- ^version
比如ˆ1.2.2，表示安装1.x.x的最新版本（不低于1.2.2），但是不安装2.x.x，也就是说安装时不改变大版本号。需要注意的是，如果大版本号为0，则插入号的行为与波浪号相同，这是因为此时处于开发阶段，即使是次要版本号变动，也可能带来程序的不兼容。
- `*` 所有


