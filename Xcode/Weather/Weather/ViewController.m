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
    
    
    
    NSDictionary * dic1 = [[NSDictionary alloc]initWithObjectsAndKeys:@"한국",@"지역",@"비",@"날씨", nil];
    NSDictionary * dic2 = [[NSDictionary alloc]initWithObjectsAndKeys:@"중국",@"지역",@"맑음",@"날씨", nil];
    NSDictionary * dic3 = [[NSDictionary alloc]initWithObjectsAndKeys:@"일본",@"지역",@"더움",@"날씨", nil];
    NSDictionary * dic4 = [[NSDictionary alloc]initWithObjectsAndKeys:@"벨기에",@"지역",@"흐림",@"날씨", nil];
    NSDictionary * dic5 = [[NSDictionary alloc]initWithObjectsAndKeys:@"러시아",@"지역",@"바람많음",@"날씨", nil];
    NSDictionary * dic6 = [[NSDictionary alloc]initWithObjectsAndKeys:@"싱가포르",@"지역",@"블리자드",@"날씨", nil];
    NSDictionary * dic7 = [[NSDictionary alloc]initWithObjectsAndKeys:@"영국",@"지역",@"블리자드",@"날씨", nil];
    NSDictionary * dic8 = [[NSDictionary alloc]initWithObjectsAndKeys:@"헝가리",@"지역",@"비",@"날씨", nil];
    NSDictionary * dic9 = [[NSDictionary alloc]initWithObjectsAndKeys:@"미국",@"지역",@"맑음",@"날씨", nil];
    NSDictionary * dic10 = [[NSDictionary alloc]initWithObjectsAndKeys:@"멕시코",@"지역",@"비",@"날씨", nil];
    NSDictionary * dic11 = [[NSDictionary alloc]initWithObjectsAndKeys:@"이란",@"지역",@"바람많음",@"날씨", nil];
    NSDictionary * dic12 = [[NSDictionary alloc]initWithObjectsAndKeys:@"가나",@"지역",@"흐림",@"날씨", nil];
    NSDictionary * dic13 = [[NSDictionary alloc]initWithObjectsAndKeys:@"몽골",@"지역",@"눈",@"날씨", nil];
    
    
    
    dataList = [[NSArray alloc]initWithObjects:dic1,dic2,dic3,dic4,dic5,dic6,dic7,dic8,dic9,dic10,dic11,dic12,dic13,nil];
    
}

// 개수는 몇개이냐? 
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return dataList.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"myCell" forIndexPath:indexPath];
    // enqueue(값을 넣는것), dequeue(값을 빼는것)
    NSDictionary  * dicTemp = [dataList objectAtIndex:indexPath.row];
    NSString * weather = [dicTemp objectForKey:@"날씨"];
    
    cell.textLabel.text = [dicTemp objectForKey:@"지역"];
    cell.detailTextLabel.text = weather;
    
    if ([weather isEqualToString:@"맑음"] || [weather isEqualToString:@"더움"] ) {
        cell.imageView.image = [UIImage imageNamed:@"sunny.png"];
    }else if([weather isEqualToString:@"흐림"] ||  [weather isEqualToString:@"바람많음"]){
        cell.imageView.image = [UIImage imageNamed:@"cloudy.png"];
    }else if([weather isEqualToString:@"눈"]){
        cell.imageView.image = [UIImage imageNamed:@"snow.png"];
    }else if ([weather isEqualToString:@"블리자드"]){
        cell.imageView.image = [UIImage imageNamed:@"blizzard.png"];
    }else{
        cell.imageView.image = [UIImage imageNamed:@"rainy.png"];
    }
    
    return cell;
    
}


@end
