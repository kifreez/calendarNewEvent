//
//  AddEventViewController.h
//  Calendar_test
//
//  Created by Kif on 30.12.16.
//  Copyright © 2016 KifApp. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface KFAddEventViewController : UIViewController

@property (strong, nonatomic) UITextField *eventNameField;
@property (strong, nonatomic) UIButton *cancelButton;
@property (strong, nonatomic) UIButton *doneButton;
@property (strong, nonatomic) UIView *logoView;
@property (strong, nonatomic) UILabel *eventLabel;
@property (strong, nonatomic) UIView *bodyView;

@end
