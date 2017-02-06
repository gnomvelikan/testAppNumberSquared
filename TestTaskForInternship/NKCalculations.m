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
    
    if (number == 0){
        self.changedNumber = 0;
    } else {
    
    
    long int n = number;
    long int sum = 0;
    long int i = 1;
    long int k = 1;
    
    do {
        sum = sum + k;
        
        k = k + 2;
        
        i++;
        
    } while (i <= n);
    
    self.changedNumber = sum;
    }
        
    NSLog(@"Метод калькуляции закончил работу, измененное число = %li", self.changedNumber);

    return self.changedNumber;
    
}


@end
