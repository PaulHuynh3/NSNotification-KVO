//
//  FirstViewController.m
//  NSNotification Center & KVO
//
//  Created by Paul on 2017-09-16.
//  Copyright © 2017 Paul. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()
@property (weak, nonatomic) IBOutlet UIStepper *stepper;



@end

@implementation FirstViewController

- (IBAction)stepperTpped:(UIStepper *)sender {
    
    NSNotificationCenter *notificationCenter = [NSNotificationCenter defaultCenter];
    
    
    NSDictionary *dictionary = [[NSDictionary alloc]initWithObjectsAndKeys: notificationCenter,@(self.stepper.value), nil];
    
    NSNotification *notification = [[NSNotification alloc]initWithName:@"countStep" object:self.stepper userInfo:dictionary];
    

    
    
    /* 
Now post the notification using NSNotificationCenter's method - (void)postNotification:(NSNotification *)notification;. You can see that this is an instance method. It is called on the NSNotificationCenter's instance. You pass it the NSNotification you created.
     
     */
-(void)postNotification:(NSNotification*)notification{
    
    
    }
    
}



@end
