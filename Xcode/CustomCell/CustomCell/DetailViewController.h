//
//  DetailViewController.h
//  CustomCell
//
//  Created by Derrick kim on 2021/04/09.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface DetailViewController : UIViewController

// 값들 넘겨 받을 NSDictionary
@property (nonatomic, strong) NSDictionary * detailData;

@property (nonatomic, strong) IBOutlet UIImageView* detailImageView;
@property (nonatomic, strong) IBOutlet UITextField* detailNameTextField;
@property (nonatomic, strong) IBOutlet UITextField* detailAmountTextField;
@property (nonatomic, strong) IBOutlet UITextField* detailPriceTextField;


@end

NS_ASSUME_NONNULL_END
