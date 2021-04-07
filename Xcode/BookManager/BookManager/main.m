//
//  main.m
//  BookManager
//
//  Created by Derrick kim on 2021/04/07.
//

#import <Foundation/Foundation.h>
#import "Book.h"
#import "BookManager.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
       // Book Manager
       // Book
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
        
//        [thirdBook bookPrint];
         
        BookManager * myBookList = [[BookManager alloc]init];
        [myBookList addBook:firstBook];
        [myBookList addBook:secondBook];
        [myBookList addBook:thirdBook];

        NSLog(@"Total Mybook List: %@", [myBookList showTotalBooks]);
        NSLog(@"count : %li", [myBookList countBook]);
        
        
        // findBook
        NSString * strTemp = [myBookList findBook:@"Steave Jobs"];
        if (strTemp != nil) {
            NSLog(@"%@",strTemp);
        }else{
            NSLog(@"There is nothing that you find");
        }
    }
    return 0;
}
