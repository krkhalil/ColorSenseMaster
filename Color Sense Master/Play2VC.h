//
//  Play2VC.h
//  Color Sense Master
//
//  Created by Macbook on 09/08/2019.
//  Copyright © 2019 TP. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface Play2VC : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *levelLabel;
@property (weak, nonatomic) IBOutlet UILabel *timerLabel;


@property (weak, nonatomic) IBOutlet UILabel *questionLabel;


@property (weak, nonatomic) IBOutlet UIButton *b1;
@property (weak, nonatomic) IBOutlet UIButton *b2;
@property (weak, nonatomic) IBOutlet UIButton *b3;
@property (weak, nonatomic) IBOutlet UIButton *b4;
@property (weak, nonatomic) IBOutlet UIButton *b5;
@property (weak, nonatomic) IBOutlet UIButton *b6;
@property (weak, nonatomic) IBOutlet UIButton *b7;
@property (weak, nonatomic) IBOutlet UIButton *b8;
@property (weak, nonatomic) IBOutlet UIButton *b9;


- (IBAction)b1Touched:(id)sender;
- (IBAction)b2Touched:(id)sender;
- (IBAction)b3Touched:(id)sender;
- (IBAction)b4Touched:(id)sender;
- (IBAction)b5Touched:(id)sender;
- (IBAction)b6Touched:(id)sender;
- (IBAction)b7Touched:(id)sender;
- (IBAction)b8Touched:(id)sender;
- (IBAction)b9Touched:(id)sender;

@end

NS_ASSUME_NONNULL_END
