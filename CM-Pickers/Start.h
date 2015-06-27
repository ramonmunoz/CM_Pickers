//
//  ViewController.h
//  CM-Pickers
//
//  Created by Walter Gonzalez Domenzain on 27/06/15.
//  Copyright (c) 2015 Smartplace. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Start : UIViewController

//Objects
@property (strong, nonatomic) IBOutlet UIDatePicker *pickerDate;
@property (strong, nonatomic) IBOutlet UIButton *btnDate;
@property (strong, nonatomic) IBOutlet UILabel *lblResult;

//Action
- (IBAction)btnDatePressed:(id)sender;

@end

