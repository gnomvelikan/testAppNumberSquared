//
//  NKCalculations.h
//  TestTaskForInternship
//
//  Created by N.Kamenshchikov on 01/02/2017.
//  Copyright © 2017 GnomVelikan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NKCalculations : NSObject

#pragma mark - Properties
@property (nonatomic, assign) long int originalNumber;
@property (nonatomic, assign) long int changedNumber;
//@property (nonatomic, assign) long int numberOfCounts;

#pragma mark - Methods
-(long int) calculationsWith:(long int) number;


@end
