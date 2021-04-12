//
//  TableViewController.h
//  XMLParsing
//
//  Created by Derrick kim on 2021/04/12.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface TableViewController : UITableViewController<NSXMLParserDelegate>{
   
    NSXMLParser * parser;
    
    NSMutableArray *dataList;
    NSMutableDictionary *detailData;
    
    NSString *elementTemp;
    
    BOOL blank; 
}

@end

NS_ASSUME_NONNULL_END
