//
//  ViewController.m
//  文字显示
//
//  Created by 薛楠 on 16/3/13.
//  Copyright © 2016年 薛楠. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property(nonatomic,strong)UILabel *testLabel;
@property(nonatomic, strong) NSTimer *timer;
@property(nonatomic, assign)NSInteger count;
@property(nonatomic, strong)NSString *Detail;
@end

@implementation ViewController
- (UILabel *)testLabel{
    if (! _testLabel) {
       //label相关设置  不设也行
        _testLabel = [[UILabel alloc]initWithFrame:self.view.bounds];
        [self.view addSubview:_testLabel];
        _testLabel.backgroundColor = [UIColor grayColor];
        //分行显示
        self.testLabel.numberOfLines = 0;
        self.testLabel.font = [UIFont systemFontOfSize:24];
        //去掉文字省略号
        self.testLabel.lineBreakMode = 1;
    }
    return _testLabel;
    
    
    
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.Detail =@"今夕何夕兮搴洲中流。\n今日何日兮得与王子同舟。\n蒙羞被好兮不訾诟耻。\n心几烦而不绝兮得知王子。\n山有木兮木有枝。\n心说君兮君不知。  ";
    self.count = 0;
    
      _timer =  [NSTimer scheduledTimerWithTimeInterval:0.5 target:self selector:@selector(timerSEL) userInfo:nil repeats:YES];;
  
    
}

-(void)timerSEL{
    if (self.Detail.length > self.count) {
      //字符串截取
     self.testLabel.text =  [NSString stringWithFormat:@"%@\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n", [self.Detail substringWithRange:NSMakeRange(0, self.count)]];

    self.count++;
    }else{
        //显示结束
        self.count = 0;
    }
}

@end
