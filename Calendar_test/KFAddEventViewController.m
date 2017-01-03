//
//  AddEventViewController.m
//  Calendar_test
//
//  Created by Kif on 30.12.16.
//  Copyright © 2016 KifApp. All rights reserved.
//

#import "KFAddEventViewController.h"

@interface KFAddEventViewController () <UITextFieldDelegate>

@property (strong, nonatomic) IBOutlet NSLayoutConstraint *cancelButtonTopConstrain;
@property (strong, nonatomic) IBOutlet NSLayoutConstraint *doneButtonTopConstrain;
@property (strong, nonatomic) IBOutlet NSLayoutConstraint *eventNameFieldCenterYConstraint;
@property (strong, nonatomic) IBOutlet NSLayoutConstraint *logoViewTopConstrain;

@end

@implementation KFAddEventViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor colorWithRed:0/255.0 green:194.0/255.0 blue:237.0/255.0 alpha:1.f];

#pragma mark - cFirstBackground

    UILabel *cFirstBackground = [[UILabel alloc] init];
    cFirstBackground.text = @"C";
    cFirstBackground.textColor = [UIColor whiteColor];
    cFirstBackground.textAlignment = NSTextAlignmentCenter;
    cFirstBackground.font = [UIFont fontWithName:@"Montserrat-Regular" size:400.f];
    cFirstBackground.translatesAutoresizingMaskIntoConstraints = false;

    NSLayoutConstraint *cFirstBackgroundTop = [NSLayoutConstraint constraintWithItem:cFirstBackground attribute:NSLayoutAttributeTop  relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeTop multiplier:1.f constant:-130.f ];

    NSLayoutConstraint *cFirstBackgroundLeft = [NSLayoutConstraint constraintWithItem:cFirstBackground attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeLeft multiplier:1.f constant:-170.f ];

#pragma mark - cSecondBackground

    UILabel *cSecondBackground = [[UILabel alloc] init];
    cSecondBackground.text = @"C";
    cSecondBackground.textColor = [UIColor whiteColor];
    cSecondBackground.textAlignment = NSTextAlignmentCenter;
    cSecondBackground.font = [UIFont fontWithName:@"Montserrat-Regular" size:400.f];
    cSecondBackground.translatesAutoresizingMaskIntoConstraints = false;

    NSLayoutConstraint *cSecondBackgroundBottom = [NSLayoutConstraint constraintWithItem:cSecondBackground attribute:NSLayoutAttributeBottom  relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeBottom multiplier:1.f constant:130.f ];

    NSLayoutConstraint *cSecondBackgroundRight = [NSLayoutConstraint constraintWithItem:cSecondBackground attribute:NSLayoutAttributeRight relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeRight multiplier:1.f constant:120.f ];

#pragma mark - cancelButton

    self.cancelButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.cancelButton addTarget:self action:@selector(buttonPressing:) forControlEvents:UIControlEventTouchDown];
    [self.cancelButton addTarget:self action:@selector(buttonDidPressing:) forControlEvents:UIControlEventTouchUpInside];
    [self.cancelButton setImage:[UIImage imageNamed:@"cancel_button"] forState:UIControlStateNormal];
    self.cancelButton.translatesAutoresizingMaskIntoConstraints = false;

    NSLayoutConstraint *cancelButtonLeftConstraint = [NSLayoutConstraint constraintWithItem:self.cancelButton attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeLeft multiplier:1.f constant:16.f ];

    self.cancelButtonTopConstrain = [NSLayoutConstraint constraintWithItem:self.cancelButton attribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeTop multiplier:1.f constant:73.f ];

#pragma mark - eventLabel

    self.eventLabel = [[UILabel alloc] init];
    self.eventLabel.text = @"Event";
    self.eventLabel.textColor = [UIColor whiteColor];
    self.eventLabel.font = [UIFont fontWithName:@"Montserrat-Regular" size:16.f];
    self.eventLabel.alpha = 0;
    self.eventLabel.translatesAutoresizingMaskIntoConstraints = false;

    NSLayoutConstraint *eventLabelTopConstraint = [NSLayoutConstraint constraintWithItem:self.eventLabel attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeTop multiplier:1.f constant: 100.f];

    NSLayoutConstraint *eventLabelCenterXConstraint = [NSLayoutConstraint constraintWithItem:self.eventLabel attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeCenterX multiplier:1.f constant:0];

#pragma mark - eventNameField

    self.eventNameField = [[UITextField alloc] init];
    self.eventNameField.textAlignment = NSTextAlignmentCenter;
    self.eventNameField.backgroundColor = [UIColor colorWithRed:255.0/255.0 green:255.0/255.0 blue:255.0/255.0 alpha:0];
    self.eventNameField.textColor = [UIColor whiteColor];
    self.eventNameField.attributedPlaceholder = [[NSAttributedString alloc] initWithString:@"Type an event" attributes:@{NSForegroundColorAttributeName: [UIColor lightTextColor]}];
    self.eventNameField.delegate = self;
    self.eventNameField.font = [UIFont fontWithName:@"Montserrat-ExtraLight" size:30.f];
    [self.eventNameField setReturnKeyType:UIReturnKeyDone];
    self.eventNameField.translatesAutoresizingMaskIntoConstraints = false;

    self.eventNameFieldCenterYConstraint = [NSLayoutConstraint constraintWithItem:self.eventNameField attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeCenterY multiplier:1.f constant:0];

    NSLayoutConstraint *eventNameFieldLeading = [NSLayoutConstraint constraintWithItem:self.eventNameField attribute:NSLayoutAttributeLeading relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeLeading multiplier:1.0 constant:0 ];

    NSLayoutConstraint *eventNameFieldCenterX = [NSLayoutConstraint constraintWithItem:self.eventNameField attribute:NSLayoutAttributeTrailing relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeTrailing multiplier:1.0 constant:0 ];

    [self.view addSubview:cFirstBackground];
    [self.view addSubview:cSecondBackground];
    [self.view addSubview:self.cancelButton];
    [self.view addSubview:self.eventLabel];
    [self.view addSubview: self.eventNameField];

    [self.view addConstraints:@[cancelButtonLeftConstraint, self.cancelButtonTopConstrain, cFirstBackgroundTop, cFirstBackgroundLeft, cSecondBackgroundBottom, cSecondBackgroundRight, self.eventNameFieldCenterYConstraint, eventNameFieldCenterX, eventNameFieldLeading, eventLabelTopConstraint, eventLabelCenterXConstraint ]];
}

- (void)viewDidAppear:(BOOL)animated {

#pragma mark - doneButton

    self.doneButton = [UIButton buttonWithType:UIButtonTypeCustom];
    self.doneButton.titleLabel.font = [UIFont fontWithName:@"Montserrat-Regular" size:16.f];
    self.doneButton.translatesAutoresizingMaskIntoConstraints = false;
        [self.doneButton addTarget:self action:@selector(buttonPressing:) forControlEvents:UIControlEventTouchUpInside];
        [self.doneButton addTarget:self action:@selector(buttonDidPressing:) forControlEvents:UIControlEventTouchUpInside];
        [self.doneButton setTitle:@"Done" forState:UIControlStateNormal];

    NSLayoutConstraint *doneButtonRight = [NSLayoutConstraint constraintWithItem:self.doneButton attribute:NSLayoutAttributeRight relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeRight multiplier:1.f constant:-16.f ];

    self.doneButtonTopConstrain = [NSLayoutConstraint constraintWithItem:self.doneButton attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeTop multiplier:1.f constant:-50.f ];

#pragma mark - logoView

    self.logoView = [[UIView alloc] init];
    self.logoView.layer.cornerRadius = 35.0f;
    self.logoView.layer.shadowColor = [UIColor darkGrayColor].CGColor;
    self.logoView.layer.shadowOpacity = 0.3f;
    self.logoView.layer.shadowRadius = 3.0f;
    self.logoView.layer.shadowOffset = CGSizeMake(1.0f, 1.0f);
    self.logoView.backgroundColor = [UIColor whiteColor];
    self.logoView.translatesAutoresizingMaskIntoConstraints = false;

    self.logoViewTopConstrain = [NSLayoutConstraint constraintWithItem:self.logoView attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeTop multiplier:1.f constant:-100.f ];

    NSLayoutConstraint *logoViewCenterXConstraint = [NSLayoutConstraint constraintWithItem:self.logoView attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeCenterX multiplier:1.f constant:0 ];

    NSLayoutConstraint *logoViewWidthConstraint = [NSLayoutConstraint constraintWithItem:self.logoView attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1.f constant:70.f ];

    NSLayoutConstraint *logoViewHeightConstraint = [NSLayoutConstraint constraintWithItem:self.logoView attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1.f constant:70.f ];

#pragma mark - logoLetter

    UILabel *logoLetter = [[UILabel alloc] init];
    logoLetter.text = @"C";
    logoLetter.textColor = [UIColor darkGrayColor];
    logoLetter.textAlignment = NSTextAlignmentCenter;
    logoLetter.frame = CGRectMake(0, 0, 70.f, 70.f);
    logoLetter.font = [UIFont fontWithName:@"Montserrat-Regular" size:40.f];

    [self.view addSubview:self.doneButton];
    [self.view addSubview:self.logoView];
    [self.logoView addSubview:logoLetter];

    [self.view addConstraints:@[doneButtonRight, self.doneButtonTopConstrain, self.logoViewTopConstrain, logoViewCenterXConstraint, logoViewWidthConstraint, logoViewHeightConstraint ]];
}

#pragma mark - textFieldDidBeginEditing

- (void)textFieldDidBeginEditing:(UITextField *)textField {

    [self.view layoutIfNeeded];

    self.cancelButtonTopConstrain.constant = -50.f;
    self.doneButtonTopConstrain.constant = -50.f;
    self.eventNameFieldCenterYConstraint.constant = -40.f;

    [UIView animateWithDuration:0.5 delay:0 options:UIViewAnimationOptionCurveEaseInOut animations:^{
        [self.view layoutIfNeeded];
    } completion:nil];

    self.logoViewTopConstrain.constant = -100.f;
    [UIView animateWithDuration:0.5f delay:0.2f options:UIViewAnimationOptionCurveEaseInOut animations:^{
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
        [UIView animateWithDuration:0.5f delay:0 options:UIViewAnimationOptionCurveEaseInOut animations:^{

            [self.view layoutIfNeeded];
        } completion:nil];
    }
}

- (void)buttonPressing:(UIButton *)button {
    button.layer.opacity = 0.5;
    NSLog(@"Button 'Cancel' DOWN!");
}

- (void)buttonDidPressing:(UIButton *)button {
    button.layer.opacity = 1;
    NSLog(@"Button 'Cancel' UP!");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return YES;
}

@end
