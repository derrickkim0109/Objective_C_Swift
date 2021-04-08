//
//  ViewController.m
//  FlightTicketBooking
//
//  Created by Derrick kim on 2021/04/08.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize returnDateLabel, returnDateButton,selectDatePicker, departureDateTextField, returnDateTextField;
- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Button Tag
    buttonTag = 0;
    
    returnDateLabel.hidden = YES;
    returnDateButton.hidden  = YES;
    selectDatePicker.hidden = YES;
    returnDateTextField.hidden = YES;
    
}


- (IBAction)showReturnDateAction:(id)sender {
//    if ([sender isOn]) {
//        returnDateLabel.hidden = NO;
//        returnDateButton.hidden = NO;
//        returnDateTextField.hidden = NO;
//
//    }else{
//        returnDateLabel.hidden = YES;
//        returnDateButton.hidden = YES;
//        returnDateTextField.hidden = YES;
//    }
    returnDateLabel.hidden = ![sender isOn];
    returnDateButton.hidden = ![sender isOn];
    returnDateTextField.hidden = ![sender isOn];
    
}



// Picker View 내리기
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES]; // 키보드 내리기 
    selectDatePicker.hidden = YES;
}



- (IBAction)departureDatePickerAction:(id)sender {
    selectDatePicker.hidden = NO;
    buttonTag  = [sender tag];
}

// Value changed in Picker
// Departure
- (IBAction)selectPickerAction:(id)sender {
    // id  값 확인하기
 //   NSLog(@"description : %@", [sender description]);
    
    // Date Format
    NSDateFormatter * formatter = [[NSDateFormatter alloc]init];
    formatter.dateFormat = @"YY-MM-d hh:mma";
    
    // 문자열로 바꿔야함
    NSString * dateString = [formatter stringFromDate:[sender date]];
   // NSLog(@"%@", dateString);
    if (buttonTag == 1 ) {
        departureDateTextField.text = dateString;
    }else{
        returnDateTextField.text = dateString;
    }
    
}
// For UITextFieldDelegate
- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    return YES;
}


@end
