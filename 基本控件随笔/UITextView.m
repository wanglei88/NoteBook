//
//  UITextView.m
//  
//
//  Created by Master on 16/5/10.
//
//

#import <Foundation/Foundation.h>
UITextView
1.	text: 设置textView中文本
_textView.text = @"Now is the time for all good developers to come to serve their country.\n\nNow is the time for all good developers to come to serve their country."; // 设置它显示的内容
2.	font:设置textView中文字的字体
_textView.font = [UIFont fontWithName:@"Arial" size:18.0]; // 设置字体名字和字体大小

3.	textColor:设置textView中文本的颜色
_textView.textColor = [UIColor blackColor]; // 设置textview里面的字体颜色

4.	textAlignment:设置textView的文本的排列方式
_textView.textAlignment = NSTextAlignmentCenter; // textView中的文本排列，默认靠左

5.	backgroundColor:设置textView的背景颜色
_textView.backgroundColor = [UIColor grayColor]; // 设置浅灰色的背景色，默认为白色

6.	delegate:设置代理
_textView.delegate = self; // 设置代理

7.	editable:设置textView是否可被输入
_textView.editable = NO; // textView是否可被输入，默认为YES


8.	attributedText:设置默认插入textView的文字
_textView.attributedText = [[NSAttributedString alloc]initWithString:@"attributedText__-abc"]; // 可以方便将文本插入到UITextView中。

9.	inputView:设置从底部弹出的视图
_textView.inputView = [[UIDatePicker alloc]init]; // 弹出视图，默认为键盘


10.	inputAccessoryView:设置弹出视图上方的辅助视图
_textView.inputAccessoryView = [UIButton buttonWithType:UIButtonTypeDetailDisclosure]; // 弹出视图上方的辅助视图


11.	clearsOnInsertion:设置textView获得焦点，在用户使用虚拟键盘进行输入时，清除之前的文本
_textView.clearsOnInsertion = YES; // clearsOnInsertion，默认为NO



