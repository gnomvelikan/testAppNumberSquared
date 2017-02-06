//
//  CustomTextField.m
//  TestTaskForInternship
//
//  Created by N.Kamenshchikov on 25/01/2017.
//  Copyright © 2017 GnomVelikan. All rights reserved.
//

#import "CustomTextField.h"

@implementation CustomTextField

-(BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
    // Returning 'NO' here disables all actions on textfield
    return NO;
}

@end
