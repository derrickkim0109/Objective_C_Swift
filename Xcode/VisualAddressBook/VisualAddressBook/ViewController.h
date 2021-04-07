//
//  ViewController.h
//  VisualAddressBook
//
//  Created by Derrick kim on 2021/04/07.
//

#import <UIKit/UIKit.h>

@class BookManager;
@interface ViewController : UIViewController{
    BookManager * myBook;
}

@property(nonatomic, strong) IBOutlet UITextView * resultTextView;

@property(nonatomic, strong) IBOutlet UITextField * bookNameTextField;
@property(nonatomic, strong) IBOutlet UITextField * bookGenreTextField;
@property(nonatomic, strong) IBOutlet UITextField * bookAuthorTextField;


-(IBAction)showTotalBookAction :(id)sender;

-(IBAction)insertBookAction:(id)sender;

@end

