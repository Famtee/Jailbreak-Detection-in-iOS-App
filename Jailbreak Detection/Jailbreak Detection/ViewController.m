//
//  ViewController.m
//  Jailbreak Detection
//
//  Created by Billy Ellis on 12/03/2016.
//  Copyright © 2016 Billy Ellis. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)jailbreakTestMethod:(id)sender {
    
    NSString *filePath = @"/Applications/Cydia.app";
    if ([[NSFileManager defaultManager] fileExistsAtPath:filePath])
    {
        UIAlertView *jbAlert = [[UIAlertView alloc]initWithTitle:@"Device" message:@"This device is jailbroken" delegate:self cancelButtonTitle:@"Dismiss" otherButtonTitles:nil];
        [jbAlert show];
    }
    else {
        UIAlertView *Alert = [[UIAlertView alloc]initWithTitle:@"Device" message:@"This device is not jailbroken" delegate:self cancelButtonTitle:@"Dismiss" otherButtonTitles:nil];
        [Alert show];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
