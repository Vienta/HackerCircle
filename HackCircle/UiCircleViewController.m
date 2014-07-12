//
//  UiCircleViewController.m
//  HackCircle
//
//  Created by Jiangwei on 14-7-12.
//  Copyright (c) 2014年 Jiangwei. All rights reserved.
//

#import "UiCircleViewController.h"

@interface UiCircleViewController ()

@end

@implementation UiCircleViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.view.backgroundColor = [UIColor colorWithRed:0 green:140/255.0 blue:138/255.0 alpha:1];
    self.circularSlider.backgroundColor = [UIColor clearColor];
    self.circularSlider.minimumTrackTintColor = [UIColor colorWithRed:156/255.0 green:233/255.0 blue:239/255.0 alpha:1];
    self.circularSlider.maximumTrackTintColor = [UIColor clearColor];
    self.circularSlider.thumbTintColor = [UIColor colorWithRed:156/255.0 green:233/255.0 blue:239/255.0 alpha:1];
    
    [self.circularSlider addTarget:self action:@selector(updateProgress:) forControlEvents:UIControlEventValueChanged];
    [self.circularSlider addTarget:self action:@selector(sliderTouchedDown:) forControlEvents:UIControlEventTouchDown];
    [self.circularSlider addTarget:self action:@selector(sliderTouchedUpInside:) forControlEvents:UIControlEventTouchUpInside];
    [self.circularSlider addTarget:self action:@selector(sliderTouchedUpOutside:) forControlEvents:UIControlEventTouchUpOutside];
    self.circularSlider.continuous = NO;
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(updateCircleNum) name:@"CircleNumber" object:nil];
}

- (void)updateCircleNum
{
    self.circleNum.text = [NSString stringWithFormat:@"%@",@(self.circularSlider.circleCount)];
}

#pragma mark - 
#pragma mark - 相关方法
-(void)updateProgress:(UISlider *)sender {

    //分钟计算
//    self.circularSlider.circleCount  + self.circularSlider.value;
//    self.circularSlider.circleCount;一个小时

}

- (void)sliderTouchedDown:(id)sender {
}

- (void)sliderTouchedUpInside:(id)sender {
    
}

- (void)sliderTouchedUpOutside:(id)sender {
    
}




- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
