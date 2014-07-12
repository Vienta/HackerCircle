//
//  UiCircleViewController.h
//  HackCircle
//
//  Created by Jiangwei on 14-7-12.
//  Copyright (c) 2014年 Jiangwei. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UICircularSlider.h"

@interface UiCircleViewController : UIViewController

@property (weak, nonatomic) IBOutlet UICircularSlider *circularSlider;

@property (weak, nonatomic) IBOutlet UILabel *circleNum;
@end
