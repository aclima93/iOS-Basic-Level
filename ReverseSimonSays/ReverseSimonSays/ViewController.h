//
//  ViewController.h
//  ReverseSimonSays
//
//  Created by António Lima on 05/04/16.
//  Copyright © 2016 António Lima. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

- (IBAction)resetButtonPressed:(id)sender;

-(IBAction)redButtonPressed:(id)sender;

- (IBAction)greenButtonPressed:(id)sender;

- (IBAction)blueButtonPressed:(id)sender;

-(void)changeLabelAndSaveColor:(UIColor*) color andText:(NSString*) text;

@end

