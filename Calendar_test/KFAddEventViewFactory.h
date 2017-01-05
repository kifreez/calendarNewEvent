//
//  KFAddEventViewFactory.h
//  Calendar_test
//
//  Created by Kif on 05.01.17.
//  Copyright © 2017 KifApp. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface KFAddEventViewFactory : NSObject

+(UILabel *)cFirstBackground;
+(UILabel *)cSecondBackground;
+(UIButton *)cancelButton;
+(UIButton *)doneButton;
+(UIView *)logoView;
+(UILabel *)logoLetter;
+(UILabel *)eventLabel;
+(UITextField *)eventNameField;
+(UIView *)bodyView;
+(UILabel *)monthNameLabel;
+(UILabel *)dayOfWeekNameLabel;
+(UILabel *)timeLabel;
+(UIButton *)thirtyMinuteButton;
+(UIButton *)fifteenMinuteButton;
+(UIButton *)oneHourButton;
+(UIButton *)oneDayButton;
+(UIButton *)moreButton;
+(UIButton *)eventProfileButton;

@end
