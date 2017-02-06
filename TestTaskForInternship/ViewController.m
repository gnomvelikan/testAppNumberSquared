//
//  ViewController.m
//  TestTaskForInternship
//
//  Created by Nikolay on 22/01/2017.
//  Copyright © 2017 GnomVelikan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic, assign) long int originalNumber;
@property (nonatomic, assign) long int changedNumber;
@property (nonatomic, assign) long int numberOfCounts;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




#pragma mark - Actions

- (IBAction)numberTextChanged:(CustomTextField *)sender {
    
    self.originalNumber = [sender.text intValue];
    NSLog(@"Юзер ввел число: %li", self.originalNumber);

}


- (IBAction)actionCount:(UIButton *)sender {
    
    NKCalculations* calculations = [[NKCalculations alloc] init];
    [calculations calculationsWith:self.originalNumber];
    
    NSLog(@"Измененное число: %li", calculations.changedNumber);
    
    self.changedNumber = calculations.changedNumber;
    NSLog(@"Измененное число: %li", self.changedNumber);
    
    self.resultLabel.text = [NSString stringWithFormat:@"%li", self.changedNumber];
    
    
    self.numberOfCounts ++;
    NSLog(@"Счетчик расчетов =: %li", self.numberOfCounts);
    
    self.resultCountLabel.text = [NSString stringWithFormat:@"%li", self.numberOfCounts];

    
}



- (IBAction)actionRestart:(UIButton *)sender {
    self.resultCountLabel.text = @"#111";
    self.resultLabel.text = @"результат";
    self.numberField.text = nil;
    
    self.numberOfCounts = 0;
    NSLog(@"Количество расчетов = %li", self.numberOfCounts);
    self.resultCountLabel.text = @"#";
    [self.numberField resignFirstResponder];

}








@end
