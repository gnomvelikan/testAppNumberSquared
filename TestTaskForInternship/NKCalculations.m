//
//  NKCalculations.m
//  TestTaskForInternship
//
//  Created by N.Kamenshchikov on 01/02/2017.
//  Copyright © 2017 GnomVelikan. All rights reserved.
//

#import "NKCalculations.h"

@implementation NKCalculations

-(long int) calculationsWith:(long int) number{
    
    NSLog(@"Метод калькуляции запущен, введенное число = %li", number);
    
    NSInteger changedNumber = 0;
    
    if (number != 0) {
        long int n = number;
        long int sum = 0;
        long int i = 1;
        long int k = 1;
        
        do {
            sum = sum + k;
            
            k = k + 2;
            
            i++;
            
        } while (i <= n);
        
        changedNumber = sum;
    }
        
    NSLog(@"Метод калькуляции закончил работу, измененное число = %@", @(changedNumber));

    self.numberOfCounts++;
    
    return changedNumber;
}

- (void)restart
{
    self.numberOfCounts = 0;
}


@end
