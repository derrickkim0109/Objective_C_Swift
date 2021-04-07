//
//  ViewController.m
//  SignUpScreen
//
//  Created by Derrick kim on 2021/04/07.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize nameTextField, idTextField, pwTextField, telTextField, blogTextField, signResultTextView;
 
- (void)viewDidLoad {
    [super viewDidLoad];
    // return 버튼 누르면 키패드 내리기
//    nameTextField.delegate = self;

    
}

-(IBAction)signUpAction:(id)sender{
    if (nameTextField.text != nil) {
        signResultTextView.text = [NSString stringWithFormat:@"%@ , welcome to my application.", nameTextField.text];
    }else{
        signResultTextView.text = [NSString stringWithFormat:@"Input your name."];
    }
   
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];// return 버튼 누르면 키보드 내려감.
    return YES ;
}

// 화면 누르면 키패드 내리기
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
}


@end
