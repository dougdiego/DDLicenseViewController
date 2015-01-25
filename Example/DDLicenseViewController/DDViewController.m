//
// DDViewController.m
//
// Copyright (c) 2014 Doug Diego
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.

#import "DDViewController.h"
#import "DDLicensesViewController.h"
#import "DDLicense.h"

@interface DDViewController ()

@end

@implementation DDViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)licensesButtonPressed:(id)sender {
    
    // Load Licenses1 from a plist
    NSString *path = [[NSBundle mainBundle] pathForResource: @"Licenses1" ofType:@"plist"];
    NSArray * licenses = [[NSArray alloc] initWithContentsOfFile:path];
    NSArray * ddLicenses = [DDLicense licenseArrayFromDictionaryArray: licenses];
    
    DDLicensesViewController * vc = [[DDLicensesViewController alloc] init];
    vc.title = @"Licenses";
    vc.licenses = ddLicenses;
    
    // Optional: license list font
    vc.licenseListFont = [UIFont fontWithName:@"HelveticaNeue-Light" size:17];
    
     // Optional: license font
    vc.licenseFont = [UIFont fontWithName:@"Courier" size:17];
    
    // Optional: Back button
    vc.backButtonImage = [UIImage imageNamed:@"navbar_back"];
    
    // Add close button to navigation bar
    vc.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemStop
                                                                                        target:self
                                                                                        action:@selector(closeButtonAction:)];
    
    // Put DDLicensesViewController in a UINavigationController and show
    UINavigationController * nvc = [[UINavigationController alloc] initWithRootViewController:vc];
    [self presentViewController:nvc animated:YES completion:nil];
}

- (void) closeButtonAction: (id) sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}


@end
