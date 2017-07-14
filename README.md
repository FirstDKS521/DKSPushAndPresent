#iOS开发：push和present混合使用及返回问题
![效果GIF.gif](http://upload-images.jianshu.io/upload_images/1840399-de70d8aa32665e2e.gif?imageMogr2/auto-orient/strip)
Apush到B，Bpresent到C，Cpush到D，在D页面，点击按钮，返回到A页面；具体做法是：应为C是由Bpresent出来的，在B页面注册通知，主要做的处理是

```
//dismiss掉C页面
[self dismissViewControllerAnimated:NO completion:nil];
//pop到B页面
[self.navigationController popViewControllerAnimated:YES];
```
发送通知的地方就是在D页面，具体实现看demo