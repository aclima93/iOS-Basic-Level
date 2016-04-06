//
//  ViewController.m
//  CameraProxy
//
//  Created by António Lima on 04/04/16.
//  Copyright © 2016 António Lima. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

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

- (IBAction)takePhoto:(UIButton *)sender {

    // TODO
    
}


- (IBAction)selectPhoto:(UIButton *)sender {
    
    // TODO
    
}

#pragma mark - Image Picker Controller delegate methods

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info {
    
    // TODO
    
}

- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker {
    
    [picker dismissViewControllerAnimated:YES completion:NULL];
}


-(void)showMyAlertWithTitle:(NSString*) alertTitle andMessage:(NSString*) alertMessage{
    
    NSString *alertOkButtonText = @"Ok";
    
    if ([UIAlertController class] == nil) { //[UIAlertController class] returns NO on iOS 7 and older. You can use whatever method you want to check that the system version is iOS 8+
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:alertTitle
                                                            message:alertMessage
                                                           delegate:nil
                                                  cancelButtonTitle:nil
                                                  otherButtonTitles:alertOkButtonText, nil];
        [alertView show];
    }
    else {
        UIAlertController *alertController = [UIAlertController alertControllerWithTitle:alertTitle
                                                                                 message:alertMessage
                                                                          preferredStyle:UIAlertControllerStyleAlert];
        //We add buttons to the alert controller by creating UIAlertActions:
        UIAlertAction *actionOk = [UIAlertAction actionWithTitle:alertOkButtonText
                                                           style:UIAlertActionStyleDefault
                                                         handler:nil]; //You can use a block here to handle a press on this button
        [alertController addAction:actionOk];
        [[[[UIApplication sharedApplication] keyWindow] rootViewController] presentViewController:alertController animated:YES completion:nil];
    }
}

@end
