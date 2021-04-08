//
//  ViewController.m
//  HybridApp
//
//  Created by Derrick kim on 2021/04/08.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize mainWebView, urlTextField, bookmarkSegmentedControl, activityIndicatorView;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Indicator
    
    NSMutableString *urlString = @"http://www.facebook.com";
    [mainWebView loadRequest: [NSURLRequest requestWithURL:[NSURL URLWithString: urlString]]];
    urlTextField.text = urlString;
}

// return키 누르면 자동으로 호출
- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    
    NSMutableString *urlString = urlTextField.text;
    
    if(![urlString hasPrefix:@"http://"]){
        urlString  = [[NSMutableString  alloc]initWithFormat:@"http://%@",urlString];
        urlTextField.text = urlString;
    }
        
    [mainWebView loadRequest: [NSURLRequest requestWithURL:[NSURL URLWithString: urlString]]];
    [textField  resignFirstResponder];
    return YES;
}


- (IBAction)bookmarkAction:(id)sender {
    
    NSString * bookmarkURL = [bookmarkSegmentedControl titleForSegmentAtIndex: bookmarkSegmentedControl.selectedSegmentIndex];
    
    
    NSMutableString *urlString = [[NSMutableString alloc]initWithFormat:@"http://www.%@.com", bookmarkURL];
    urlTextField.text = urlString;
    [mainWebView loadRequest: [NSURLRequest requestWithURL:[NSURL URLWithString: urlString]]];
}


- (IBAction)refreshAction:(id)sender {
    [mainWebView goBack];
}

- (IBAction)stopAction:(id)sender {
    [mainWebView stopLoading];
}

- (IBAction)forwardAction:(id)sender {
    [mainWebView goForward];
}

- (IBAction)rewindAction:(id)sender {
    [mainWebView reload];
}



// Web View Delegate -> For Indicator.
- (void)webViewDidStartLoad:(UIWebView *)webView{
    [activityIndicatorView startAnimating];

}
- (void)webViewDidFinishLoad:(UIWebView *)webView{
    [activityIndicatorView stopAnimating];

}


@end
