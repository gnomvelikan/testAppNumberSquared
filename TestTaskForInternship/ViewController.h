//
//  ViewController.h
//  TestTaskForInternship
//
//  Created by Nikolay on 22/01/2017.
//  Copyright © 2017 GnomVelikan. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CustomTextField;

@interface ViewController : UIViewController

//properties
@property (weak, nonatomic) IBOutlet CustomTextField *numberField;
@property (weak, nonatomic) IBOutlet UILabel *resultCountLabel;
@property (weak, nonatomic) IBOutlet UILabel *resultLabel;

//actions
- (IBAction)actionCount:(UIButton *)sender;
- (IBAction)actionRestart:(UIButton *)sender;




@end

