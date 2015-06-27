//
//  ViewController.m
//  CM-Pickers
//
//  Created by Walter Gonzalez Domenzain on 27/06/15.
//  Copyright (c) 2015 Smartplace. All rights reserved.
//

#import "Start.h"

@interface Start ()

@end

@implementation Start
/**********************************************************************************************/
#pragma mark - Initialization methods
/**********************************************************************************************/
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
/**********************************************************************************************/
#pragma mark - Action methods
/**********************************************************************************************/
- (IBAction)btnDatePressed:(id)sender
{
    NSDate *myDate                  = self.pickerDate.date;
    NSDateFormatter *dateFormat     = [[NSDateFormatter alloc] init];
    //[dateFormat setDateFormat:@"cccc, MMMM d, hh:mm aa"];
    [dateFormat setDateFormat:@"dd/MM/YY"];
    NSString *stDate                = [dateFormat stringFromDate:myDate];
    self.lblResult.text             = stDate;
}















@end
