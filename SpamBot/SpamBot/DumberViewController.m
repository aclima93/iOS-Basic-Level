//
//  DumberViewController.m
//  SpamBot
//
//  Created by António Lima on 06/04/16.
//  Copyright © 2016 António Lima. All rights reserved.
//

#import "DumberViewController.h"

@implementation DumberViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)segueMeAway:(id)sender {
    [self performSegueWithIdentifier:@"Dumber2Dumb" sender:nil];
}

@end
