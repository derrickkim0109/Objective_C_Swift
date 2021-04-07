//
//  Book.m
//  BookManager
//
//  Created by Derrick kim on 2021/04/07.
//

#import "Book.h"

@implementation Book
@synthesize name, genre, author;
// 구현
-(void)bookPrint{
    NSLog(@"Name : %@", name );
    NSLog(@"Genre : %@", genre );
    NSLog(@"Author : %@", author );
}

@end
