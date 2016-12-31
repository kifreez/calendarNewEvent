//
//  AddEventViewController.m
//  Calendar_test
//
//  Created by Kif on 30.12.16.
//  Copyright © 2016 KifApp. All rights reserved.
//

#import "KFAddEventViewController.h"
#import "KFEventNameField.h"

@interface KFAddEventViewController ()

@property (nonatomic, strong) UILabel *label;

@end

@implementation KFAddEventViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    KFEventNameField *eventNameField = [[KFEventNameField alloc] init];
    eventNameField.frame = CGRectMake(50, 50, 100, 30);
    eventNameField.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleLeftMargin;
    [self.view addSubview:eventNameField];

    self.view.backgroundColor = [UIColor colorWithRed:0/255.0 green:194.0/255.0 blue:237.0/255.0 alpha:1.0];


}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
