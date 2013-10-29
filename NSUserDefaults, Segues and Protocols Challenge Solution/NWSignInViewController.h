//
//  NWSignInViewController.h
//  NSUserDefaults, Segues and Protocols Challenge Solution
//
//  Created by Nicholas Wargnier on 10/29/13.
//  Copyright (c) 2013 Nicholas Wargnier. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NWSignInViewController : UIViewController

@property (strong, nonatomic) IBOutlet UITextField *usernameTextField;
@property (strong, nonatomic) IBOutlet UITextField *passwordTextField;

- (IBAction)createAccountBarButtonItemPressed:(UIBarButtonItem *)sender;
- (IBAction)loginButtonPressed:(UIButton *)sender;
@end
