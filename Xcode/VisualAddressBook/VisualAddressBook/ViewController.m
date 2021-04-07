//
//  ViewController.m
//  VisualAddressBook
//
//  Created by Derrick kim on 2021/04/07.
//

#import "ViewController.h"
#import "BookManager.h"
#import "Book.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize resultTextView, bookNameTextField,bookGenreTextField,bookAuthorTextField,searchBarTextField, countTotalBooksLabel;


- (void)viewDidLoad {
    [super viewDidLoad];
    Book * firstBook = [[Book alloc]init];
    firstBook.name = @"Steave Jobs";
    firstBook.genre = @"self-development";
    firstBook.author = @"Steave Jobs's ex-coworker";
    
    // BookManager에 추가해서 주석처리함.(annotation)
//        [firstBook bookPrint];
    
    Book * secondBook = [[Book alloc]init];
    secondBook.name = @"Who is him?";
    secondBook.genre = @"Essay";
    secondBook.author = @"Derrick Kim";
    
//        [secondBook bookPrint];
    
    Book * thirdBook = [[Book alloc]init];
    thirdBook.name = @"How did he make a lot of money?";
    thirdBook.genre = @"Fantasy";
    thirdBook.author = @"Derrick Kim";
    
    myBook = [[BookManager alloc]init];
    [myBook addBook:firstBook];
    [myBook addBook:secondBook];
    [myBook addBook:thirdBook];
    
    countTotalBooksLabel.text = [NSString stringWithFormat: @"%li", [myBook countBook]];
    
}

// Total BookList Button
-(IBAction)showTotalBookAction :(id)sender{
    resultTextView.text = [myBook showTotalBooks];
    // [resultTextView setText:[myBook showTotalBooks]]; 위에랑 똑같은 코드임.
}

// Insert Button
-(IBAction)insertBookAction:(id)sender{
    Book * bookTemp = [[Book alloc]init];
    bookTemp.name = bookNameTextField.text;
    bookTemp.genre = bookGenreTextField.text;
    bookTemp.author = bookAuthorTextField.text;
    
    [myBook addBook: bookTemp];
    
    resultTextView.text = @"Successfully completed to insert a new book in your book list";
    countTotalBooksLabel.text = [NSString stringWithFormat: @"%li", [myBook countBook]]; 
}

// Searching Button
-(IBAction)searchBarAction:(id)sender{
    NSString * strTemp = [myBook findBook:searchBarTextField.text];
    if (strTemp != nil) {
        resultTextView.text = strTemp;
    }else{
        resultTextView.text = @"There isn't the book that you find.";
    }
    
}
// Delete Button
-(IBAction)deleteAction:(id)sender{
    NSString * bookName = [myBook removeBook:bookNameTextField.text];
    
    NSMutableString * additionalComment = [[NSMutableString  alloc]init];
    [additionalComment appendString: bookName];
    [additionalComment appendString:@" is deleted."];
    
    if (bookName != nil) {
        resultTextView.text = additionalComment;
        countTotalBooksLabel.text = [NSString stringWithFormat: @"%li", [myBook countBook]];
    }else{
        resultTextView.text = @"There isn't the book that you find.";
    }
}
@end
