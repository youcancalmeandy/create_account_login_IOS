//
//  NWCreateAccountViewController.m
//  NSUserDefaults, Segues and Protocols Challenge Solution
//
//  Created by Nicholas Wargnier on 10/29/13.
//  Copyright (c) 2013 Nicholas Wargnier. All rights reserved.
//

#import "NWCreateAccountViewController.h"

@interface NWCreateAccountViewController ()

@end

@implementation NWCreateAccountViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)createAccountButtonPressed:(UIButton *)sender
{
    if (self.usernameTextField.text != nil && self.passwordTextField.text != nil && [self.passwordTextField.text isEqualToString:self.confirmPasswordTextField.text]) {
        
        [[NSUserDefaults standardUserDefaults] setObject:self.usernameTextField.text forKey:USERNAME];
        [[NSUserDefaults standardUserDefaults] setObject:self.passwordTextField.text forKey:PASSWORD];
        [[NSUserDefaults standardUserDefaults] synchronize];
        [self.delegate didCreateAccount];
    } else {
        
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Error" message:@"Information not entered correctly" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles: nil];
        [alertView show];
    }


}

- (IBAction)cancelButtonPressed:(UIButton *)sender
{
    [self.delegate didCancel];
}
@end
