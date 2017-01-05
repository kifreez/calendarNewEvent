//
//  AddEventViewController.m
//  Calendar_test
//
//  Created by Kif on 30.12.16.
//  Copyright © 2016 KifApp. All rights reserved.
//

#import "KFAddEventViewController.h"
#import "KFAddEventViewFactory.h"

@interface KFAddEventViewController () 

@property (strong, nonatomic) IBOutlet NSLayoutConstraint *cancelButtonTopConstrain;
@property (strong, nonatomic) IBOutlet NSLayoutConstraint *doneButtonTopConstrain;
@property (strong, nonatomic) IBOutlet NSLayoutConstraint *eventNameFieldCenterYConstraint;
@property (strong, nonatomic) IBOutlet NSLayoutConstraint *logoViewTopConstrain;
@property (strong, nonatomic) IBOutlet NSLayoutConstraint *bodyViewTopConstraint;
@property (strong, nonatomic) IBOutlet NSLayoutConstraint *moreButtonCenterYConstraint;

@end

@implementation KFAddEventViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor colorWithRed:0/255.f green:194.f/255.f blue:237.f/255.f alpha:1.f];

#pragma mark - cFirstBackground

    UILabel *cFirstBackground = [KFAddEventViewFactory cFirstBackground];

    NSLayoutConstraint *cFirstBackgroundTop = [NSLayoutConstraint constraintWithItem:cFirstBackground attribute:NSLayoutAttributeTop  relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeTop multiplier:1.f constant:-130.f ];

    NSLayoutConstraint *cFirstBackgroundLeft = [NSLayoutConstraint constraintWithItem:cFirstBackground attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeLeft multiplier:1.f constant:-170.f ];

#pragma mark - cSecondBackground

    UILabel *cSecondBackground = [KFAddEventViewFactory cSecondBackground];

    NSLayoutConstraint *cSecondBackgroundBottom = [NSLayoutConstraint constraintWithItem:cSecondBackground attribute:NSLayoutAttributeBottom  relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeBottom multiplier:1.f constant:220.f ];
    NSLayoutConstraint *cSecondBackgroundRight = [NSLayoutConstraint constraintWithItem:cSecondBackground attribute:NSLayoutAttributeRight relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeRight multiplier:1.f constant:120.f ];

#pragma mark - cancelButton

    UIButton *cancelButton = [KFAddEventViewFactory cancelButton];

    NSLayoutConstraint *cancelButtonLeftConstraint = [NSLayoutConstraint constraintWithItem:cancelButton attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeLeft multiplier:1.f constant:16.f ];

    self.cancelButtonTopConstrain = [NSLayoutConstraint constraintWithItem:cancelButton attribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeTop multiplier:1.f constant:73.f ];

#pragma mark - doneButton

    UIButton *doneButton = [KFAddEventViewFactory doneButton];

    NSLayoutConstraint *doneButtonRight = [NSLayoutConstraint constraintWithItem:doneButton attribute:NSLayoutAttributeRight relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeRight multiplier:1.f constant:-16.f ];

    self.doneButtonTopConstrain = [NSLayoutConstraint constraintWithItem:doneButton attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeTop multiplier:1.f constant:-50.f ];

#pragma mark - logoView

    self.logoView = [KFAddEventViewFactory logoView];

    self.logoViewTopConstrain = [NSLayoutConstraint constraintWithItem:self.logoView attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeTop multiplier:1.f constant:-100.f ];

    NSLayoutConstraint *logoViewCenterXConstraint = [NSLayoutConstraint constraintWithItem:self.logoView attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeCenterX multiplier:1.f constant:0 ];

    NSLayoutConstraint *logoViewWidthConstraint = [NSLayoutConstraint constraintWithItem:self.logoView attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1.f constant:70.f ];

    NSLayoutConstraint *logoViewHeightConstraint = [NSLayoutConstraint constraintWithItem:self.logoView attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1.f constant:70.f ];

#pragma mark - logoLetter

    UILabel *logoLetter = [KFAddEventViewFactory logoLetter];

#pragma mark - eventLabel

    self.eventLabel = [KFAddEventViewFactory eventLabel];

    NSLayoutConstraint *eventLabelTopConstraint = [NSLayoutConstraint constraintWithItem:self.eventLabel attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeTop multiplier:1.f constant: 100.f];

    NSLayoutConstraint *eventLabelCenterXConstraint = [NSLayoutConstraint constraintWithItem:self.eventLabel attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeCenterX multiplier:1.f constant:0];

#pragma mark - eventNameField

    self.eventNameField = [KFAddEventViewFactory eventNameField];
    self.eventNameField.delegate = self;

    self.eventNameFieldCenterYConstraint = [NSLayoutConstraint constraintWithItem:self.eventNameField attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeCenterY multiplier:1.f constant:0];

    NSLayoutConstraint *eventNameFieldLeadingConstraint = [NSLayoutConstraint constraintWithItem:self.eventNameField attribute:NSLayoutAttributeLeading relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeLeading multiplier:1.0 constant:0 ];

    NSLayoutConstraint *eventNameFieldTrailingConstraint= [NSLayoutConstraint constraintWithItem:self.eventNameField attribute:NSLayoutAttributeTrailing relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeTrailing multiplier:1.0 constant:0 ];

#pragma mark - bodyView

    self.bodyView = [KFAddEventViewFactory bodyView];

    NSLayoutConstraint *bodyViewLeadingConstraint = [NSLayoutConstraint constraintWithItem:self.bodyView attribute:NSLayoutAttributeLeading relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeLeading multiplier:1.f constant:16.f ];

    NSLayoutConstraint *bodyViewTrailingConstraint = [NSLayoutConstraint constraintWithItem:self.bodyView attribute:NSLayoutAttributeTrailing relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeTrailing multiplier:1.f constant:-16.f ];

    self.bodyViewTopConstraint = [NSLayoutConstraint constraintWithItem:self.bodyView attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.eventLabel attribute:NSLayoutAttributeBottom multiplier:1.f constant:800.f ];

    NSLayoutConstraint *bodyViewBottomConstraint = [NSLayoutConstraint constraintWithItem:self.bodyView attribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeBottom multiplier:1.f constant:-50.f ];

#pragma mark - monthNameLabel

    self.monthNameLabel = [KFAddEventViewFactory monthNameLabel];

    NSLayoutConstraint *monthNameTopConstraint = [NSLayoutConstraint constraintWithItem:self.monthNameLabel attribute:NSLayoutAttributeTop  relatedBy:NSLayoutRelationEqual toItem:self.bodyView attribute:NSLayoutAttributeTop multiplier:1.f constant:16.f ];

    NSLayoutConstraint *monthNameCenterXConstraint = [NSLayoutConstraint constraintWithItem:self.monthNameLabel attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self.bodyView attribute:NSLayoutAttributeCenterX multiplier:1.f constant:0 ];

#pragma mark - pickerView

    self.pickerView = [[UIPickerView alloc] init];
    self.pickerView.translatesAutoresizingMaskIntoConstraints = false;
    self.pickerView.delegate = self;
    self.pickerViewItems = [[NSArray alloc] initWithObjects:@"22", @"23", @"24", @"25", @"26", @"27", @"28", @"29", @"30", @"31", nil];

    NSLayoutConstraint *pickerViewTopConstraint = [NSLayoutConstraint constraintWithItem:self.pickerView attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.bodyView attribute:NSLayoutAttributeTop multiplier:1.f constant:10.f ];

    NSLayoutConstraint *pickerViewLeadingConstraint = [NSLayoutConstraint constraintWithItem:self.pickerView attribute:NSLayoutAttributeLeading relatedBy:NSLayoutRelationEqual toItem:self.bodyView attribute:NSLayoutAttributeLeading multiplier:1.f constant:16.f ];

    NSLayoutConstraint *pickerViewTrailingConstraint = [NSLayoutConstraint constraintWithItem:self.pickerView attribute:NSLayoutAttributeTrailing relatedBy:NSLayoutRelationEqual toItem:self.bodyView attribute:NSLayoutAttributeTrailing multiplier:1.f constant:-16.f ];

    NSLayoutConstraint *pickerViewHeightConstraint = [NSLayoutConstraint constraintWithItem:self.pickerView attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1.f constant:180.f ];

#pragma mark - dayOfWeekNameLabel

    self.dayOfWeekNameLabel = [KFAddEventViewFactory dayOfWeekNameLabel];

    NSLayoutConstraint *dayOfWeekNameLabelTopConstraint = [NSLayoutConstraint constraintWithItem:self.dayOfWeekNameLabel attribute:NSLayoutAttributeTop  relatedBy:NSLayoutRelationEqual toItem:self.pickerView attribute:NSLayoutAttributeBottom multiplier:1.f constant:-25.f ];

    NSLayoutConstraint *dayOfWeekNameLabelCenterXConstraint = [NSLayoutConstraint constraintWithItem:self.dayOfWeekNameLabel attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self.bodyView attribute:NSLayoutAttributeCenterX multiplier:1.f constant:0 ];

#pragma mark - timeLabel

    self.timeLabel = [KFAddEventViewFactory timeLabel];

    NSLayoutConstraint *timeLabelTopConstraint = [NSLayoutConstraint constraintWithItem:self.timeLabel attribute:NSLayoutAttributeTop  relatedBy:NSLayoutRelationEqual toItem:self.dayOfWeekNameLabel attribute:NSLayoutAttributeBottom multiplier:1.f constant:16.f ];

    NSLayoutConstraint *timeLabelCenterXConstraint = [NSLayoutConstraint constraintWithItem:self.timeLabel attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self.bodyView attribute:NSLayoutAttributeCenterX multiplier:1.f constant:0 ];

#pragma mark - thirtyMinuteButton

    self.thirtyMinuteButton = [KFAddEventViewFactory thirtyMinuteButton];

    NSLayoutConstraint *thirtyMinuteButtonTopConstraint = [NSLayoutConstraint constraintWithItem:self.thirtyMinuteButton attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.timeLabel attribute:NSLayoutAttributeBottom multiplier:1.f constant: 40.f ];

    NSLayoutConstraint *thirtyMinuteButtonCenterXConstraint = [NSLayoutConstraint constraintWithItem:self.thirtyMinuteButton attribute:NSLayoutAttributeTrailing relatedBy:NSLayoutRelationEqual toItem:self.bodyView attribute:NSLayoutAttributeCenterX multiplier:1.f constant: -5.f ];

    NSLayoutConstraint *thirtyMinuteButtonWidthConstraint = [NSLayoutConstraint constraintWithItem:self.thirtyMinuteButton attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1.f constant: 50.f ];

#pragma mark - fifteenMinuteButton

    self.fifteenMinuteButton = [KFAddEventViewFactory fifteenMinuteButton];

    NSLayoutConstraint *fifteenMinuteButtonTopConstraint = [NSLayoutConstraint constraintWithItem:self.fifteenMinuteButton attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.timeLabel attribute:NSLayoutAttributeBottom multiplier:1.f constant: 40.f ];

    NSLayoutConstraint *fifteenMinuteButtonLeadingConstraint = [NSLayoutConstraint constraintWithItem:self.fifteenMinuteButton attribute:NSLayoutAttributeTrailing relatedBy:NSLayoutRelationEqual toItem:self.thirtyMinuteButton attribute:NSLayoutAttributeLeading multiplier:1.f constant: -10.f ];

    NSLayoutConstraint *fifteenMinuteButtonWidthConstraint = [NSLayoutConstraint constraintWithItem:self.fifteenMinuteButton attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1.f constant: 50.f ];

#pragma mark - oneHourButton

    self.oneHourButton = [KFAddEventViewFactory oneHourButton];

    NSLayoutConstraint *oneHourButtonTopConstraint = [NSLayoutConstraint constraintWithItem:self.oneHourButton attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.timeLabel attribute:NSLayoutAttributeBottom multiplier:1.f constant: 40.f ];

    NSLayoutConstraint *oneHourButtonCenterXConstraint = [NSLayoutConstraint constraintWithItem:self.oneHourButton attribute:NSLayoutAttributeLeading relatedBy:NSLayoutRelationEqual toItem:self.bodyView attribute:NSLayoutAttributeCenterX multiplier:1.f constant: 5.f ];

    NSLayoutConstraint *oneHourButtonWidthConstraint = [NSLayoutConstraint constraintWithItem:self.oneHourButton attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1.f constant: 50.f ];

#pragma mark - oneDayButton

    self.oneDayButton = [KFAddEventViewFactory oneDayButton];

    NSLayoutConstraint *oneDayButtonTopConstraint = [NSLayoutConstraint constraintWithItem:self.oneDayButton attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.timeLabel attribute:NSLayoutAttributeBottom multiplier:1.f constant: 40.f ];

    NSLayoutConstraint *oneDayButtonLeadingConstraint = [NSLayoutConstraint constraintWithItem:self.oneDayButton attribute:NSLayoutAttributeLeading relatedBy:NSLayoutRelationEqual toItem:self.oneHourButton attribute:NSLayoutAttributeTrailing multiplier:1.f constant: 10.f ];

    NSLayoutConstraint *oneDayButtonWidthConstraint = [NSLayoutConstraint constraintWithItem:self.oneDayButton attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1.f constant: 50.f ];

#pragma mark - moreButton

    self.moreButton = [KFAddEventViewFactory moreButton];
    [self.moreButton addTarget:self action:@selector(moreButtonPressing:) forControlEvents:UIControlEventTouchDown];


    NSLayoutConstraint *moreButtonCenterXConstraint = [NSLayoutConstraint constraintWithItem:self.moreButton attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self.bodyView attribute:NSLayoutAttributeCenterX multiplier:1.f constant:0 ];

    self.moreButtonCenterYConstraint = [NSLayoutConstraint constraintWithItem:self.moreButton attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:self.bodyView attribute:NSLayoutAttributeBottom multiplier:1.f constant:100.f ];

    NSLayoutConstraint *moreButtonWidthConstraint = [NSLayoutConstraint constraintWithItem:self.moreButton attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1.f constant: 200.f ];

    NSLayoutConstraint *moreButtonHeightConstraint = [NSLayoutConstraint constraintWithItem:self.moreButton attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1.f constant:40.f ];

#pragma mark - eventProfileButton

    self.eventProfileButton = [KFAddEventViewFactory eventProfileButton];
    [self.eventProfileButton addTarget:self action:@selector(eventProfileButtonPressing:) forControlEvents:UIControlEventTouchUpInside];

    NSLayoutConstraint *eventProfileButtonBottomConstraint = [NSLayoutConstraint constraintWithItem:self.eventProfileButton attribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationEqual toItem:self.moreButton attribute:NSLayoutAttributeTop multiplier:1.f constant: -15.f ];

    NSLayoutConstraint *eventProfileButtonXConstraint = [NSLayoutConstraint constraintWithItem:self.eventProfileButton attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self.bodyView attribute:NSLayoutAttributeCenterX multiplier:1.f constant: 0 ];

    [self.view addSubview:cFirstBackground];
    [self.view addSubview:cSecondBackground];
    [self.view addSubview:cancelButton];
    [self.view addSubview:doneButton];
    [self.view addSubview:self.logoView];
    [self.view addSubview:self.eventLabel];
    [self.view addSubview: self.eventNameField];
    [self.view addSubview:self.bodyView];
    [self.logoView addSubview:logoLetter];
    [self.bodyView addSubview:self.pickerView];
    [self.bodyView addSubview:self.monthNameLabel];
    [self.bodyView addSubview:self.dayOfWeekNameLabel];
    [self.bodyView addSubview:self.timeLabel];
    [self.bodyView addSubview:self.fifteenMinuteButton];
    [self.bodyView addSubview:self.thirtyMinuteButton];
    [self.bodyView addSubview:self.oneHourButton];
    [self.bodyView addSubview:self.oneDayButton];
    [self.bodyView addSubview:self.eventProfileButton];
    [self.view addSubview:self.moreButton];

    [self.view addConstraints:@[cancelButtonLeftConstraint, self.cancelButtonTopConstrain, doneButtonRight, self.doneButtonTopConstrain, cFirstBackgroundTop, cFirstBackgroundLeft, cSecondBackgroundBottom, cSecondBackgroundRight, self.eventNameFieldCenterYConstraint, eventNameFieldTrailingConstraint, eventNameFieldLeadingConstraint, eventLabelTopConstraint, eventLabelCenterXConstraint, bodyViewLeadingConstraint, bodyViewTrailingConstraint, bodyViewBottomConstraint, self.bodyViewTopConstraint, pickerViewTopConstraint, pickerViewLeadingConstraint, pickerViewTrailingConstraint, pickerViewHeightConstraint, monthNameTopConstraint, monthNameCenterXConstraint, dayOfWeekNameLabelTopConstraint, dayOfWeekNameLabelCenterXConstraint, moreButtonCenterXConstraint, self.moreButtonCenterYConstraint, moreButtonWidthConstraint, moreButtonHeightConstraint, timeLabelTopConstraint, timeLabelCenterXConstraint,  fifteenMinuteButtonTopConstraint, fifteenMinuteButtonLeadingConstraint, fifteenMinuteButtonWidthConstraint, thirtyMinuteButtonTopConstraint, thirtyMinuteButtonCenterXConstraint, thirtyMinuteButtonWidthConstraint, oneHourButtonTopConstraint, oneHourButtonCenterXConstraint, oneHourButtonWidthConstraint, oneDayButtonTopConstraint, oneDayButtonLeadingConstraint, oneDayButtonWidthConstraint, eventProfileButtonBottomConstraint, eventProfileButtonXConstraint, self.logoViewTopConstrain, logoViewCenterXConstraint, logoViewWidthConstraint, logoViewHeightConstraint]];

}

#pragma mark - viewDidAppear

- (void)viewDidAppear:(BOOL)animated {

}

#pragma mark - textFieldDidBeginEditing

- (void)textFieldDidBeginEditing:(UITextField *)textField {

    [self.view layoutIfNeeded];

    self.cancelButtonTopConstrain.constant = -50.f;
    self.doneButtonTopConstrain.constant = -50.f;
    self.eventNameFieldCenterYConstraint.constant = -40.f;
    self.bodyViewTopConstraint.constant = 800.f;
    self.moreButtonCenterYConstraint.constant = 100.f;
    self.logoViewTopConstrain.constant = -100.f;

    [UIView animateWithDuration:0.5 delay:0.2 options:UIViewAnimationOptionCurveEaseInOut animations:^{
        [self.view layoutIfNeeded];
        self.eventLabel.alpha = 0;
    } completion:nil];

}

#pragma mark - textFieldDidEndEditing

- (void)textFieldDidEndEditing:(UITextField *)textField {

    [self.view layoutIfNeeded];

    if ([self.eventNameField hasText]) {

        self.doneButtonTopConstrain.constant = 45.f;
        self.cancelButtonTopConstrain.constant = 73.f;
        self.eventNameFieldCenterYConstraint.constant = -(self.view.frame.size.height / 2) + 140.f;
        self.bodyViewTopConstraint.constant = 45.f;
        self.moreButtonCenterYConstraint.constant = 0;

        [UIView animateWithDuration:0.5f delay:0 options:UIViewAnimationOptionCurveEaseInOut animations:^{
            [self.view layoutIfNeeded];
        } completion:nil];

        self.logoViewTopConstrain.constant = 25.f;

        [UIView animateWithDuration:0.5f delay:0.2f options:UIViewAnimationOptionCurveEaseInOut animations:^{
            [self.view layoutIfNeeded];
        } completion:nil];

        [UIView animateWithDuration:0.5f delay:0.5f options:UIViewAnimationOptionCurveEaseInOut animations:^{
            self.eventLabel.alpha = 0.5f;
        } completion:nil];

    } else {
        self.eventNameFieldCenterYConstraint.constant = 0;
        self.doneButtonTopConstrain.constant = -50.f;
        self.cancelButtonTopConstrain.constant = 73.f;
        self.moreButtonCenterYConstraint.constant = 100.f;

        [UIView animateWithDuration:0.5f delay:0 options:UIViewAnimationOptionCurveEaseInOut animations:^{

            [self.view layoutIfNeeded];
        } completion:nil];
    }
}

- (void)eventProfileButtonPressing:(UIButton *)button {

    UIAlertController * alert = [UIAlertController
                                 alertControllerWithTitle:nil
                                 message:@"Select event profile"
                                 preferredStyle:UIAlertControllerStyleActionSheet];

    UIAlertAction* firstButton = [UIAlertAction
                               actionWithTitle:@"dog@gmail.com"
                               style:UIAlertActionStyleDefault
                               handler:^(UIAlertAction * action) {
                                   [self.eventProfileButton setTitle:@"dog@gmail.com" forState:UIControlStateNormal];
                                   [self.eventProfileButton setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];

                               }];
    UIAlertAction* secondButton = [UIAlertAction
                               actionWithTitle:@"cat@gmail.com"
                               style:UIAlertActionStyleDefault
                               handler:^(UIAlertAction * action) {
                                   [self.eventProfileButton setTitle:@"cat@gmail.com" forState:UIControlStateNormal];
                                   [self.eventProfileButton setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];

                               }];
    UIAlertAction* thirdButton = [UIAlertAction
                               actionWithTitle:@"Schedule and reserves"
                               style:UIAlertActionStyleDefault
                               handler:^(UIAlertAction * action) {
                                   [self.eventProfileButton setTitle:@"Schedule and reserves" forState:UIControlStateNormal];
                                   [self.eventProfileButton setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];

                               }];


    [alert addAction:firstButton];
    [alert addAction:secondButton];
    [alert addAction:thirdButton];

    [self presentViewController:alert animated:YES completion:nil];

    NSLog(@"Button is DOWN!");
}

- (void)moreButtonPressing:(UIButton *)button {


    UIAlertController * alert = [UIAlertController
                                 alertControllerWithTitle:nil
                                 message:@"Will be later"
                                 preferredStyle:UIAlertControllerStyleAlert];

    UIAlertAction* okButton = [UIAlertAction
                                actionWithTitle:@"Ok"
                                style:UIAlertActionStyleDefault
                                handler:^(UIAlertAction * action) {
                                    //Handle your yes please button action here
                                }];

    [alert addAction:okButton];

    [self presentViewController:alert animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return YES;
}

//Delegates method of PickerView
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 1;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    return [self.pickerViewItems count];
}

-(CGFloat)pickerView:(UIPickerView *)pickerView rowHeightForComponent:(NSInteger)component {
    return 130.f;
}

-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    return [self.pickerViewItems objectAtIndex:row];
}

-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component {
    NSInteger selectedRow = [self.pickerView selectedRowInComponent:0];

    switch (selectedRow) {
        case 0:
            self.dayOfWeekNameLabel.text = @"Sunday";
            break;
        case 1:
            self.dayOfWeekNameLabel.text = @"Monday";
            break;
        case 2:
            self.dayOfWeekNameLabel.text = @"Tuesday";
            break;
        case 3:
            self.dayOfWeekNameLabel.text = @"Wednesday";
            break;
        case 4:
            self.dayOfWeekNameLabel.text = @"Thursday";
            break;
        case 5:
            self.dayOfWeekNameLabel.text = @"Friday";
            break;
        case 6:
            self.dayOfWeekNameLabel.text = @"Saturday";
            break;
        case 7:
            self.dayOfWeekNameLabel.text = @"Sunday";
            break;
        case 8:
            self.dayOfWeekNameLabel.text = @"Monday";
            break;
        case 9:
            self.dayOfWeekNameLabel.text = @"Tuesday";
            break;
    }
}

-(UIView *)pickerView:(UIPickerView *)pickerView viewForRow:(NSInteger)row forComponent:(NSInteger)component reusingView:(UIView *)view {
    UILabel *label = (UILabel *)view;
    if (!label) {
        label = [[UILabel alloc] init];
        label.font = [UIFont fontWithName:@"Montserrat-Regular" size:130.f];
        label.textColor = [UIColor blackColor];
        label.textAlignment = NSTextAlignmentCenter;

        [[self.pickerView.subviews objectAtIndex:1] setHidden:TRUE];
        [[self.pickerView.subviews objectAtIndex:2] setHidden:TRUE];
    }
    label.text = [self.pickerViewItems objectAtIndex:row];
    return label;
}
@end
