//
//  BookManager.m
//  BookManager
//
//  Created by Derrick kim on 2021/04/07.
//

#import "BookManager.h"
#import "Book.h"


@implementation BookManager

// 초기화
-(id)init {
    self = [super init];
    if (self) {
        bookList = [[NSMutableArray alloc]init];
    }
    return self;
}


-(void)addBook :(Book *) bookObject{
    [bookList addObject:bookObject];
}
-(NSString *)showTotalBooks{
    // NSString으로 하면 누적안되서 NSMutable로 한다.
    
    NSMutableString * strTemp = [[NSMutableString alloc]init];
    for (Book * bookTemp in bookList) {
        [strTemp appendString:@"Name : "];
        [strTemp appendString:bookTemp.name];
        [strTemp appendString:@"\n"];
        [strTemp appendString:@"Genre : "];
        [strTemp appendString:bookTemp.genre];
        [strTemp appendString:@"\n"];
        [strTemp appendString:@"Author : "];
        [strTemp appendString:bookTemp.author];
        [strTemp appendString:@"\n"];
        [strTemp appendString:@"----------------------------"];
        [strTemp appendString:@"\n"];
    }
    return strTemp;
}

-(NSUInteger)countBook{
    return [bookList count];
}

-(NSString *)findBook:(NSString *)name{
    NSMutableString * strTemp = [[NSMutableString alloc]init];

    for (Book * bookTemp in bookList) {
        if ([bookTemp.name isEqualToString:name]) {
            [strTemp appendString:@"Name : "];
            [strTemp appendString:bookTemp.name];
            [strTemp appendString:@"\n"];
            [strTemp appendString:@"Genre : "];
            [strTemp appendString:bookTemp.genre];
            [strTemp appendString:@"\n"];
            [strTemp appendString:@"Author : "];
            [strTemp appendString:bookTemp.author];
            return strTemp;
        }
    }
    // Data 없다면?
    return nil;
}

-(NSString *)removeBook:(NSString *)name{
    for (Book * bookTemp in bookList){
        // name 찾았으면 
        if ([bookTemp.name isEqualToString:name]){
            [bookList removeObject:bookTemp];
            return name;
        }
    }
    // 못찾았으면
    return nil;
}

@end
