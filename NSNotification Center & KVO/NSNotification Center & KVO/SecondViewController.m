//
//  SecondViewController.m
//  NSNotification Center & KVO
//
//  Created by Paul on 2017-09-16.
//  Copyright © 2017 Paul. All rights reserved.
//

#import "SecondViewController.h"
#import "FirstViewController.h"

@interface SecondViewController ()
@property (weak, nonatomic) IBOutlet UILabel *countLabel;

@end

@implementation SecondViewController

-(void)viewDidLoad{
    NSNotificationCenter *notificationCenter = [NSNotificationCenter defaultCenter];
    
     [notificationCenter addObserver:self selector:@selector(notificationHandler:) name:@"notificationStep" object:nil];
    
}



-(void)notificationHandler:(NSNotification*)notification {
    
    //Inside the selector method use the parameter to access the userInfo dictionary. Grab the value using the key you set. The value with be an NSNumber wrapping a double.
    
    //.userinfo pulls out information from the NSNotificationDictionary.
    NSDictionary *dictionary = notification.userInfo;
    NSNumber *countSteps = dictionary[@"stepperValue"];
    
    //another way to retrieve information from dictionary
   // NSNumber *numberOfSteps =[self.firstViewController.dictionary objectForKey:@"stepperValue"];

    self.countLabel.text = [NSString stringWithFormat:@"%@", countSteps];
    
}

//-(void)dealloc {
//    [[NSNotificationCenter defaultCenter] removeObserver:self];
//}

@end
