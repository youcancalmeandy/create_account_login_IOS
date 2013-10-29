//
//  NWSignInViewController.m
//  NSUserDefaults, Segues and Protocols Challenge Solution
//
//  Created by Nicholas Wargnier on 10/29/13.
//  Copyright (c) 2013 Nicholas Wargnier. All rights reserved.
//

#import "NWSignInViewController.h"

@interface NWSignInViewController ()

@end

@implementation NWSignInViewController

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

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];

}

#pragma mark - IBActions

- (IBAction)createAccountBarButtonItemPressed:(UIBarButtonItem *)sender
{
    [self performSegueWithIdentifier:@"toCreateAccountViewControllerSegue" sender:sender];
}

- (IBAction)loginButtonPressed:(UIButton *)sender
{
    NSString *username = [[NSUserDefaults standardUserDefaults] objectForKey:USERNAME];
    NSString *password = [[NSUserDefaults standardUserDefaults] objectForKey:PASSWORD];
    
    if ([self.usernameTextField.text isEqualToString:username] && [self.passwordTextField.text isEqualToString:password]) {
        [self performSegueWithIdentifier:@"toViewControllerSegue" sender:sender];
    } else {
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Error" message:@"Incorrect Username/Password Combination" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles: nil];
        [alertView show];
    }
    
    
}

#pragma mark - PrepareForSegue

-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.destinationViewController isKindOfClass:[NWCreateAccountViewController class]]) {
        NWCreateAccountViewController *createAccountVC = segue.destinationViewController;
        createAccountVC.delegate = self;
    }
}

#pragma mark - NWCreateViewControllerDelegate

-(void)didCancel
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

-(void)didCreateAccount
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
