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

- (IBAction)segueMeForward:(id)sender {
    [self performSegueWithIdentifier:@"Dumber2Dumb" sender:nil];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"Dumber2Dumb"]) {
        DumbViewController *controller = (DumbViewController *)segue.destinationViewController;
        controller->myString = _myTextField.text;
    }
}

@end
