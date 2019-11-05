//
//  ViewController.h
//  Calculator
//
//  Created by p16_newBlood on 2019/9/16.
//  Copyright © 2019年 p16_newBlood. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIButton *btn_Zero;
@property (weak, nonatomic) IBOutlet UIButton *btn_One;
@property (weak, nonatomic) IBOutlet UIButton *btn_Two;
@property (weak, nonatomic) IBOutlet UIButton *btn_Three;
@property (weak, nonatomic) IBOutlet UIButton *btn_Four;
@property (weak, nonatomic) IBOutlet UIButton *btn_Five;
@property (weak, nonatomic) IBOutlet UIButton *btn_Six;
@property (weak, nonatomic) IBOutlet UIButton *btn_Seven;
@property (weak, nonatomic) IBOutlet UIButton *btn_Eight;
@property (weak, nonatomic) IBOutlet UIButton *btn_Nine;

@property (weak, nonatomic) IBOutlet UIButton *btn_Clear;
@property (weak, nonatomic) IBOutlet UIButton *btn_Divided;
@property (weak, nonatomic) IBOutlet UIButton *btn_Multiply;
@property (weak, nonatomic) IBOutlet UIButton *btn_Minus;
@property (weak, nonatomic) IBOutlet UIButton *btn_Plus;
@property (weak, nonatomic) IBOutlet UIButton *btn_Equal;
@property (weak, nonatomic) IBOutlet UILabel *lbl_Sum;
-(void)calculate:(double)num1 andNum2:(double)num2;
@end
