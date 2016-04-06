//
//  ViewController.m
//  ReverseSimonSays
//
//  Created by António Lima on 05/04/16.
//  Copyright © 2016 António Lima. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *myLabel;
@property (weak, nonatomic) IBOutlet UIButton *resetButton;
@property (weak, nonatomic) IBOutlet UIButton *redButton;
@property (weak, nonatomic) IBOutlet UIButton *greenButton;
@property (weak, nonatomic) IBOutlet UIButton *blueButton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)resetButtonPressed:(id)sender {
    [_myLabel setText:@"Press a button to change my color"];
    [_myLabel setBackgroundColor:[UIColor whiteColor]];
}

-(IBAction)redButtonPressed:(id)sender{
    [_myLabel setText:@"Red"];
    [_myLabel setBackgroundColor:[UIColor redColor]];
}

- (IBAction)greenButtonPressed:(id)sender {
    [_myLabel setText:@"Green"];
    [_myLabel setBackgroundColor:[UIColor greenColor]];
}

- (IBAction)blueButtonPressed:(id)sender {
    [_myLabel setText:@"Blue"];
    [_myLabel setBackgroundColor:[UIColor blueColor]];
}

-(void)changeLabelColor:(UIColor*) color andText:(NSString*) text{
    
    [_myLabel setTextColor:color];
    [_myLabel setText:text];
}

@end
