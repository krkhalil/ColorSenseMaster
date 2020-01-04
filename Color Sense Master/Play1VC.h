//
//  Play1VC.h
//  Color Sense Master
//
//  Created by Macbook on 09/08/2019.
//  Copyright © 2019 TP. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface Play1VC : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *levelLabel;
@property (weak, nonatomic) IBOutlet UILabel *timerLabel;


@property (weak, nonatomic) IBOutlet UILabel *questionLabel;


@property (weak, nonatomic) IBOutlet UIButton *b1;
@property (weak, nonatomic) IBOutlet UIButton *b2;
@property (weak, nonatomic) IBOutlet UIButton *b3;
@property (weak, nonatomic) IBOutlet UIButton *b4;



- (IBAction)b1Touched:(id)sender;
- (IBAction)b2Touched:(id)sender;
- (IBAction)b3Touched:(id)sender;
- (IBAction)b4Touched:(id)sender;


@end

NS_ASSUME_NONNULL_END
