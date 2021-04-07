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

// 검색 TextField
@property(nonatomic, strong) IBOutlet UITextField * searchBarTextField;

// Total Count
@property(nonatomic, strong) IBOutlet UILabel * countTotalBooksLabel;


-(IBAction)showTotalBookAction :(id)sender;

-(IBAction)insertBookAction:(id)sender;

-(IBAction)searchBarAction:(id)sender;

-(IBAction)deleteAction:(id)sender;

@end

