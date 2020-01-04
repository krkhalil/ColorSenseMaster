//
//  Play1VC.m
//  Color Sense Master
//
//  Created by Macbook on 09/08/2019.
//  Copyright © 2019 TP. All rights reserved.
//

#import "Play1VC.h"
#import "SFDraggableDialogView.h"

@interface Play1VC () <SFDraggableDialogViewDelegate>
{
    NSMutableArray *dataArray;
    NSMutableDictionary * data;
    
    int random;
    
    NSString * selected;
    NSString * answer;
    NSString * type;
    NSMutableDictionary * selectedData;
    
    NSTimer * t;
    int timer;
    
    int count;
    int score;
    int level;
}

@end

@implementation Play1VC

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.navigationController.navigationBar.hidden = false;
    //[self showDialogue:@"You have won"];
    
    score = 0;
    count = 0;
    level = 0;
    
    timer = 60;
    
    t = [NSTimer scheduledTimerWithTimeInterval: 1.0
                                         target: self
                                       selector:@selector(timerLabel:)
                                       userInfo: nil repeats:YES];
    
    [self setArray];
    [self setScreen];
}

-(void)timerLabel:(NSTimer *)timer1
{

    timer=timer-1;
    _timerLabel.text = [NSString stringWithFormat:@"%d",timer];
    
    if(timer==0 && count < 10)
    {
        
        [self setScreen];
    }
    else if(timer==0 && count == 10)
    {
        [t invalidate];
        [self showDialogue:@"You have lost"];
    }
}

- (IBAction)b1Touched:(id)sender
{
    if ([type isEqualToString:@"text"])
    {
        if ([_b1.titleLabel.text isEqualToString:answer])
        {
            timer=60;
            score = score + 100;
            if(count == 10)
            {
                [self showDialogue:@"You have won"];
            }
            else
            {
                count = count + 1;
                [self setScreen];
            }
        }
        else
        {
            [self showDialogue:@"You have lost"];
        }
    }
    else if ([type isEqualToString:@"fontColor"])
    {
        if ([_b1.titleLabel.textColor isEqual:[self getColor:answer]])
        {
            timer=60;
            score = score + 100;
            if(count == 10)
            {
                [self showDialogue:@"You have won"];
            }
            else
            {
                count = count + 1;
                [self setScreen];
            }
        }
        else
        {
            [self showDialogue:@"You have lost"];
        }
    }
    else
    {
        if ([_b1.backgroundColor isEqual:[self getColor:answer]])
        {
            timer=60;
            score = score + 100;
            if(count == 10)
            {
                [self showDialogue:@"You have won"];
            }
            else
            {
                count = count + 1;
                [self setScreen];
            }
        }
        else
        {
            [self showDialogue:@"You have lost"];
        }
    }
}

- (IBAction)b2Touched:(id)sender
{
    if ([type isEqualToString:@"text"])
    {
        if ([_b2.titleLabel.text isEqualToString:answer])
        {
            timer=60;
            score = score + 100;
            if(count == 10)
            {
                [self showDialogue:@"You have won"];
            }
            else
            {
                count = count + 1;
                [self setScreen];
            }
        }
        else
        {
            [self showDialogue:@"You have lost"];
        }
    }
    else if ([type isEqualToString:@"fontColor"])
    {
        if ([_b2.titleLabel.textColor isEqual:[self getColor:answer]])
        {
            timer=60;
            score = score + 100;
            if(count == 10)
            {
                [self showDialogue:@"You have won"];
            }
            else
            {
                count = count + 1;
                [self setScreen];
            }
        }
        else
        {
            [self showDialogue:@"You have lost"];
        }
    }
    else
    {
        if ([_b2.backgroundColor isEqual:[self getColor:answer]])
        {
            timer=60;
            score = score + 100;
            if(count == 10)
            {
                [self showDialogue:@"You have won"];
            }
            else
            {
                count = count + 1;
                [self setScreen];
            }
        }
        else
        {
            [self showDialogue:@"You have lost"];
        }
    }
}

- (IBAction)b3Touched:(id)sender
{
    if ([type isEqualToString:@"text"])
    {
        if ([_b3.titleLabel.text isEqualToString:answer])
        {
            timer=60;
            score = score + 100;
            if(count == 10)
            {
                [self showDialogue:@"You have won"];
            }
            else
            {
                count = count + 1;
                [self setScreen];
            }
        }
        else
        {
            [self showDialogue:@"You have lost"];
        }
    }
    else if ([type isEqualToString:@"fontColor"])
    {
        if ([_b3.titleLabel.textColor isEqual:[self getColor:answer]])
        {
            timer=60;
            score = score + 100;
            if(count == 10)
            {
                [self showDialogue:@"You have won"];
            }
            else
            {
                count = count + 1;
                [self setScreen];
            }
        }
        else
        {
            [self showDialogue:@"You have lost"];
        }
    }
    else
    {
        if ([_b3.backgroundColor isEqual:[self getColor:answer]])
        {
            timer=60;
            score = score + 100;
            if(count == 10)
            {
                [self showDialogue:@"You have won"];
            }
            else
            {
                count = count + 1;
                [self setScreen];
            }
        }
        else
        {
            [self showDialogue:@"You have lost"];
        }
    }
}

- (IBAction)b4Touched:(id)sender
{
    if ([type isEqualToString:@"text"])
    {
        if ([_b4.titleLabel.text isEqualToString:answer])
        {
            timer=60;
            score = score + 100;
            if(count == 10)
            {
                [self showDialogue:@"You have won"];
            }
            else
            {
                count = count + 1;
                [self setScreen];
            }
        }
        else
        {
            [self showDialogue:@"You have lost"];
        }
    }
    else if ([type isEqualToString:@"fontColor"])
    {
        if ([_b4.titleLabel.textColor isEqual:[self getColor:answer]])
        {
            timer=60;
            score = score + 100;
            if(count == 10)
            {
                [self showDialogue:@"You have won"];
            }
            else
            {
                count = count + 1;
                [self setScreen];
            }
        }
        else
        {
            [self showDialogue:@"You have lost"];
        }
    }
    else
    {
        if ([_b4.backgroundColor isEqual:[self getColor:answer]])
        {
            timer=60;
            score = score + 100;
            if(count == 10)
            {
                [self showDialogue:@"You have won"];
            }
            else
            {
                count = count + 1;
                [self setScreen];
            }
        }
        else
        {
            [self showDialogue:@"You have lost"];
        }
    }
}

- (void) showDialogue:(NSString *) text
{
    SFDraggableDialogView *dialogView = [[[NSBundle mainBundle] loadNibNamed:@"SFDraggableDialogView" owner:self options:nil] firstObject];
    dialogView.frame = self.view.bounds;
    dialogView.photo = [UIImage imageNamed:@"logo.png"];
    dialogView.delegate = self;
    dialogView.titleText = [[NSMutableAttributedString alloc] initWithString:@"Game Over"];
    dialogView.messageText = [self exampleAttributeString:text];
    dialogView.firstBtnText = [@"Play Again" uppercaseString];
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


-(void) setScreen
{
    
    level = level + 1;
    random = arc4random()%dataArray.count;
    
    selectedData = [[NSMutableDictionary alloc] init];
    
    selectedData = [dataArray objectAtIndex:random];
    
    answer = [selectedData objectForKey:@"answer"];
    type = [selectedData objectForKey:@"type"];
    [self setButtons];
    
    self.questionLabel.text = [selectedData objectForKey:@"question"];
    
    _levelLabel.text = [NSString stringWithFormat:@"Level %d", level];
    
    
    
}

-(void) setButtons
{
    [_b1 setTitle:[selectedData objectForKey:@"b1"] forState:UIControlStateNormal];
    [_b2 setTitle:[selectedData objectForKey:@"b2"] forState:UIControlStateNormal];
    [_b3 setTitle:[selectedData objectForKey:@"b3"] forState:UIControlStateNormal];
    [_b4 setTitle:[selectedData objectForKey:@"b4"] forState:UIControlStateNormal];
    
    [_b1 setTitleColor:[self getColor:[selectedData objectForKey:@"b2"]] forState:UIControlStateNormal];
    [_b2 setTitleColor:[self getColor:[selectedData objectForKey:@"b3"]] forState:UIControlStateNormal];
    [_b3 setTitleColor:[self getColor:[selectedData objectForKey:@"b4"]] forState:UIControlStateNormal];
    [_b4 setTitleColor:[self getColor:[selectedData objectForKey:@"b1"]] forState:UIControlStateNormal];
    
    
    [_b1 setBackgroundColor:[self getColor:[selectedData objectForKey:@"b4"]]];
    [_b2 setBackgroundColor:[self getColor:[selectedData objectForKey:@"b1"]]];
    [_b3 setBackgroundColor:[self getColor:[selectedData objectForKey:@"b3"]]];
    [_b4 setBackgroundColor:[self getColor:[selectedData objectForKey:@"b2"]]];
}

-(UIColor*) getColor:(NSString*)color
{
    if([color isEqualToString:@"Red"])
    {
        return [UIColor redColor];
    }
    else if([color isEqualToString:@"Yellow"])
    {
        return [UIColor yellowColor];
    }
    else if([color isEqualToString:@"Black"])
    {
        return [UIColor blackColor];
    }
    else if([color isEqualToString:@"White"])
    {
        return [UIColor whiteColor];
    }
    else if([color isEqualToString:@"Brown"])
    {
        return [UIColor brownColor];
    }
    else if([color isEqualToString:@"Orange"])
    {
        return [UIColor orangeColor];
    }
    else if([color isEqualToString:@"Blue"])
    {
        return [UIColor blueColor];
    }
    else if([color isEqualToString:@"Magenta"])
    {
        return [UIColor magentaColor];
    }
    else if([color isEqualToString:@"Cyan"])
    {
        return [UIColor cyanColor];
    }
    else if([color isEqualToString:@"Purple"])
    {
        return [UIColor purpleColor];
    }
    else
    {
        return [UIColor purpleColor];
    }
}

-(void) setArray
{
    dataArray = [[NSMutableArray alloc] init];
    
    data = [[NSMutableDictionary alloc] init];
    [data setValue:@"Find Box : With Red Background" forKey:@"question"];
    [data setValue:@"Red" forKey:@"b1"];
    [data setValue:@"Yellow" forKey:@"b2"];
    [data setValue:@"Cyan" forKey:@"b3"];
    [data setValue:@"Brown" forKey:@"b4"];
    [data setValue:@"backgroundColor" forKey:@"type"];
    [data setValue:@"Red" forKey:@"answer"];
    [dataArray addObject:data];
    
    data = [[NSMutableDictionary alloc] init];
    [data setValue:@"Find Box : With Brown Font Color" forKey:@"question"];
    [data setValue:@"Brown" forKey:@"b1"];
    [data setValue:@"Black" forKey:@"b2"];
    [data setValue:@"White" forKey:@"b3"];
    [data setValue:@"Red" forKey:@"b4"];
    [data setValue:@"fontColor" forKey:@"type"];
    [data setValue:@"Brown" forKey:@"answer"];
    [dataArray addObject:data];
    
    data = [[NSMutableDictionary alloc] init];
    [data setValue:@"Find Box : With Yellow Text" forKey:@"question"];
    [data setValue:@"Orange" forKey:@"b1"];
    [data setValue:@"Yellow" forKey:@"b2"];
    [data setValue:@"Red" forKey:@"b3"];
    [data setValue:@"Cyan" forKey:@"b4"];
    [data setValue:@"text" forKey:@"type"];
    [data setValue:@"Yellow" forKey:@"answer"];
    [dataArray addObject:data];
    
    data = [[NSMutableDictionary alloc] init];
    [data setValue:@"Find Box : With Black Background" forKey:@"question"];
    [data setValue:@"Red" forKey:@"b1"];
    [data setValue:@"Yellow" forKey:@"b2"];
    [data setValue:@"Black" forKey:@"b3"];
    [data setValue:@"Brown" forKey:@"b4"];
    [data setValue:@"backgroundColor" forKey:@"type"];
    [data setValue:@"Black" forKey:@"answer"];
    [dataArray addObject:data];
    
    data = [[NSMutableDictionary alloc] init];
    [data setValue:@"Find Box : With Orange Text" forKey:@"question"];
    [data setValue:@"Orange" forKey:@"b1"];
    [data setValue:@"Yellow" forKey:@"b2"];
    [data setValue:@"Red" forKey:@"b3"];
    [data setValue:@"Cyan" forKey:@"b4"];
    [data setValue:@"text" forKey:@"type"];
    [data setValue:@"Orange" forKey:@"answer"];
    [dataArray addObject:data];
    
    data = [[NSMutableDictionary alloc] init];
    [data setValue:@"Find Box : With Magenta Font Color" forKey:@"question"];
    [data setValue:@"Brown" forKey:@"b1"];
    [data setValue:@"Black" forKey:@"b2"];
    [data setValue:@"Magenta" forKey:@"b3"];
    [data setValue:@"Red" forKey:@"b4"];
    [data setValue:@"fontColor" forKey:@"type"];
    [data setValue:@"Magenta" forKey:@"answer"];
    [dataArray addObject:data];
    
    data = [[NSMutableDictionary alloc] init];
    [data setValue:@"Find Box : With Blue Background" forKey:@"question"];
    [data setValue:@"Red" forKey:@"b1"];
    [data setValue:@"Yellow" forKey:@"b2"];
    [data setValue:@"Black" forKey:@"b3"];
    [data setValue:@"Blue" forKey:@"b4"];
    [data setValue:@"backgroundColor" forKey:@"type"];
    [data setValue:@"Blue" forKey:@"answer"];
    [dataArray addObject:data];
    
    data = [[NSMutableDictionary alloc] init];
    [data setValue:@"Find Box : With Yellow Background" forKey:@"question"];
    [data setValue:@"Red" forKey:@"b1"];
    [data setValue:@"Yellow" forKey:@"b2"];
    [data setValue:@"Black" forKey:@"b3"];
    [data setValue:@"Blue" forKey:@"b4"];
    [data setValue:@"backgroundColor" forKey:@"type"];
    [data setValue:@"Yellow" forKey:@"answer"];
    [dataArray addObject:data];
    
    data = [[NSMutableDictionary alloc] init];
    [data setValue:@"Find Box : With Cyan Text" forKey:@"question"];
    [data setValue:@"Orange" forKey:@"b1"];
    [data setValue:@"Yellow" forKey:@"b2"];
    [data setValue:@"Red" forKey:@"b3"];
    [data setValue:@"Cyan" forKey:@"b4"];
    [data setValue:@"text" forKey:@"type"];
    [data setValue:@"Cyan" forKey:@"answer"];
    [dataArray addObject:data];
    
    data = [[NSMutableDictionary alloc] init];
    [data setValue:@"Find Box : With Black Text" forKey:@"question"];
    [data setValue:@"Orange" forKey:@"b1"];
    [data setValue:@"Yellow" forKey:@"b2"];
    [data setValue:@"Black" forKey:@"b3"];
    [data setValue:@"Cyan" forKey:@"b4"];
    [data setValue:@"text" forKey:@"type"];
    [data setValue:@"Black" forKey:@"answer"];
    [dataArray addObject:data];
    
    data = [[NSMutableDictionary alloc] init];
    [data setValue:@"Find Box : With Purple Font Color" forKey:@"question"];
    [data setValue:@"Brown" forKey:@"b1"];
    [data setValue:@"Black" forKey:@"b2"];
    [data setValue:@"Magenta" forKey:@"b3"];
    [data setValue:@"Purple" forKey:@"b4"];
    [data setValue:@"fontColor" forKey:@"type"];
    [data setValue:@"Purple" forKey:@"answer"];
    [dataArray addObject:data];
    
    data = [[NSMutableDictionary alloc] init];
    [data setValue:@"Find Box : With White Font Color" forKey:@"question"];
    [data setValue:@"Brown" forKey:@"b1"];
    [data setValue:@"Black" forKey:@"b2"];
    [data setValue:@"Magenta" forKey:@"b3"];
    [data setValue:@"White" forKey:@"b4"];
    [data setValue:@"fontColor" forKey:@"type"];
    [data setValue:@"White" forKey:@"answer"];
    [dataArray addObject:data];
    
    data = [[NSMutableDictionary alloc] init];
    [data setValue:@"Find Box : With Orange Font Color" forKey:@"question"];
    [data setValue:@"Brown" forKey:@"b1"];
    [data setValue:@"Orange" forKey:@"b2"];
    [data setValue:@"Magenta" forKey:@"b3"];
    [data setValue:@"Red" forKey:@"b4"];
    [data setValue:@"fontColor" forKey:@"type"];
    [data setValue:@"Orange" forKey:@"answer"];
    [dataArray addObject:data];
    
    data = [[NSMutableDictionary alloc] init];
    [data setValue:@"Find Box : With Blue Background" forKey:@"question"];
    [data setValue:@"Red" forKey:@"b1"];
    [data setValue:@"Yellow" forKey:@"b2"];
    [data setValue:@"Black" forKey:@"b3"];
    [data setValue:@"Blue" forKey:@"b4"];
    [data setValue:@"backgroundColor" forKey:@"type"];
    [data setValue:@"Blue" forKey:@"answer"];
    [dataArray addObject:data];
    
    data = [[NSMutableDictionary alloc] init];
    [data setValue:@"Find Box : With Purple Background" forKey:@"question"];
    [data setValue:@"Red" forKey:@"b1"];
    [data setValue:@"Yellow" forKey:@"b2"];
    [data setValue:@"Black" forKey:@"b3"];
    [data setValue:@"Purple" forKey:@"b4"];
    [data setValue:@"backgroundColor" forKey:@"type"];
    [data setValue:@"Purple" forKey:@"answer"];
    [dataArray addObject:data];
    
}

@end
