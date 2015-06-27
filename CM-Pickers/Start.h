//
//  ViewController.h
//  CM-Pickers
//
//  Created by Walter Gonzalez Domenzain on 27/06/15.
//  Copyright (c) 2015 Smartplace. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <iAd/iAd.h>

@interface Start : UIViewController<UIPickerViewDataSource, UIPickerViewDelegate, ADBannerViewDelegate> {
    ADBannerView *adView;
    BOOL bannerIsVisible;
}
//Objects
@property (strong, nonatomic) IBOutlet UIDatePicker *pickerDate;
@property (strong, nonatomic) IBOutlet UIButton *btnDate;
@property (strong, nonatomic) IBOutlet UILabel *lblResult;
@property (strong, nonatomic) IBOutlet UIPickerView *pickerStates;

//Action
- (IBAction)btnDatePressed:(id)sender;
- (IBAction)btnStatePressed:(id)sender;

@end

