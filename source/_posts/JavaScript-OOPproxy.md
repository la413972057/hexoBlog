title: 代理模式
date: 2017-12-24 22:22:45
tags: [OOP,JavaScript]
categories: [OOP]
---
&emsp;&emsp;**代理模式（Proxy）**：由于一个对象不能直接引用另一个对象，所以需要通过迭代对象在两个对象之间起到中介的作用。    
&emsp;&emsp;实际的编程中， 因为性能问题使用代理模式的机会是非常多的。比如频繁的访问dom节点, 频繁的请求远程资源. 可以把操作先存到一个缓冲区, 然后自己选择真正的触发时机。    
&emsp;&emsp;还有个例子就是在调用ajax请求的时候，无论是各种开源库，还是自己写的Ajax类, 都会给xhr对象设置一个代理. 我们不可能频繁的去操作xhr对象发请求, 而应该是这样。    
```js
var request = Ajax.get( 'cgi.xx.com/xxx' );
request.send();
request.done(function(){
    // do something
});
```

&emsp;&emsp; 代理对象可以完全解决被代理对象与外界对象之间的耦合，当然从被代理的页面角度来看是一种保护代理，而从服务器角度来看是一种远程代理。除了上述的几种应用外，还有以下一些常用的应用场景：
代理模式一般适用于如下场合：
1. 远程代理，也就是为了一个对象在不同的地址空间提供局部代表，这样可以隐藏一个对象存在于不同地址空间的事实，就像web service里的代理类一样。
2. 虚拟代理，根据需要创建开销很大的对象，通过它来存放实例化需要很长时间的真实对象，比如浏览器的渲染的时候先显示问题，而图片可以慢慢显示（就是通过虚拟代理代替了真实的图片，此时虚拟代理保存了真实图片的路径和尺寸。
3. 安全代理，用来控制真实对象访问时的权限，一般用于对象应该有不同的访问权限。
4. 智能指引，只当调用真实的对象时，代理处理另外一些事情。例如C#里的垃圾回收，使用对象的时候会有引用次数，如果对象没有引用了，GC就可以回收它了。

> 参考: 
> 1. [JavaScript设计模式与开发实践](https://book.douban.com/subject/26382780/) 
> 1. [JavaScript设计模式](https://book.douban.com/subject/26589719/) 