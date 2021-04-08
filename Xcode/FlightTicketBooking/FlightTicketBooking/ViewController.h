//
//  ViewController.h
//  FlightTicketBooking
//
//  Created by Derrick kim on 2021/04/08.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate>{
    NSInteger buttonTag; // NSInteger == long
}

// For hidden
@property (strong, nonatomic) IBOutlet UILabel *returnDateLabel;
@property (strong, nonatomic) IBOutlet UIButton *returnDateButton;
@property (strong, nonatomic) IBOutlet UITextField *returnDateTextField;

@property (strong, nonatomic) IBOutlet UIDatePicker *selectDatePicker;
@property (strong, nonatomic) IBOutlet UITextField *departureDateTextField;


// Switch 버튼
- (IBAction)showReturnDateAction:(id)sender;

// Picker 띄울 버튼
- (IBAction)departureDatePickerAction:(id)sender;



// Picker Date 선택시 날짜 띄워지게.
- (IBAction)selectPickerAction:(id)sender;


@end

