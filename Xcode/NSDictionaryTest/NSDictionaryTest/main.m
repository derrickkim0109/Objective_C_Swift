//
//  main.m
//  NSDictionaryTest
//
//  Created by Derrick on 2021/04/06.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSDictionary * dic = [[NSDictionary alloc]initWithObjectsAndKeys:@"Derrick Kim",@"Name",
        @"29 year-old", @"Age", nil];
        
        // Value 값들이 Return 된다.
        NSLog(@"Name : %@", [dic objectForKey:@"Name"]);
        NSLog(@"Age  : %@", [dic objectForKey:@"Age"]);
        
        NSMutableDictionary *mDic = [NSMutableDictionary dictionaryWithDictionary: dic];
        
        [mDic setObject:@"Korea" forKey:@"Country"];
        [mDic setObject:@"Computer Programmer" forKey:@"Job"];
        
        NSLog(@"Name : %@", [mDic objectForKey:@"Name"]);
        NSLog(@"Age  : %@", [mDic objectForKey:@"Age"]);
        NSLog(@"Country : %@", [mDic objectForKey:@"Country"]);
        NSLog(@"Job : %@", [mDic objectForKey:@"Job"]);
    }
    return 0;
}
