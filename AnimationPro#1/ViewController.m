//
//  ViewController.m
//  AnimationPro#1
//
//  Created by Yongjia Liu on 14-1-14.
//  Copyright (c) 2014年 Yongjia Liu. All rights reserved.
//

#import "ViewController.h"
#import <QuartzCore/QuartzCore.h>
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *AnimationLabel;
@property (weak, nonatomic) IBOutlet UIButton *clickButton;

@end

@implementation ViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
- (IBAction)CubeEffect:(id)sender {
    
    CATransition *animation=[CATransition animation];
    UIView *view=[[UIView alloc]init];
    view.frame=self.AnimationLabel.frame;
    [view setBackgroundColor:[UIColor blackColor]];
    animation.delegate=self;
    animation.duration=0.8f;
    animation.type=@"cube";
    animation.subtype=@"fromRight";
    animation.startProgress=0.0;
    animation.endProgress=1.0;
    animation.removedOnCompletion=NO;
    
    
    [self.AnimationLabel.layer addAnimation:animation forKey:@"animation"];
    
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

@end
