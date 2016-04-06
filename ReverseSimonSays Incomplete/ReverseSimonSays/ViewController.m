//
//  ViewController.m
//  ReverseSimonSays
//
//  Created by António Lima on 05/04/16.
//  Copyright © 2016 António Lima. All rights reserved.
//

#import "ViewController.h"

#define DEFAULT_TEXT @"Press a button to change my color"
#define DEFAULT_COLOR [UIColor blackColor]

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
    
    // Make a path to the PList in the Documents directory
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDirectory = [paths objectAtIndex:0];
    NSString *myPListPath = [documentsDirectory stringByAppendingPathComponent:@"MyPList.plist"];
    
    // Reading from the PList
    NSDictionary *myValues = [NSDictionary dictionaryWithContentsOfFile:myPListPath];
    
    // if no data is read
    if( ![myValues count] ){
        
        // UIColor cannot be stored in a plist directly as it doesn't extend NSData
        NSData *colorData = [NSKeyedArchiver archivedDataWithRootObject:DEFAULT_COLOR];
        myValues = @{ @"text": DEFAULT_TEXT, @"colorData": colorData};
    }
    
    // converting the NSData to a UIColor again
    UIColor *color = [NSKeyedUnarchiver unarchiveObjectWithData:myValues[@"colorData"]];
    [self changeLabelAndSaveColor:color andText:myValues[@"text"]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)resetButtonPressed:(id)sender {
    [self changeLabelAndSaveColor:DEFAULT_COLOR andText:DEFAULT_TEXT];
}

-(IBAction)redButtonPressed:(id)sender{
    [self changeLabelAndSaveColor:[UIColor redColor] andText:@"Red"];
}

- (IBAction)greenButtonPressed:(id)sender {
    [self changeLabelAndSaveColor:[UIColor greenColor] andText:@"Green"];
}

- (IBAction)blueButtonPressed:(id)sender {
    [self changeLabelAndSaveColor:[UIColor blueColor] andText:@"Blue"];
}

-(void)changeLabelAndSaveColor:(UIColor*) color andText:(NSString*) text{
    
    // change Label appearance
    [_myLabel setTextColor:color];
    [_myLabel setText:text];
    
    // UIColor cannot be stored in a plist directly as it doesn't extend NSData
    NSData *colorData = [NSKeyedArchiver archivedDataWithRootObject:color];
    NSDictionary *myValues = myValues = @{ @"text": text, @"colorData": colorData};
    
    // Make a path to the PList in the Documents directory
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDirectory = [paths objectAtIndex:0];
    NSString *myPListPath = [documentsDirectory stringByAppendingPathComponent:@"MyPList.plist"];
    
    // Write your dictionary out to the PList in the Documents directory
    if (![myValues writeToFile:myPListPath atomically:YES]) {
        NSLog(@"Oops, this shouldn't happen...");
    }
    
}

@end
