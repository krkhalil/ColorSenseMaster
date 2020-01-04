//
//  ViewController.m
//  Color Sense Master
//
//  Created by Macbook on 08/08/2019.
//  Copyright © 2019 TP. All rights reserved.
//

#import "ViewController.h"
#import "Play1VC.h"
#import "Play2VC.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.navigationController.navigationBar.hidden = true;
}

- (void)viewWillAppear:(BOOL)animated
{
    self.navigationController.navigationBar.hidden = true;
}

- (IBAction)findDifferenceButtonTouched:(id)sender
{
    Play1VC * v = [self.storyboard instantiateViewControllerWithIdentifier:@"Play1VC"];
    [self.navigationController pushViewController:v animated:YES];
}

- (IBAction)brainAndColorButtonTouched:(id)sender
{
    
}

- (IBAction)tenSecondChalllangeButtonTouched:(id)sender
{
    
}


@end
