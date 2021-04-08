//
//  ViewController.h
//  HybridApp
//
//  Created by Derrick kim on 2021/04/08.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate, UIWebViewDelegate>

@property (strong, nonatomic) IBOutlet UISegmentedControl *bookmarkSegmentedControl;
@property (strong, nonatomic) IBOutlet UITextField *urlTextField;
@property (strong, nonatomic) IBOutlet UIWebView *mainWebView;
@property (strong, nonatomic) IBOutlet UIActivityIndicatorView *activityIndicatorView;


- (IBAction)bookmarkAction:(id)sender;



    
@end

