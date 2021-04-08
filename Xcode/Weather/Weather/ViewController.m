//
//  ViewController.m
//  Weather
//
//  Created by Derrick kim on 2021/04/08.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    
    NSDictionary * dic2 = [[NSDictionary alloc]initWithObjectsAndKeys:@"12313", nil];
    
    
    dataList =  [[NSArray alloc]initWithObjects:dic2, nil];
    
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return dataList.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"myCell" forIndexPath:indexPath];
    
    NSDictionary  * dicTemp = [dataList objectAtIndex:indexPath.row];
    
    
    cell.textLabel.text = [dicTemp objectForKey:@"neibour"];
    
    return cell;
}


@end
