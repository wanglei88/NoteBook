//
//  UIView属性.m
//  
//
//  Created by Master on 16/5/10.
//
//

#import <Foundation/Foundation.h>
UIView属性

1.alpha
设置视图的透明度.默认为1.
// 完全透明
view.alpha = 0;
// 不透明
view.alpha = 1;
2.clipsToBounds
// 默认是NO，当设置为yes时，超出当前视图的尺寸的内容和子视图不会显示。
view.clipsToBounds = YES;
3.hidden
// 默认是NO，当设置为yes，视图就看不见了。
view.hidden = YES;

4.userInteractionEnabled
// 默认为YES，如果设置为No，view就不能和用户交互了。（即不能响应事件）
view.userInteractionEnabled = NO;
5. tag
// 默认为0，用来标记视图的
view.tag = 0;
5. exclusiveTouch
默认为No
exclusiveTouch的意义在于：如果当前设置了exclusiveTouch的UIView是整个触摸事件的第一响应者，那么到你所有的手指离开屏幕前其他的UIView是无法接受到整个事件周期内所有的触摸事件。
6.CGRect frame
1> 表示控件的位置和尺寸（以父控件的左上角为坐标原点（0, 0））
2> 修改这个属性，可以调整控件的位置和尺寸

7.CGPoint center
1> 表示控件的中点（以父控件的左上角为坐标原点）
2> 修改这个属性，可以调整控件的位置

8.CGRect bounds
1> 表示控件的位置和尺寸（以自己的左上角位坐标原点，位置永远是(0, 0)）
2> 修改这个属性，只能调整控件的尺寸

9.CGAffineTransform transform
1> 表示控件的形变状态（旋转角度、缩放比例）
2> 创建CGAffineTransform的函数
* CGAffineTransformMakeScale(CGFloat sx, CGFloat sy)
创建一个x、y方向的缩放比例分别为sx、sy的形变值

* CGAffineTransformMakeRotation(CGFloat angle)
创建一个旋转角度为angle的形变值

* CGAffineTransformScale(CGAffineTransform t, CGFloat sx, CGFloat sy)
在形变值t的基础上，再进行缩放，x、y方向的缩放比例分别为sx、sy，然后返回一个新的形变值

* CGAffineTransformRotate(CGAffineTransform t, CGFloat angle)
在形变值t的基础上，再进行旋转，旋转角度为angle，然后返回一个新的形变值
10.superview
返回当前视图的父视图。（只读）
11.window
返回当前视图的窗口。（窗口）

获取根视图的superview和window时，需要注意，在viewdidload中是获取不到的，viewdidload只是视图加载完成，并没有添加到窗口中，因此需要在viewDidAppear方法中才能获取到。那时候视图才被添加到窗口中。
- (void)viewDidLoad
{
    [super viewDidLoad];
    NSLog(@"%@",self.view.superview); // 没有值
    NSLog(@"%@", self.view.window); // 没有值
}
- (void)viewDidAppear:(BOOL)animated
{
    NSLog(@"%@",self.view.superview); // 有值
    NSLog(@"%@", self.view.window);  // 有值
}

12.autoresizesSubviews
默认为YES，表示当父视图尺寸改变时，子视图也会随着改变。
13.autoresizingMask
默认为UIViewAutoresizingNone,不会自动伸缩。
14.contentMode
设置内容模式。
UIViewContentModeScaleToFill  不按照原宽高比例（长和宽不等比例增长）以任意比例填充。这样视图不会有空白，且内容可以全部显示。
UIViewContentModeAspectToFill  按照原长宽比例填充，不完全显示全部内容。这样内容可能溢出，但整个视图不会留有空白。
UIViewContentModeAspectToFit   按照原长宽比例（长和宽等比例增长），完全显示全部内容。这样容易照成左右或者上下留有空白。
15.backgroundColor
默认是nil。
// 设置背景颜色为红色
self.view.backgroundColor = [UIColor redColor];
16.UIView常用添加子视图方法
1.	//加一个视图到一个视图里面
2.	addSubview:
3.	//将一个视图移到前面
4.	bringSubviewToFront:
5.	//将一个视图推送到背后
6.	sendSubviewToBack:
7.	//把视图移除
8.	removeFromSuperview
9.	//插入视图 并指定索引
10.	insertSubview:atIndex:
11.	//插入视图在某个视图之上
12.	insertSubview:aboveSubview:
13.	//插入视图在某个视图之下
14.	insertSubview:belowSubview:
15.	//交换两个位置索引的视图
16.	exchangeSubviewAtIndex:withSubviewAtIndex:



