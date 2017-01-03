//
//  EventNameField.m
//  Calendar_test
//
//  Created by Kif on 31.12.16.
//  Copyright © 2016 KifApp. All rights reserved.
//

#import "KFEventNameField.h"
#import "QuartzCore/QuartzCore.h"

@interface KFEventNameField ()

@end

@implementation KFEventNameField

- (id) init {

    self = [super init];

    return self;

}

-(CGRect)textRectForBounds:(CGRect)bounds {

    return CGRectMake(bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height - 2);
}
-(CGRect)editingRectForBounds:(CGRect)bounds {

    return [self textRectForBounds:bounds];
}

@end
