//
//  TableViewController.m
//  XMLParsing
//
//  Created by Derrick kim on 2021/04/12.
//

#import "TableViewController.h"
#import "WeatherTableViewCell.h"
@interface TableViewController ()

@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // data 초기화
    dataList = [[NSMutableArray alloc]init];
    
    parser = [[NSXMLParser alloc]initWithContentsOfURL:[NSURL URLWithString:@"https://raw.githubusercontent.com/ChoiJinYoung/iphonewithswift2/master/weather.xml"]];
    parser.delegate = self;
    [parser parse];
}
// Parser
// EX) <country> 한국</country>
// <country>-StartElement  //  </country>-EndElement // 한국 -foundCharacters
- (void)parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName attributes:(NSDictionary<NSString *,NSString *> *)attributeDict{
    NSLog(@"didStartElement : %@", elementName);

    if([elementName isEqualToString:@"local"]){
        detailData = [[NSMutableDictionary alloc]init];
    }
    elementTemp = elementName;
    blank = YES;
}
- (void)parser:(NSXMLParser *)parser foundCharacters:(NSString *)string{
    if (blank == YES && ![elementTemp isEqualToString:@"local"]) {
        NSLog(@"foundCharacters : %@", string);
        [detailData setObject:string forKeyedSubscript:elementTemp ];
    }
    
}
- (void)parser:(NSXMLParser *)parser didEndElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName{
    if ([elementName isEqualToString:@"local"]) {
        [dataList addObject:detailData];
    }
    NSLog(@"didEndElement %@", elementName);
    blank = NO;
}

#pragma mark - Table view data source
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return dataList.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    WeatherTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"myCell" forIndexPath:indexPath];

    NSDictionary * data = [dataList objectAtIndex:indexPath.row];
    NSString * weather = [data objectForKey:@"weather"];
    
    cell.countryLabel.text = [data objectForKey:@"country"];
    cell.weatherLabel.text = weather;
    cell.temperatureLabel.text = [data objectForKey:@"temperature"];
    
    if ([weather isEqualToString: @"맑음"]) {
        cell.imageView.image = [UIImage imageNamed:@"sunny.png"];
    }else if ([weather isEqualToString:@"흐림"]){ cell.imageView.image = [UIImage imageNamed:@"cloudy.png"];
    }else if ([weather isEqualToString:@"눈"]){ cell.imageView.image = [UIImage imageNamed:@"snow.png"];
    }else if ([weather isEqualToString:@"비"]){ cell.imageView.image = [UIImage imageNamed:@"rainy.png"];
    }else{
        cell.imageView.image = [UIImage imageNamed:@"blizzard.png"];
    }
    
    
    return cell;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 160;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
