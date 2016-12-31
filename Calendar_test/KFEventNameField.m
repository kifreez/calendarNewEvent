//
//  EventNameField.m
//  Calendar_test
//
//  Created by Kif on 31.12.16.
//  Copyright © 2016 KifApp. All rights reserved.
//

#import "KFEventNameField.h"

@interface KFEventNameField ()

@end

@implementation KFEventNameField

- (id) init {

    self = [super init];

    if (self != nil) {

        self.borderStyle = UITextBorderStyleRoundedRect;
        self.backgroundColor = [UIColor whiteColor];
        self.placeholder = @"Add name for event";
    }

    return self;

}

@end
