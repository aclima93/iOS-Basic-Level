//
//  ViewController.m
//  SpamBot
//
//  Created by António Lima on 05/04/16.
//  Copyright © 2016 António Lima. All rights reserved.
//

#import "DumbViewController.h"

@implementation DumbViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [_myLabel setText:myString];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)segueMeBack:(id)sender {
    [self performSegueWithIdentifier:@"Dumb2Dumber" sender:nil];
}

- (IBAction)sendSpam:(id)sender {

    if ([MFMailComposeViewController canSendMail]){
        
        MFMailComposeViewController *mail = [[MFMailComposeViewController alloc] init];
        mail.mailComposeDelegate = self;
        
        // passing data to the email composer
        [mail setSubject:@"!! Viagra 50% off !! *wink*"];
        [mail setMessageBody:myString isHTML:NO];
        [mail setToRecipients:@[@"aclspam@hotmail.com"]];

        [self presentViewController:mail animated:YES completion:NULL];
    }
    else{
        
        NSLog(@"This device cannot send email");
    }

}

- (void)mailComposeController:(MFMailComposeViewController *)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error{
    
    switch (result) {
        case MFMailComposeResultSent:
            NSLog(@"You sent the email.");
            break;
        case MFMailComposeResultSaved:
            NSLog(@"You saved a draft of this email");
            break;
        case MFMailComposeResultCancelled:
            NSLog(@"You cancelled sending this email.");
            break;
        case MFMailComposeResultFailed:
            NSLog(@"Mail failed: An error occurred when trying to compose this email");
            break;
        default:
            NSLog(@"An error occurred when trying to compose this email");
            break;
    }
    
    [self dismissViewControllerAnimated:YES completion:NULL];
}

@end
