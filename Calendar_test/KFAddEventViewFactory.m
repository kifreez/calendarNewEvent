//
//  KFAddEventViewFactory.m
//  Calendar_test
//
//  Created by Kif on 05.01.17.
//  Copyright © 2017 KifApp. All rights reserved.
//

#import "KFAddEventViewFactory.h"
#import "KFAddEventViewController.h"

@implementation KFAddEventViewFactory

#pragma mark - cFirstBackground
+(UILabel *)cFirstBackground {

    UILabel *cFirstBackground = [[UILabel alloc] init];
    cFirstBackground.text = @"C";
    cFirstBackground.textColor = [UIColor whiteColor];
    cFirstBackground.textAlignment = NSTextAlignmentCenter;
    cFirstBackground.font = [UIFont fontWithName:@"Montserrat-Regular" size:400.f];
    cFirstBackground.translatesAutoresizingMaskIntoConstraints = false;

    return cFirstBackground;
}
#pragma mark - cSecondBackground
+(UILabel *)cSecondBackground {
    
    UILabel *cSecondBackground = [[UILabel alloc] init];
    cSecondBackground.text = @"C";
    cSecondBackground.textColor = [UIColor whiteColor];
    cSecondBackground.textAlignment = NSTextAlignmentCenter;
    cSecondBackground.font = [UIFont fontWithName:@"Montserrat-Regular" size:400.f];
    cSecondBackground.translatesAutoresizingMaskIntoConstraints = false;

    return cSecondBackground;
}
#pragma mark - cancelButton
+(UIButton *)cancelButton {

    UIButton *cancelButton = [[UIButton alloc] init];
    cancelButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [cancelButton setImage:[UIImage imageNamed:@"cancel_button"] forState:UIControlStateNormal];
    cancelButton.translatesAutoresizingMaskIntoConstraints = false;

    return cancelButton;
}
#pragma mark - doneButton
+(UIButton *)doneButton {

    UIButton *doneButton = [UIButton buttonWithType:UIButtonTypeCustom];
    doneButton.titleLabel.font = [UIFont fontWithName:@"Montserrat-Regular" size:16.f];
        [doneButton setTitle:@"Done" forState:UIControlStateNormal];
    doneButton.translatesAutoresizingMaskIntoConstraints = false;

    return doneButton;
}
#pragma mark - logoView
+(UIView *)logoView {

    UIView *logoView = [[UIView alloc] init];
    logoView.layer.cornerRadius = 35.0f;
    logoView.layer.shadowColor = [UIColor darkGrayColor].CGColor;
    logoView.layer.shadowOpacity = 0.3f;
    logoView.layer.shadowRadius = 3.0f;
    logoView.layer.shadowOffset = CGSizeMake(1.0f, 1.0f);
    logoView.backgroundColor = [UIColor whiteColor];
    logoView.translatesAutoresizingMaskIntoConstraints = false;

    return logoView;

}
#pragma mark - logoLetter
+(UILabel *)logoLetter {

    UILabel *logoLetter = [[UILabel alloc] init];
    logoLetter.text = @"C";
    logoLetter.textColor = [UIColor darkGrayColor];
    logoLetter.textAlignment = NSTextAlignmentCenter;
    logoLetter.frame = CGRectMake(0, 0, 70.f, 70.f);
    logoLetter.font = [UIFont fontWithName:@"Montserrat-Regular" size:40.f];

    return logoLetter;
}
#pragma mark - eventLabel
+(UILabel *)eventLabel {

    UILabel *eventLabel = [[UILabel alloc] init];
    eventLabel.text = @"Event";
    eventLabel.textColor = [UIColor whiteColor];
    eventLabel.font = [UIFont fontWithName:@"Montserrat-Regular" size:16.f];
    eventLabel.alpha = 0;
    eventLabel.translatesAutoresizingMaskIntoConstraints = false;

    return eventLabel;
}
#pragma mark - eventNameField
+(UITextField *)eventNameField {

    UITextField *eventNameField = [[UITextField alloc] init];

    eventNameField.textAlignment = NSTextAlignmentCenter;
    eventNameField.backgroundColor = [UIColor colorWithWhite:1.f alpha:0];
    eventNameField.textColor = [UIColor whiteColor];
    eventNameField.attributedPlaceholder = [[NSAttributedString alloc] initWithString:@"Type an event" attributes:@{NSForegroundColorAttributeName: [UIColor lightTextColor]}];
    eventNameField.font = [UIFont fontWithName:@"Montserrat-ExtraLight" size:30.f];
    [eventNameField setReturnKeyType:UIReturnKeyDone];
    eventNameField.translatesAutoresizingMaskIntoConstraints = false;

    return eventNameField;
}
#pragma mark - bodyView
+(UIView *)bodyView {

    UIView *bodyView = [[UIView alloc] init];

    bodyView.backgroundColor = [UIColor whiteColor];
    bodyView.layer.cornerRadius = 15.f;
    bodyView.layer.shadowColor = [UIColor darkGrayColor].CGColor;
    bodyView.layer.shadowOpacity = 0.2f;
    bodyView.layer.shadowRadius = 4.0f;
    bodyView.translatesAutoresizingMaskIntoConstraints = false;
    bodyView.clipsToBounds = true;

    return bodyView;
}
#pragma mark - monthNameLabel
+(UILabel *)monthNameLabel {

    UILabel *monthNameLabel = [[UILabel alloc] init];

    monthNameLabel.text = [@"January" uppercaseString];
    monthNameLabel.textColor = [UIColor colorWithRed:68.f/255.f green:85.f/255.f blue:104.f/255.f alpha:0.7f];
    monthNameLabel.textAlignment = NSTextAlignmentCenter;
    monthNameLabel.font = [UIFont fontWithName:@"Montserrat-Regular" size:16.f];
    monthNameLabel.translatesAutoresizingMaskIntoConstraints = false;

    return monthNameLabel;
}
#pragma mark - dayOfWeekNameLabel
+(UILabel *)dayOfWeekNameLabel {

    UILabel *dayOfWeekNameLabel = [[UILabel alloc] init];
    dayOfWeekNameLabel.textColor = [UIColor colorWithRed:68.f/255.f green:85.f/255.f blue:104.f/255.f alpha:0.7f];
    dayOfWeekNameLabel.text = @"Saturday";
    dayOfWeekNameLabel.textAlignment = NSTextAlignmentCenter;
    dayOfWeekNameLabel.font = [UIFont fontWithName:@"Montserrat-Regular" size:10.f];
    dayOfWeekNameLabel.translatesAutoresizingMaskIntoConstraints = false;

    return dayOfWeekNameLabel;
}
#pragma mark - timeLabel
+(UILabel *)timeLabel {

    UILabel *timeLabel = [[UILabel alloc] init];
    timeLabel.text = @"21:30 - 22:30";
    timeLabel.textColor = [UIColor colorWithRed:68.f/255.f green:85.f/255.f blue:104.f/255.f alpha:0.7f];
    timeLabel.textAlignment = NSTextAlignmentCenter;
    timeLabel.font = [UIFont fontWithName:@"Montserrat-Regular" size:16.f];
    timeLabel.translatesAutoresizingMaskIntoConstraints = false;

    return timeLabel;
}
#pragma mark - thirtyMinuteButton
+(UIButton *)thirtyMinuteButton {

    UIButton *thirtyMinuteButton = [UIButton buttonWithType:UIButtonTypeCustom];

    thirtyMinuteButton.titleLabel.font = [UIFont fontWithName:@"Montserrat-Regular" size:10.f];
    thirtyMinuteButton.layer.backgroundColor = [UIColor lightGrayColor].CGColor;
    thirtyMinuteButton.layer.cornerRadius = 12.f;
    thirtyMinuteButton.translatesAutoresizingMaskIntoConstraints = false;
    [thirtyMinuteButton setTitle:@" 30 min " forState:UIControlStateNormal];

    return thirtyMinuteButton;

}
#pragma mark - fifteenMinuteButton
+(UIButton *)fifteenMinuteButton {

    UIButton *fifteenMinuteButton = [UIButton buttonWithType:UIButtonTypeCustom];

    fifteenMinuteButton = [UIButton buttonWithType:UIButtonTypeCustom];
    fifteenMinuteButton.titleLabel.font = [UIFont fontWithName:@"Montserrat-Regular" size:10.f];
    fifteenMinuteButton.layer.backgroundColor = [UIColor colorWithRed:249.f/255.f green:199.f/255.f blue:20.f/255.f alpha:1.f].CGColor;
    fifteenMinuteButton.layer.cornerRadius = 12.f;
    fifteenMinuteButton.translatesAutoresizingMaskIntoConstraints = false;
    [fifteenMinuteButton setTitleColor:[UIColor darkGrayColor] forState:UIControlStateNormal];
    [fifteenMinuteButton setTitle:@" 15 min " forState:UIControlStateNormal];

    return fifteenMinuteButton;
    
}
#pragma mark - oneHourButton
+(UIButton *)oneHourButton {

    UIButton *oneHourButton = [UIButton buttonWithType:UIButtonTypeCustom];

    oneHourButton = [UIButton buttonWithType:UIButtonTypeCustom];
    oneHourButton.titleLabel.font = [UIFont fontWithName:@"Montserrat-Regular" size:10.f];
    oneHourButton.layer.backgroundColor = [UIColor lightGrayColor].CGColor;
    oneHourButton.layer.cornerRadius = 12.f;
    oneHourButton.translatesAutoresizingMaskIntoConstraints = false;
    [oneHourButton setTitle:@" 1 hour " forState:UIControlStateNormal];

    return oneHourButton;

}
#pragma mark - oneDayButton
+(UIButton *)oneDayButton {

    UIButton *oneDayButton = [UIButton buttonWithType:UIButtonTypeCustom];

    oneDayButton = [UIButton buttonWithType:UIButtonTypeCustom];
    oneDayButton.titleLabel.font = [UIFont fontWithName:@"Montserrat-Regular" size:10.f];
    oneDayButton.layer.backgroundColor = [UIColor lightGrayColor].CGColor;
    oneDayButton.layer.cornerRadius = 12.f;
    oneDayButton.translatesAutoresizingMaskIntoConstraints = false;
    oneDayButton.titleLabel.textColor = [UIColor darkGrayColor];
    [oneDayButton setTitle:@" 1 day " forState:UIControlStateNormal];

    return oneDayButton;
    
}
#pragma mark - moreButton
+(UIButton *)moreButton {

    UIButton *moreButton = [UIButton buttonWithType:UIButtonTypeCustom];

    moreButton = [UIButton buttonWithType:UIButtonTypeCustom];
    moreButton.titleLabel.font = [UIFont fontWithName:@"Montserrat-Regular" size:16.f];
    moreButton.layer.backgroundColor = [UIColor colorWithRed:249.f/255.f green:199.f/255.f blue:20.f/255.f alpha:1.f].CGColor;
    moreButton.layer.cornerRadius = 15.f;
    moreButton.translatesAutoresizingMaskIntoConstraints = false;
    [moreButton setTitle:@"More" forState:UIControlStateNormal];

    return moreButton;
    
}
#pragma mark - eventProfileButton
+(UIButton *)eventProfileButton {

    UIButton *eventProfileButton = [UIButton buttonWithType:UIButtonTypeCustom];

    eventProfileButton = [UIButton buttonWithType:UIButtonTypeCustom];
    eventProfileButton.titleLabel.font = [UIFont fontWithName:@"Montserrat-Regular" size:16.f];
    eventProfileButton.translatesAutoresizingMaskIntoConstraints = false;
    [eventProfileButton setTitleColor:[UIColor darkGrayColor] forState:UIControlStateNormal];
    [eventProfileButton setTitle:@"dog@gmail.com" forState:UIControlStateNormal];

    return eventProfileButton;
    
}

@end
