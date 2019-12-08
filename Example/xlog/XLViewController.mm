//
//  XLViewController.m
//  xlog
//
//  Created by iossocket on 12/07/2019.
//  Copyright (c) 2019 iossocket. All rights reserved.
//

#import "XLViewController.h"
#import <xlog/MarsXLogger.h>

@interface XLViewController ()

@end

@implementation XLViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [[MarsXLogger sharedInstance] info:@"XLViewController" msg:@"viewDidLoad"];
    [[MarsXLogger sharedInstance] flush];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
