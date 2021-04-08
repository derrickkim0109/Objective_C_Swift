//
//  ViewController.h
//  SelectCarPickerView
//
//  Created by Derrick kim on 2021/04/08.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIPickerViewDataSource, UIPickerViewDelegate>{
    NSArray *companyName;
    NSArray *tesla, *lamborghini, *porsche;
    NSArray *teslaImageNames, *lamborghiniImageNames, *porscheImageNames;
    
    // Car 이름 별로 구분을 위해
    NSArray *carModel;
    NSArray *carModelImage;
}

@property (strong, nonatomic) IBOutlet UIImageView *imageView;

@end

