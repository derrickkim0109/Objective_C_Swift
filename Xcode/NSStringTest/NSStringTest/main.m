//
//  main.m
//  NSStringTest
//
//  Created by Derrick kim on 2021/04/06.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // convinience method
        NSString * str = [[NSString alloc]initWithString:@"This is NSString"];
        NSLog(@"NSString: %@", str);
        
        // NSString is an immutable string.
        NSString * result;
        result = [str substringFromIndex:6];
        NSLog(@"result FromIndex : %@", result);
        
        result = [str substringToIndex:3];
        NSLog(@"result ToIndex : %@", result);
        
        result = [[str substringToIndex:11]substringFromIndex:8];
        result = [[str substringFromIndex:8]substringToIndex:3];
        NSLog(@"result NSS : %@", result);
        
        
        result = [[str substringWithRange:NSMakeRange(8, 3)]lowercaseString];
        NSLog(@"result NSS : %@", result);
        
        
        // NSMutableString is a mutable string.
        NSMutableString * mstr = [NSMutableString stringWithString:str];
        [mstr appendString:@" and NSMutableString"];
        [mstr insertString:@"Mutable " atIndex:8];
        NSLog(@"NSMutableString: %@", mstr);
    }
    return 0;
}
