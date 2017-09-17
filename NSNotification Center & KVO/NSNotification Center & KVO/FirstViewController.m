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
    self.dictionary = [[NSDictionary alloc]initWithObjectsAndKeys: @"stepperValue",@(self.stepper.value), nil];
    
    NSNotificationCenter *notificationCenter = [NSNotificationCenter defaultCenter];
    NSNotification *notification = [[NSNotification alloc]initWithName:@"steps" object:self userInfo:self.dictionary];
    
    [notificationCenter postNotification:notification];
    
}





@end
