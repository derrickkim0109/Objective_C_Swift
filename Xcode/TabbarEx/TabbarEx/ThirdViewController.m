//
//  ThirdViewController.m
//  TabbarEx
//
//  Created by Derrick kim on 2021/04/08.
//

#import "ThirdViewController.h"

@interface ThirdViewController ()

@end

@implementation ThirdViewController
@synthesize thirdResultLabel;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)thirdActionButton:(id)sender {
    thirdResultLabel.text = @"3번 버튼이 눌렸습니다.";
}
@end
