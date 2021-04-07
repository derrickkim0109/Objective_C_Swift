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
@synthesize resultTextView, bookNameTextField,bookGenreTextField,bookAuthorTextField;


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
}
-(IBAction)showTotalBookAction :(id)sender{
    resultTextView.text = [myBook showTotalBooks];
    // [resultTextView setText:[myBook showTotalBooks]]; 위에랑 똑같은 코드임.
}

-(IBAction)insertBookAction:(id)sender{
    Book * bookTemp = [[Book alloc]init];
    bookTemp.name = bookNameTextField.text;
    bookTemp.genre = bookGenreTextField.text;
    bookTemp.author = bookAuthorTextField.text;
    
    [myBook addBook: bookTemp];
    resultTextView.text = @"Successfully completed to insert a new book in your book list";
}

@end
