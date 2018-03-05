# CocoaPods
```pod 'CHButton', '~> 1.4'```<br>
# CHButton
<img width="375" height="667" src="https://github.com/ChanggnahC/CHButton/raw/master/demo.png"/></img>
# 示例：
一个参数改变图片位置：<br>
```button.imageMode = CHImageModeRight;```<br><br>
设置图片和文字间距：<br>
```button.imageTitleRange = 10;```<br><br>
block实现点击事件：<br>
```
[button handleControlEvent:UIControlEventTouchUpInside withBlock:^{
        
}];
```
<br>

角标：<br>
```Objective-C
/**
 * 角标显示的信息，可以为数字和文字<br>
 */
@property (nonatomic) NSString *badgeValue;
/**
 * 角标背景颜色，默认为红色
 */
@property (nonatomic) UIColor *badgeBGColor;
/**
 *  角标文字的颜色
 */
@property (nonatomic) UIColor *badgeTextColor;
/**
 *  角标字号
 */
@property (nonatomic) UIFont *badgeFont;
/**
 *  角标的气泡边界
 */
@property (nonatomic) CGFloat badgePadding;
/**
 *  角标的最小尺寸
 */
@property (nonatomic) CGFloat badgeMinSize;
/**
 *  角标的x值
 */
@property (nonatomic) CGFloat badgeOriginX;
/**
 *  角标的y值
 */
@property (nonatomic) CGFloat badgeOriginY;
/**
 *  当角标为0时，自动去除角标
 */
@property BOOL shouldHideBadgeAtZero;

```

# 感谢您的star ^ _ ^
