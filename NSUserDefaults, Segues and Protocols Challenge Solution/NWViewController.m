//
//  NWViewController.m
//  NSUserDefaults, Segues and Protocols Challenge Solution
//
//  Created by Nicholas Wargnier on 10/29/13.
//  Copyright (c) 2013 Nicholas Wargnier. All rights reserved.
//

#import "NWViewController.h"
#import "NWCreateAccountViewController.h"

@interface NWViewController ()

@end

@implementation NWViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.usernameLabel.text = [[NSUserDefaults standardUserDefaults] objectForKey:USERNAME];
    self.passwordLabel.text = [[NSUserDefaults standardUserDefaults] objectForKey:PASSWORD];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
