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
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)createAccountBarButtonItemPressed:(UIBarButtonItem *)sender
{
    [self performSegueWithIdentifier:@"toCreateAccountViewControllerSegue" sender:sender];
}

- (IBAction)loginButtonPressed:(UIButton *)sender
{
    [self performSegueWithIdentifier:@"toViewControllerSegue" sender:sender];
}

-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    
}

@end
