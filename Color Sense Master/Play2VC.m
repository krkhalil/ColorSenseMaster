//
//  Play2VC.m
//  Color Sense Master
//
//  Created by Macbook on 09/08/2019.
//  Copyright © 2019 TP. All rights reserved.
//

#import "Play2VC.h"
#import "SFDraggableDialogView.h"

@interface Play2VC () <SFDraggableDialogViewDelegate>

@end

@implementation Play2VC

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.navigationController.navigationBar.hidden = false;
    [self showDialogue:@"You have won"];
    
}

- (IBAction)b1Touched:(id)sender {
}

- (IBAction)b2Touched:(id)sender {
}

- (IBAction)b3Touched:(id)sender {
}

- (IBAction)b4Touched:(id)sender {
}

- (IBAction)b5Touched:(id)sender {
}

- (IBAction)b6Touched:(id)sender {
}

- (IBAction)b7Touched:(id)sender {
}

- (IBAction)b8Touched:(id)sender {
}

- (IBAction)b9Touched:(id)sender {
}


- (void) showDialogue:(NSString *) text
{
    SFDraggableDialogView *dialogView = [[[NSBundle mainBundle] loadNibNamed:@"SFDraggableDialogView" owner:self options:nil] firstObject];
    dialogView.frame = self.view.bounds;
    dialogView.photo = [UIImage imageNamed:@"face"];
    dialogView.delegate = self;
    dialogView.titleText = [[NSMutableAttributedString alloc] initWithString:@"Round is over"];
    dialogView.messageText = [self exampleAttributeString:text];
    dialogView.firstBtnText = [@"See results" uppercaseString];
    dialogView.dialogBackgroundColor = [UIColor whiteColor];
    dialogView.cornerRadius = 8.0;
    dialogView.backgroundShadowOpacity = 0.2;
    dialogView.hideCloseButton = true;
    dialogView.showSecondBtn = false;
    dialogView.contentViewType = SFContentViewTypeDefault;
    dialogView.firstBtnBackgroundColor = [UIColor colorWithRed:0.230 green:0.777 blue:0.316 alpha:1.000];
    [dialogView createBlurBackgroundWithImage:[self jt_imageWithView:self.view] tintColor:[[UIColor blackColor] colorWithAlphaComponent:0.35] blurRadius:60.0];
    
    [self.view addSubview:dialogView];
}

- (NSMutableAttributedString *)exampleAttributeString:(NSString *)text
{
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:text];
    [attributedString addAttribute:NSFontAttributeName value:[UIFont boldSystemFontOfSize:21.0] range:NSMakeRange(9, 3)];
    [attributedString addAttribute:NSForegroundColorAttributeName value:[UIColor colorWithRed:0.230 green:0.777 blue:0.316 alpha:1.000] range:NSMakeRange(9, 3)];
    return attributedString;
}

#pragma mark - SFDraggableDialogViewDelegate
- (void)draggableDialogView:(SFDraggableDialogView *)dialogView didPressFirstButton:(UIButton *)firstButton
{
    [self.navigationController popViewControllerAnimated:YES];
    NSLog(@"The first button pressed");
}

- (void)draggingDidBegin:(SFDraggableDialogView *)dialogView
{
    NSLog(@"Dragging has begun");
}

- (void)draggingDidEnd:(SFDraggableDialogView *)dialogView
{
    [self.navigationController popViewControllerAnimated:YES];
    NSLog(@"Dragging did end");
}

- (void)draggableDialogViewWillDismiss:(SFDraggableDialogView *)dialogView
{
    NSLog(@"Will be dismissed");
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)draggableDialogViewDismissed:(SFDraggableDialogView *)dialogView
{
    NSLog(@"Dismissed");
    [self.navigationController popViewControllerAnimated:YES];
}

#pragma mark - Snapshot
- (UIImage *)jt_imageWithView:(UIView *)view
{
    CGFloat scale = [[UIScreen mainScreen] scale];
    UIGraphicsBeginImageContextWithOptions(view.bounds.size, NO, scale);
    [view drawViewHierarchyInRect:view.bounds afterScreenUpdates:true];
    UIImage * image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

@end
