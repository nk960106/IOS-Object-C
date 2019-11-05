//
//  ViewController.m
//  Calculator
//
//  Created by p16_newBlood on 2019/9/16.
//  Copyright © 2019年 p16_newBlood. All rights reserved.
//

#import "ViewController.h"
#define contains(str1, str2) ([str1 rangeOfString: str2 ].location != NSNotFound)
double sum1=0;
int operator = 0;
int pre_Operator = 0;
bool isTypenumber = false;


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.lbl_Sum.text = @"0";
}

-(NSString*)removeFloatAllZeroByString:(NSString *)testNumber{
    NSString * outNumber = [NSString stringWithFormat:@"%@",@(testNumber.floatValue)];
    return outNumber;
}

- (IBAction)Btn_Zero:(id)sender {
    if (isTypenumber == false) {
        isTypenumber = true;
        if(operator != 0){ //判斷是否按下operator
            self.lbl_Sum.text = @"0";
        }
    }
    double sum = self.lbl_Sum.text.intValue * 10;
    self.lbl_Sum.text = [self removeFloatAllZeroByString:[NSString stringWithFormat:@"%f",sum]];
}

- (IBAction)btn_One:(id)sender {
    if (isTypenumber == false) {
        isTypenumber = true;
        if(operator != 0){ //判斷是否按下operator
            self.lbl_Sum.text = @"0";
        }
    }
    double sum = self.lbl_Sum.text.intValue * 10 + 1;
    self.lbl_Sum.text = [self removeFloatAllZeroByString:[NSString stringWithFormat:@"%f",sum]];
}

- (IBAction)btn_Two:(id)sender {
    if (isTypenumber == false) {
        isTypenumber = true;
        if(operator != 0){ //判斷是否按下operator
            self.lbl_Sum.text = @"0";
        }
    }
    double sum = self.lbl_Sum.text.intValue * 10 + 2;
    self.lbl_Sum.text = [self removeFloatAllZeroByString:[NSString stringWithFormat:@"%f",sum]];
}

- (IBAction)btn_Three:(id)sender {
    if (isTypenumber == false) {
        isTypenumber = true;
        if(operator != 0){ //判斷是否按下operator
            self.lbl_Sum.text = @"0";
        }
    }
    double sum = self.lbl_Sum.text.intValue * 10 + 3;
    self.lbl_Sum.text = [self removeFloatAllZeroByString:[NSString stringWithFormat:@"%f",sum]];
}

- (IBAction)btn_Four:(id)sender {
    if (isTypenumber == false) {
        isTypenumber = true;
        if(operator != 0){ //判斷是否按下operator
            self.lbl_Sum.text = @"0";
        }
    }
    double sum = self.lbl_Sum.text.intValue * 10 + 4;
    self.lbl_Sum.text = [self removeFloatAllZeroByString:[NSString stringWithFormat:@"%f",sum]];
}

- (IBAction)btn_Five:(id)sender {
    if (isTypenumber == false) {
        isTypenumber = true;
        if(operator != 0){ //判斷是否按下operator
            self.lbl_Sum.text = @"0";
        }
    }
    double sum = self.lbl_Sum.text.intValue * 10 + 5;
    self.lbl_Sum.text = [self removeFloatAllZeroByString:[NSString stringWithFormat:@"%f",sum]];
}

- (IBAction)btn_Six:(id)sender {
    if (isTypenumber == false) {
        isTypenumber = true;
        if(operator != 0){ //判斷是否按下operator
            self.lbl_Sum.text = @"0";
        }
    }
    double sum = self.lbl_Sum.text.intValue * 10 + 6;
    self.lbl_Sum.text = [self removeFloatAllZeroByString:[NSString stringWithFormat:@"%f",sum]];
}

- (IBAction)btn_Seven:(id)sender {
    if (isTypenumber == false) {
        isTypenumber = true;
        if(operator != 0){ //判斷是否按下operator
            self.lbl_Sum.text = @"0";
        }
    }
    double sum = self.lbl_Sum.text.intValue * 10 + 7;
    self.lbl_Sum.text = [self removeFloatAllZeroByString:[NSString stringWithFormat:@"%f",sum]];
}

- (IBAction)btn_Eight:(id)sender {
    if (isTypenumber == false) {
        isTypenumber = true;
        if(operator != 0){ //判斷是否按下operator
            self.lbl_Sum.text = @"0";
        }
    }
    double sum = self.lbl_Sum.text.intValue * 10 + 8;
    self.lbl_Sum.text = [self removeFloatAllZeroByString:[NSString stringWithFormat:@"%f",sum]];
    
}

- (IBAction)btn_Nine:(id)sender {
    if (isTypenumber == false) {
        isTypenumber = true;
        if(operator != 0){ //判斷是否按下operator
            self.lbl_Sum.text = @"0";
        }
    }
    double sum = self.lbl_Sum.text.intValue * 10 + 9;
    self.lbl_Sum.text = [self removeFloatAllZeroByString:[NSString stringWithFormat:@"%f",sum]];
}

- (IBAction)btn_Ac:(id)sender {
    self.lbl_Sum.text = @"0";
    sum1 = 0;
    operator = 0;
    pre_Operator = 0;
    isTypenumber = false;
}

//operator
- (IBAction)btn_Divided:(id)sender {
    if(pre_Operator == 0){
        operator = 1;
        pre_Operator = operator;
    }else{
        pre_Operator = operator;
        operator = 1;
    }
    
    if(isTypenumber == true){
        isTypenumber = false;
        if(sum1 == 0){  //第一次 與 防止0
            sum1 = self.lbl_Sum.text.intValue;
        }
        else{
            if(pre_Operator != 0){
                [self calculate:sum1 andNum2:self.lbl_Sum.text.doubleValue];
                self.lbl_Sum.text =[self removeFloatAllZeroByString:[NSString stringWithFormat:@"%f",sum1]];
            }
        }
    }
}

- (IBAction)btn_Multiply:(id)sender {
    if(pre_Operator == 0){
        operator = 2;
        pre_Operator = operator;
    }else{
        pre_Operator = operator;
        operator = 2;
    }
    
    if(isTypenumber == true){
        isTypenumber = false;
        if(sum1 == 0){ //第一次 與 防止0
            sum1 = self.lbl_Sum.text.intValue;
        }
        else{
            if(pre_Operator != 0){
                [self calculate:sum1 andNum2:self.lbl_Sum.text.doubleValue];
                self.lbl_Sum.text =[self removeFloatAllZeroByString:[NSString stringWithFormat:@"%f",sum1]];
            }
        }
    }
}

- (IBAction)btn_Minus:(id)sender {
    if(pre_Operator == 0){
        operator = 3;
        pre_Operator = operator;
    }else{
        pre_Operator = operator;
        operator = 3;
    }
    
    if(isTypenumber == true){
        isTypenumber = false;
        if(sum1 == 0){ //第一次
            sum1 = self.lbl_Sum.text.intValue;
        }
        else{
            if(pre_Operator != 0){
                [self calculate:sum1 andNum2:self.lbl_Sum.text.doubleValue];
                self.lbl_Sum.text =[self removeFloatAllZeroByString:[NSString stringWithFormat:@"%f",sum1]];
            }
        }
    }
}

- (IBAction)btn_Plus:(id)sender {
    if(pre_Operator == 0){  //紀錄上一次的算式
        operator = 4;
        pre_Operator = operator;
    }else{
        pre_Operator = operator;
        operator = 4;
    }
    
    if(isTypenumber == true){
        isTypenumber = false;
        if(sum1 == 0){ //第一次
            sum1 = self.lbl_Sum.text.intValue;
        }
        else{
            if(pre_Operator != 0){
                [self calculate:sum1 andNum2:self.lbl_Sum.text.doubleValue];//先算上一次的值
                self.lbl_Sum.text =[self removeFloatAllZeroByString:[NSString stringWithFormat:@"%f",sum1]];
            }
        }
    }
}

- (IBAction)btn_Equal:(id)sender {
    switch (operator) {
        case 1://除
            if(sum1 == 0){
                self.lbl_Sum.text = @"0";
                sum1 = 0;
                operator = 0;
                pre_Operator = 0;
                isTypenumber = false;
                break;
            }
            else if(self.lbl_Sum.text.doubleValue ==0){  //  防呆0
                self.lbl_Sum.text = @"ERROR";
                sum1 = 0;
                operator = 0;
                pre_Operator = 0;
                isTypenumber = false;
                break;
            }
            else{
                sum1 /= self.lbl_Sum.text.intValue;
            }
            
            self.lbl_Sum.text =[self removeFloatAllZeroByString:[NSString stringWithFormat:@"%f",sum1]];
            break;
        case 2://乘
            sum1 *= self.lbl_Sum.text.intValue;
            self.lbl_Sum.text =[self removeFloatAllZeroByString:[NSString stringWithFormat:@"%f",sum1]];
            break;
        case 3://減
            sum1 -= self.lbl_Sum.text.intValue;
          self.lbl_Sum.text =[self removeFloatAllZeroByString:[NSString stringWithFormat:@"%f",sum1]];
            break;
        case 4://加
            sum1 += self.lbl_Sum.text.intValue;
            self.lbl_Sum.text =[self removeFloatAllZeroByString:[NSString stringWithFormat:@"%f",sum1]];
            break;
        default:
            break;
    }
    operator=5;
}

-(void)calculate:(double)num1 andNum2:(double)num2{
    switch (pre_Operator) {
        case 1://除
            if(sum1 == 0 || self.lbl_Sum.text.doubleValue ==0){  //  防呆
                self.lbl_Sum.text = @"ERROR";
            }
            else{
                sum1 /= self.lbl_Sum.text.intValue;
            }
            self.lbl_Sum.text =[self removeFloatAllZeroByString:[NSString stringWithFormat:@"%f",sum1]];
            break;
        case 2://乘
            sum1 *= self.lbl_Sum.text.intValue;
            self.lbl_Sum.text =[self removeFloatAllZeroByString:[NSString stringWithFormat:@"%f",sum1]];
            break;
        case 3://減
            sum1 -= self.lbl_Sum.text.intValue;
            self.lbl_Sum.text =[self removeFloatAllZeroByString:[NSString stringWithFormat:@"%f",sum1]];
            break;
        case 4://加
            sum1 += self.lbl_Sum.text.intValue;
            self.lbl_Sum.text =[self removeFloatAllZeroByString:[NSString stringWithFormat:@"%f",sum1]];
            break;
        default:
            break;
    }
}
//之前寫比對String
//if(pre_Operator != 0){
//    [self calculate:sum1 andNum2:self.lbl_Sum.text.doubleValue];
//    NSString *tmp = [NSString stringWithFormat:@"%d",(int)sum1];
//    NSString *tmpInt = [NSString stringWithFormat:@"%d",(int)ceilf(sum1)];
//    if(![tmp isEqualToString:tmpInt])
//    {
//        self.lbl_Sum.text =[NSString stringWithFormat:@"%0.2f",sum1];
//    }
//    else{
//        self.lbl_Sum.text =[NSString stringWithFormat:@"%d",(int)sum1];
//    }
//}
//else{
//    sum1 /= self.lbl_Sum.text.intValue;
//    NSString *tmp = [NSString stringWithFormat:@"%d",(int)sum1];
//    NSString *tmpInt = [NSString stringWithFormat:@"%d",(int)ceilf(sum1)];
//    if(![tmp isEqualToString:tmpInt]){
//        self.lbl_Sum.text =[NSString stringWithFormat:@"%0.2f",sum1];
//    }
//    else{
//        self.lbl_Sum.text =[NSString stringWithFormat:@"%d",(int)sum1];
//    }
//}

@end
