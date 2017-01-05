//
//  AddEventViewController.h
//  Calendar_test
//
//  Created by Kif on 30.12.16.
//  Copyright © 2016 KifApp. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface KFAddEventViewController : UIViewController <UITextFieldDelegate, UIPickerViewDataSource, UIPickerViewDelegate>

@property (strong, nonatomic) UITextField *eventNameField;
@property (strong, nonatomic) UIButton *cancelButton;
@property (strong, nonatomic) UIButton *doneButton;
@property (strong, nonatomic) UIView *logoView;
@property (strong, nonatomic) UILabel *eventLabel;
@property (strong, nonatomic) UIView *bodyView;
@property (strong, nonatomic) IBOutlet UIPickerView *pickerView;
@property (strong, nonatomic) NSArray *pickerViewItems;
@property (strong, nonatomic) UILabel *monthNameLabel;
@property (strong, nonatomic) UILabel *dayOfWeekNameLabel;
@property (strong, nonatomic) UIButton *moreButton;
@property (strong, nonatomic) UILabel *timeLabel;
@property (strong, nonatomic) UIButton *fifteenMinuteButton;
@property (strong, nonatomic) UIButton *thirtyMinuteButton;
@property (strong, nonatomic) UIButton *oneHourButton;
@property (strong, nonatomic) UIButton *oneDayButton;
@property (strong, nonatomic) UIButton *eventProfileButton;

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView;

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component;

@end
