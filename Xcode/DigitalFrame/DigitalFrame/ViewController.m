//
//  ViewController.m
//  DigitalFrame
//
//  Created by Derrick kim on 2021/04/07.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize imageView, toggleButton, speedSlider, speedLabel;


- (void)viewDidLoad {
    [super viewDidLoad];

    // Image View init
    NSArray * totalImages = [[NSArray alloc]initWithObjects:
                             [UIImage imageNamed:@"1.jpg"],
                             [UIImage imageNamed:@"2.jpg"],
                             [UIImage imageNamed:@"3.jpg"],
                             [UIImage imageNamed:@"4.jpg"],
                             [UIImage imageNamed:@"5.jpg"],
                             [UIImage imageNamed:@"6.jpg"],
                             [UIImage imageNamed:@"7.jpg"],
                             [UIImage imageNamed:@"8.jpg"],
                             [UIImage imageNamed:@"9.jpg"],
                             [UIImage imageNamed:@"10.jpg"],
                             [UIImage imageNamed:@"11.jpg"],
                             [UIImage imageNamed:@"12.jpg"],
                             [UIImage imageNamed:@"13.jpg"],
                             [UIImage imageNamed:@"14.jpg"],
                             [UIImage imageNamed:@"15.jpg"],
                             nil];
    
    imageView.animationImages = totalImages;
    imageView.animationDuration = 15.0;
    
    
}

-(IBAction)toggleAction:(id)sender{
    if ([imageView isAnimating]) {
        [imageView stopAnimating];
        [toggleButton setTitle:@"Start" forState:UIControlStateNormal];
    }else{
        [imageView startAnimating];
        [toggleButton setTitle:@"Stop" forState:UIControlStateNormal];
    }
    
}

-(IBAction)changeSpeedAction:(id)sender{
    [imageView startAnimating];
    // 안 빼면 슬라이드 줄이면 빨리지는것으로 된다.
    imageView.animationDuration = 15 - speedSlider.value;
    [toggleButton setTitle:@"Stop" forState:UIControlStateNormal];
    
    NSString * speedString = [[NSString alloc]initWithFormat:@"%.2f", speedSlider.value];
    
    speedLabel.text = speedString;
}

@end
