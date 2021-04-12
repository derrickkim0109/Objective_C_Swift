//
//  ViewController.m
//  ImageDownLoad
//
//  Created by Derrick kim on 2021/04/12.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize imageView,activityIndicatorView, progressView;


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)URLSession:(NSURLSession *)session downloadTask:(NSURLSessionDownloadTask *)downloadTask didFinishDownloadingToURL:(NSURL *)location{
    NSData * data = [NSData dataWithContentsOfURL:location];
    imageView.image = [UIImage imageWithData:data];
    [activityIndicatorView stopAnimating];
}

// Progress Bar
- (void)URLSession:(NSURLSession *)session downloadTask:(NSURLSessionDownloadTask *)downloadTask didWriteData:(int64_t)bytesWritten totalBytesWritten:(int64_t)totalBytesWritten totalBytesExpectedToWrite:(int64_t)totalBytesExpectedToWrite{
//    NSLog(@"totalBytesExpectedToWrite : %lli", totalBytesExpectedToWrite);
//    NSLog(@"bytesWritten : %lli", bytesWritten);
//    NSLog(@"totalBytesWritten : %lli", totalBytesWritten);
    
    float progress = (float)totalBytesWritten/(float)totalBytesExpectedToWrite;
    [progressView setProgress:progress animated:YES];
}

- (IBAction)btnDownloadAction:(id)sender {
    // reset 초기화 작업
    imageView.image = nil;
    [progressView setProgress:0.0 animated:NO];
        
    [activityIndicatorView startAnimating];
    
    
    NSURLSessionConfiguration * sessionConfiguration = [NSURLSessionConfiguration defaultSessionConfiguration];
    
    
    NSURLSession * session = [NSURLSession sessionWithConfiguration:sessionConfiguration delegate:self delegateQueue:[NSOperationQueue mainQueue]];
    
    downloadTask = [session downloadTaskWithURL:[NSURL URLWithString:@"https://raw.githubusercontent.com/ChoiJinYoung/iphonewithswift2/master/sample.jpeg"]];
    [downloadTask resume];
}

- (IBAction)btnCancelAction:(id)sender {
    [downloadTask suspend];
}

- (IBAction)btnResumeAction:(id)sender {
    [downloadTask resume];
}

- (IBAction)btnSuspendAction:(id)sender {
    [downloadTask cancel];
    
    [progressView setProgress:0.0 animated:NO];
    [activityIndicatorView stopAnimating];
}


@end
