//
//  UISwitch.m
//  
//
//  Created by Master on 16/5/10.
//
//

#import <Foundation/Foundation.h>

UISwitch属性
1. onTintColor
处于on时switch 的颜色
switchImage.onTintColor = [UIColor grayColor];
2.tintColor
处于off时switch 的颜色
switchImage.tintColor = [UIColor greenColor];
3.onImage
设置on 的图标
switchImage.onImage = [UIImage imageNamed:@"1.png"];

4. offImage
设置off的图标
switchImage.offImage = [UIImage imageNamed:@"4.png"];

5. on
设置switch的开关
swithImage.on = YES;

6.thumbTintColor
设置拇指颜色
swithImage.thumbTintColor = [UIColor redColor];
效果：



7.增加事件响应机制
监听的是这个事件：UIControlEventValueChanged，值改变事件
[switchImage addTarget:self action:@selector(switchOn) forControlEvents:UIControlEventValueChanged];


