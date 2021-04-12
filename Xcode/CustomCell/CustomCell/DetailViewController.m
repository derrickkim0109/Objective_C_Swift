//
//  DetailViewController.m
//  CustomCell
//
//  Created by Derrick kim on 2021/04/09.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController
@synthesize detailImageView, detailNameTextField,detailPriceTextField, detailAmountTextField, detailData;

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"Detail Data : %@", detailData);
    detailNameTextField.text = [detailData objectForKey:@"Name"];
    detailAmountTextField.text = [detailData objectForKey:@"amount"];
    detailPriceTextField.text = [detailData objectForKey:@"Price"];
    
    detailImageView.image = [UIImage imageNamed: [detailData objectForKey:@"image"]];
    detailImageView.layer.cornerRadius = 50.0;
    detailImageView.layer.masksToBounds = YES;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
