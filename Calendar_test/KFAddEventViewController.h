//
//  AddEventViewController.h
//  Calendar_test
//
//  Created by Kif on 30.12.16.
//  Copyright © 2016 KifApp. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface KFAddEventViewController : UIViewController

@property (nonatomic, strong) UIScrollView *scrlView;

@property (nonatomic, strong) UITextField *eventNameField;

@property (nonatomic, strong) UIButton *cancelButton;

@property (nonatomic, strong) UIButton *doneButton;

@property (nonatomic, strong) UIView *logoView;

@property (nonatomic, strong) UILabel *eventLabel;

@end
