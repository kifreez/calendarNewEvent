//
//  AddEventViewController.m
//  Calendar_test
//
//  Created by Kif on 30.12.16.
//  Copyright © 2016 KifApp. All rights reserved.
//

#import "KFAddEventViewController.h"
#import "KFEventNameField.h"
#define kOFFSET_FOR_KEYBOARD 80.0

@interface KFAddEventViewController () <UITextFieldDelegate>

@end

@implementation KFAddEventViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.eventNameField = [[KFEventNameField alloc] init];
    self.eventNameField.textAlignment = NSTextAlignmentCenter;
    self.eventNameField.backgroundColor = [UIColor colorWithRed:255.0/255.0 green:255.0/255.0 blue:255.0/255.0 alpha:0];
    self.eventNameField.textColor = [UIColor whiteColor];
    UIColor *color = [UIColor lightTextColor];
    self.eventNameField.attributedPlaceholder = [[NSAttributedString alloc] initWithString:@"Type an event" attributes:@{NSForegroundColorAttributeName: color}];
    self.eventNameField.translatesAutoresizingMaskIntoConstraints = false;
    self.eventNameField.delegate = self;
    [self.eventNameField setReturnKeyType:UIReturnKeyDone];
    self.eventNameField.font = [UIFont fontWithName:@"Montserrat-ExtraLight" size:30.f];

    self.scrlView = [[UIScrollView alloc] init];
    self.scrlView.translatesAutoresizingMaskIntoConstraints = false;


    //Hierarchy
    [self.scrlView addSubview: self.eventNameField];
    [self.view addSubview:self.scrlView];

    self.view.backgroundColor = [UIColor colorWithRed:0/255.0 green:194.0/255.0 blue:237.0/255.0 alpha:1.0];

    //Constraints of UIScrollView *scrlView
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:self.scrlView attribute:NSLayoutAttributeLeading
                                                                       relatedBy:NSLayoutRelationEqual
                                                                          toItem:self.view
                                                                       attribute:NSLayoutAttributeLeading
                                                                      multiplier:1.0
                                                                        constant:0 ]];

    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:self.scrlView
                                                                       attribute:NSLayoutAttributeTrailing
                                                                       relatedBy:NSLayoutRelationEqual
                                                                          toItem:self.view
                                                                       attribute:NSLayoutAttributeTrailing
                                                                      multiplier:1.0
                                                                        constant:0 ]];

    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:self.scrlView
                                                                       attribute:NSLayoutAttributeHeight
                                                                       relatedBy:NSLayoutRelationEqual
                                                                          toItem:self.view
                                                                       attribute:NSLayoutAttributeHeight
                                                                      multiplier:1.0
                                                                        constant:0 ]];

    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:self.scrlView
                                                                       attribute:NSLayoutAttributeCenterY
                                                                       relatedBy:NSLayoutRelationEqual
                                                                          toItem:self.view
                                                                       attribute:NSLayoutAttributeCenterY
                                                                      multiplier:1.0
                                                                        constant:0 ]];
    //Constraints of UITextField *eventNameField
    [self.scrlView addConstraint:[NSLayoutConstraint constraintWithItem:self.eventNameField
                                                              attribute:NSLayoutAttributeCenterY
                                                              relatedBy:NSLayoutRelationEqual
                                                                 toItem:self.scrlView
                                                              attribute:NSLayoutAttributeCenterY
                                                             multiplier:1.0
                                                               constant:0 ]];

    [self.scrlView addConstraint:[NSLayoutConstraint constraintWithItem:self.eventNameField
                                                              attribute:NSLayoutAttributeHeight
                                                              relatedBy:NSLayoutRelationEqual
                                                                 toItem:nil
                                                              attribute:NSLayoutAttributeNotAnAttribute
                                                             multiplier:1.0
                                                               constant:45.0 ]];

    [self.scrlView addConstraint:[NSLayoutConstraint constraintWithItem:self.eventNameField
                                                              attribute:NSLayoutAttributeLeading
                                                              relatedBy:NSLayoutRelationEqual
                                                                 toItem:self.scrlView
                                                              attribute:NSLayoutAttributeLeading
                                                             multiplier:1.0
                                                               constant:25 ]];

    [self.scrlView addConstraint:[NSLayoutConstraint constraintWithItem:self.eventNameField
                                                              attribute:NSLayoutAttributeCenterX
                                                              relatedBy:NSLayoutRelationEqual
                                                                 toItem:self.scrlView
                                                              attribute:NSLayoutAttributeCenterX
                                                             multiplier:1.0
                                                               constant:0 ]];
    
}

- (void)viewDidAppear:(BOOL)animated {

    self.cancelButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.cancelButton addTarget:self action:@selector(cancelButtonPressing:) forControlEvents:UIControlEventTouchDown];
    [self.cancelButton addTarget:self action:@selector(cancelButtonDidPressed:) forControlEvents:UIControlEventTouchUpInside];
    [self.cancelButton setImage:[UIImage imageNamed:@"cancel_button"] forState:UIControlStateNormal];
    [self.view addSubview:self.cancelButton];



    self.doneButton = [UIButton buttonWithType:UIButtonTypeCustom];
    self.doneButton.titleLabel.font = [UIFont fontWithName:@"Montserrat-Regular" size:16.f];
    self.doneButton.frame = CGRectMake((self.view.frame.size.width - self.doneButton.frame.size.width) - 8, -35.f, 50.f, 50.f);
    [self.doneButton addTarget:self action:@selector(doneButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
    [self.doneButton setTitle:@"Done" forState:UIControlStateNormal];
    [self.view addSubview:self.doneButton];

    self.logoView = [[UIView alloc] init];
    self.logoView.layer.cornerRadius = 35.0f;
    self.logoView.layer.shadowColor = [UIColor darkGrayColor].CGColor;
    self.logoView.layer.shadowOpacity = 0.3f;
    self.logoView.layer.shadowRadius = 3.0f;
    self.logoView.layer.shadowOffset = CGSizeMake(1.0f, 1.0f);
    self.logoView.backgroundColor = [UIColor whiteColor];
    self.logoView.frame = CGRectMake(self.view.frame.size.width / 2 - 40.0f, -80.0f, 70.0f, 70.0f);

    UILabel *logoLetter = [[UILabel alloc] init];
    logoLetter.text = @"C";
    logoLetter.textColor = [UIColor darkGrayColor];
    logoLetter.textAlignment = NSTextAlignmentCenter;
    logoLetter.frame = CGRectMake(0, 0, 70.f, 70.f);
    logoLetter.font = [UIFont fontWithName:@"Montserrat-Regular" size:40.f];

    [self.logoView addSubview:logoLetter];

    [self.view addSubview:self.logoView];

    self.eventLabel = [[UILabel alloc] init];
    self.eventLabel.frame = CGRectMake((self.view.frame.size.width / 2) - 25.f, 100.f, 50.f, 20.f);
    self.eventLabel.text = @"Event";
    self.eventLabel.textColor = [UIColor whiteColor];
    self.eventLabel.font = [UIFont fontWithName:@"Montserrat-Regular" size:16.f];
    self.eventLabel.alpha = 0;
    [self.view addSubview:self.eventLabel];



}

- (void)cancelButtonPressing:(UIButton *)button {
    button.layer.opacity = 0.5;
    NSLog(@"Button 'Cancel' DOWN!");
}

- (void)cancelButtonDidPressed:(UIButton *)button {
    button.layer.opacity = 1;
    NSLog(@"Button 'Cancel' UP!");
}

- (void)doneButtonPressed:(UIButton *)button {
    NSLog(@"Button 'Done' pressed!");
}

// Move up for eventTextField
- (void)textFieldDidBeginEditing:(UITextField *)textField {

    [UIView animateWithDuration:0.5 delay:0 options:UIViewAnimationOptionCurveEaseInOut animations:^{
        self.cancelButton.frame = CGRectMake(8.f, -50.f, 50.f, 50.f);
        self.doneButton.frame = CGRectMake((self.view.frame.size.width - self.doneButton.frame.size.width) - 8, -35.f, 50.f, 50.f);
        [self.scrlView setContentOffset:CGPointMake(0, textField.frame.size.height)];
    } completion:nil];

    [UIView animateWithDuration:0.5f delay:0.2f options:UIViewAnimationOptionCurveEaseInOut animations:^{
        self.logoView.frame = CGRectMake(self.view.frame.size.width / 2 - 35.0f, -80.0f, 70.0f, 70.0f);
        self.eventLabel.alpha = 0;
    } completion:nil];


}

- (void)textFieldDidEndEditing:(UITextField *)textField {

    if ([self.eventNameField hasText]) {
        [UIView animateWithDuration:0.5f delay:0 options:UIViewAnimationOptionCurveEaseInOut animations:^{
            self.cancelButton.frame = CGRectMake(8.f, 35.f, 50.f, 50.f);
            self.doneButton.frame = CGRectMake((self.view.frame.size.width - self.doneButton.frame.size.width) - 8, 35.f, 50.f, 50.f);
            [self.scrlView setContentOffset:CGPointMake(0, self.view.frame.size.height / 2 - 140)];
        } completion:nil];

        [UIView animateWithDuration:0.5f delay:0.2f options:UIViewAnimationOptionCurveEaseInOut animations:^{
            self.logoView.frame = CGRectMake(self.view.frame.size.width / 2 - 35.0f, 25.0f, 70.0f, 70.0f);
        } completion:nil];

        [UIView animateWithDuration:0.5f delay:0.5f options:UIViewAnimationOptionCurveEaseInOut animations:^{
            self.eventLabel.alpha = 0.5f;
        } completion:nil];

    } else {

        [UIView animateWithDuration:0.5f delay:0 options:UIViewAnimationOptionCurveEaseInOut animations:^{
            [self.scrlView setContentOffset:CGPointMake(0, 0)];
        } completion:nil];
    }
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
