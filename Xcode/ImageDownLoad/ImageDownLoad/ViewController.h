//
//  ViewController.h
//  ImageDownLoad
//
//  Created by Derrick kim on 2021/04/12.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<NSURLSessionDownloadDelegate>{
    
    // 실제 다운로드 처리하는 것.
    NSURLSessionTask  * downloadTask;
}
@property (strong, nonatomic) IBOutlet UIImageView *imageView;
@property (strong, nonatomic) IBOutlet UIActivityIndicatorView *activityIndicatorView;
@property (strong, nonatomic) IBOutlet UIProgressView *progressView;
- (IBAction)btnDownloadAction:(id)sender;
- (IBAction)btnSuspendAction:(id)sender;
- (IBAction)btnResumeAction:(id)sender;
- (IBAction)btnCancelAction:(id)sender;


@end

