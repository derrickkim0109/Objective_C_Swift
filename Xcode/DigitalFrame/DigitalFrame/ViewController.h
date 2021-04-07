//
//  ViewController.h
//  DigitalFrame
//
//  Created by Derrick kim on 2021/04/07.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (nonatomic, strong) IBOutlet UIImageView *  imageView;
@property (nonatomic, strong) IBOutlet UIButton * toggleButton;
@property (nonatomic, strong) IBOutlet UISlider * speedSlider;
@property (nonatomic, strong) IBOutlet UILabel * speedLabel;



-(IBAction)toggleAction:(id)sender;
-(IBAction)changeSpeedAction:(id)sender;
@end

