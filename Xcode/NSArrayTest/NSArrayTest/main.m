//
//  main.m
//  NSArrayTest
//
//  Created by Derrick on 2021/04/06.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSArray * month = [[NSArray alloc]initWithObjects:@"January",@"February",@"March",@"April",
                           @"May",@"June",@"July",@"August",@"September", nil];
        
        for (int i = 0; i< [month count]; i++) {
            NSLog(@"month : %@", [month objectAtIndex:i] );
            //month[i] = [month objectAtIndex:i]
            
            
            for (NSString * strTemp in month) {
                NSLog(@"month: %@", strTemp);
            }
            
            NSMutableArray *mMonth = [NSMutableArray arrayWithArray:month];
            
            // 값을 추가 하고 싶을때!
            [mMonth addObject:@"October"];
            [mMonth addObject:@"November"];
            [mMonth addObject:@"December"];
            
            for (NSString * strTemp in mMonth) {
                NSLog(@"mMonth: %@", strTemp);
            }
        }
    }
    
    
    return 0;
}
