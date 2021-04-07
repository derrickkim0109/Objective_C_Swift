//
//  Book.h
//  BookManager
//
//  Created by Derrick kim on 2021/04/07.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Book : NSObject

// atomic 하나씩 데이터 가져옴 -> 느림. 하지만 동시에 가져오면 안되는값들 일 경우 써야함.
// nonatomic 동시에 데이터들 가져옴.
// strong : 지금 이 객체를 참조하고 있다는 의미.
@property (nonatomic, strong) NSString * name, * genre, * author;
//@property (nonatomic, strong) NSString * genre;
//@property (nonatomic, strong) NSString * author;

// Method
-(void)bookPrint;


@end

NS_ASSUME_NONNULL_END
