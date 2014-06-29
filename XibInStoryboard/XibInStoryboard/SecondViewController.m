//
//  SecondViewController.m
//  XibInStoryboard
//
//  Created by matouka-suzuki on 2014/06/29.
//  Copyright (c) 2014年 matouka-suzuki. All rights reserved.
//

#import "SecondViewController.h"
#import "XibView.h"

@interface SecondViewController ()
@property (nonatomic,weak) IBOutlet XibView* xibView;
@end

@implementation SecondViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // This label is Nil...
    self.xibView.label.text = @"hogehogefugafuga";
    NSLog(@"self.xib.label = %@",self.xibView.label);
}

@end
