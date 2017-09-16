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

-(void)viewDidLoad{


    
}

- (IBAction)stepperTpped:(UIStepper *)sender {
    
    NSNotificationCenter *notificationCenter = [NSNotificationCenter defaultCenter];
    
    NSDictionary *dictionary = [[NSDictionary alloc]initWithObjectsAndKeys: @"stepperValue",@(self.stepper.value), nil];
    
    NSNotification *notification = [[NSNotification alloc]initWithName:@"stepperValue" object:self.stepper userInfo:dictionary];
    

    [notificationCenter postNotification:notification];
    

}





@end
