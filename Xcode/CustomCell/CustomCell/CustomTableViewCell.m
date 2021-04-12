//
//  CustomTableViewCell.m
//  CustomCell
//
//  Created by Derrick kim on 2021/04/09.
//

#import "CustomTableViewCell.h"

@implementation CustomTableViewCell
@synthesize imageView,nameLabel,amountLabel,priceLabel;


- (void)awakeFromNib {
    [super awakeFromNib];
    imageView.layer.cornerRadius = 50.0;
    imageView.layer.masksToBounds = YES;
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
