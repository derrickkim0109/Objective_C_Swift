//
//  BookManager.h
//  BookManager
//
//  Created by Derrick kim on 2021/04/07.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class Book;
@interface BookManager : NSObject{
    NSMutableArray * bookList;
}

-(void)addBook :(Book *) bookObject;
-(NSString *)showTotalBooks;
-(NSUInteger)countBook;
-(NSString *)findBook:(NSString *)name;

@end

NS_ASSUME_NONNULL_END
