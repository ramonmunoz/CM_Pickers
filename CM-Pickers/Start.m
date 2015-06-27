//
//  ViewController.m
//  CM-Pickers
//
//  Created by Walter Gonzalez Domenzain on 27/06/15.
//  Copyright (c) 2015 Smartplace. All rights reserved.
//

#import "Start.h"

#define     nInitialStates      @"Jalisco", @"Sinaloa",@"Sonora",@"Nayarit",@"Michoacán",nil
#define     nInitialAmerica     @"Mexico", @"Guatemala",@"Sonora",@"Nayarit",@"Michoacán",nil

NSMutableArray  *maStates;
NSString        *stSelectedState;

@interface Start ()

@end

@implementation Start
/**********************************************************************************************/
#pragma mark - Initialization methods
/**********************************************************************************************/
- (void)viewDidLoad {
    [super viewDidLoad];
    [self initController];
}
//------------------------------------------------------------------
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//------------------------------------------------------------------
- (void)initController {
    maStates    = [NSMutableArray arrayWithObjects: nInitialStates];
}
/**********************************************************************************************/
#pragma mark - Action methods
/**********************************************************************************************/
- (IBAction)btnDatePressed:(id)sender
{
    NSDate *myDate                  = self.pickerDate.date;
    NSDateFormatter *dateFormat     = [[NSDateFormatter alloc] init];
    //[dateFormat setDateFormat:@"cccc, d MMMM, hh:mm aa"];
    [dateFormat setDateFormat:@"dd/MM/YY hh:mm"];
    NSString *stDate                = [dateFormat stringFromDate:myDate];
    NSString *stInitialTxt          = @"La fecha seleccionada es: ";
    self.lblResult.text             = [stInitialTxt stringByAppendingString:stDate];
    self.lblResult.adjustsFontSizeToFitWidth = YES;
}
//------------------------------------------------------------------
- (IBAction)btnStatePressed:(id)sender {
    self.lblResult.text = stSelectedState;
}
/**********************************************************************************************/
#pragma mark - Picker view methods
/**********************************************************************************************/
- (NSInteger)numberOfComponentsInPickerView: (UIPickerView *)pickerView {
    return 1;
}
//------------------------------------------------------------------
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    return maStates.count;
}
//------------------------------------------------------------------
- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    return maStates[row];
}
//------------------------------------------------------------------
- (CGFloat)pickerView:(UIPickerView *)pickerView rowHeightForComponent:(NSInteger)component {
    return 40;
}
//------------------------------------------------------------------
-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    NSLog(@"Picker");
    if (pickerView == self.pickerStates)
    {
        stSelectedState = maStates[row];
    }
}














@end
