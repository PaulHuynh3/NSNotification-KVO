//
//  FirstViewController.m
//  NSNotification Center & KVO
//
//  Created by Paul on 2017-09-16.
//  Copyright © 2017 Paul. All rights reserved.
//

#import "FirstViewController.h"
#import "SecondViewController.h"

@interface FirstViewController ()
@property (weak, nonatomic) IBOutlet UIStepper *stepper;

@end

@implementation FirstViewController


-(void)viewDidLoad{
}



- (IBAction)stepperTpped:(UIStepper *)sender {
    
    
//    NSDictionary *dictionary = [[NSDictionary alloc]initWithObjectsAndKeys: @"stepperValue",@(self.stepper.value), nil];
    
    //use this dictionary method instead of the above.. the above return null.
    NSDictionary *dictionary = @{@"stepperValue": @(self.stepper.value)};
    
    NSNotificationCenter *notificationCenter = [NSNotificationCenter defaultCenter];
    
    NSNotification *notification = [[NSNotification alloc]initWithName:@"notificationStep" object:self userInfo:dictionary];
    
    [notificationCenter postNotification:notification];
    
}





@end
