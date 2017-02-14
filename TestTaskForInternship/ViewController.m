//
//  ViewController.m
//  TestTaskForInternship
//
//  Created by Nikolay on 22/01/2017.
//  Copyright © 2017 GnomVelikan. All rights reserved.
//

#import "ViewController.h"

#import "CustomTextField.h"
#import "NKCalculations.h"

@interface ViewController ()

@property (nonatomic, strong) NKCalculations* calculations;

@end

static NSString* kSettingsResult  = @"result";
static NSString* kSettingsCount   = @"count";





@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.calculations = [[NKCalculations alloc] init];
    [self loadSettings];
    
    if (self.calculations.numberOfCounts != 0) {
        self.resultCountLabel.text = [NSString stringWithFormat:@"%@", @(self.calculations.numberOfCounts)];
    }
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




#pragma mark - Actions

- (IBAction)actionCount:(UIButton *)sender {
    
    NSInteger originalNumber = [self.numberField.text integerValue];
    
    NSInteger changedNumber = [self.calculations calculationsWith:originalNumber];
    
    NSLog(@"Измененное число: %li", changedNumber);
    
    
    self.resultLabel.text = [NSString stringWithFormat:@"%li", changedNumber];
    
    
    NSLog(@"Счетчик расчетов =: %li", self.calculations.numberOfCounts);
    
    self.resultCountLabel.text = [NSString stringWithFormat:@"%li", self.calculations.numberOfCounts];
    
   [self saveSettings]; //сохраняем все значения


    
}



- (IBAction)actionRestart:(UIButton *)sender {
    self.resultLabel.text = @"результат";
    self.numberField.text = nil;
    
    [self.calculations restart];
    NSLog(@"Количество расчетов = %li", self.calculations.numberOfCounts);
    self.resultCountLabel.text = @"#";
    [self.numberField resignFirstResponder];
    
    
    [self restartSettings];

}



#pragma mark - Save and Load
- (void) saveSettings {
    NSUserDefaults* userDefaults = [NSUserDefaults standardUserDefaults];
    
    
    [userDefaults setObject:@(self.calculations.numberOfCounts) forKey:kSettingsCount];
    [userDefaults setObject:self.resultLabel.text forKey:kSettingsResult];
 
    [userDefaults synchronize];
    
}



- (void) loadSettings {
    
    NSUserDefaults* userDefaults = [NSUserDefaults standardUserDefaults];
    
    if ([userDefaults objectForKey:kSettingsResult] != nil) {
        self.resultLabel.text = [userDefaults objectForKey:kSettingsResult];
    }

    if ([userDefaults objectForKey:kSettingsCount] != nil) {
        self.calculations.numberOfCounts = [[userDefaults objectForKey:kSettingsCount] integerValue];
    }
    
}

- (void)restartSettings
{
    NSUserDefaults* userDefaults = [NSUserDefaults standardUserDefaults];
    
    [userDefaults removeObjectForKey:kSettingsCount];
    [userDefaults removeObjectForKey:kSettingsResult];
    
    [userDefaults synchronize];
}










@end
