//
//  MasterTableViewController.m
//  CustomCell
//
//  Created by Derrick kim on 2021/04/09.
//

#import "MasterTableViewController.h"
#import "CustomTableViewCell.h"


@interface MasterTableViewController ()

@end

@implementation MasterTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSDictionary * item1 = [[NSDictionary alloc]initWithObjectsAndKeys:@"Apple",@"Name",@"apple.jpeg", @"image",@"6",@"amount"
                    ,@"3000 won",@"Price", nil];
    NSDictionary * item2 = [[NSDictionary alloc]initWithObjectsAndKeys:@"Carrot",@"Name",@"carrot.jpg", @"image",@"3",@"amount"
                    ,@"2000 won",@"Price", nil];
    NSDictionary * item3 = [[NSDictionary alloc]initWithObjectsAndKeys:@"Cherry",@"Name",@"cherry.png", @"image",@"5",@"amount"
                    ,@"1000 won",@"Price", nil];
    NSDictionary * item4 = [[NSDictionary alloc]initWithObjectsAndKeys:@"Blueberry",@"Name",@"blueberry.jpg", @"image",@"1",@"amount"
                    ,@"4000 won",@"Price", nil];
    NSDictionary * item5 = [[NSDictionary alloc]initWithObjectsAndKeys:@"Grape",@"Name",@"grape.jpg", @"image",@"2",@"amount"
                    ,@"10000 won",@"Price", nil];
    NSDictionary * item6 = [[NSDictionary alloc]initWithObjectsAndKeys:@"Kiwi",@"Name",@"kiwi.png", @"image",@"8",@"amount"
                    ,@"8000 won",@"Price", nil];
    NSDictionary * item7 = [[NSDictionary alloc]initWithObjectsAndKeys:@"Lemon",@"Name",@"lemon.png", @"image",@"4",@"amount"
                    ,@"100 won",@"Price", nil];
    NSDictionary * item8 = [[NSDictionary alloc]initWithObjectsAndKeys:@"Lime",@"Name",@"lime.jpg", @"image",@"3",@"amount"
                    ,@"300 won",@"Price", nil];
    NSDictionary * item9 = [[NSDictionary alloc]initWithObjectsAndKeys:@"Meat",@"Name",@"meat.jpg", @"image",@"1",@"amount"
                    ,@"18000 won",@"Price", nil];
    NSDictionary * item10 = [[NSDictionary alloc]initWithObjectsAndKeys:@"Strawberry",@"Name",@"strawberry.jpg", @"image",@"10",@"amount"
                    ,@"30000 won",@"Price", nil];
    NSDictionary * item11 = [[NSDictionary alloc]initWithObjectsAndKeys:@"Tomato",@"Name",@"tomato.png", @"image",@"16",@"amount"
                    ,@"20000 won",@"Price", nil];
    NSDictionary * item12 = [[NSDictionary alloc]initWithObjectsAndKeys:@"Vegetable",@"Name",@"vegetable.jpg", @"image",@"10",@"amount"
                    ,@"43000 won",@"Price", nil];
    NSDictionary * item13 = [[NSDictionary alloc]initWithObjectsAndKeys:@"Watermelon",@"Name",@"watermelon.png", @"image",@"8",@"amount"
                    ,@"100000 won",@"Price", nil];
    itemList = [[NSArray alloc]initWithObjects:item1,item2,item3,item4,item5,item6,item7,item8,item9,item10,item11,item12,
                item13, nil];
    
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return itemList.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    CustomTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"myCell" forIndexPath:indexPath];
    
    NSDictionary *dicTemp = [itemList objectAtIndex:indexPath.row];
    
    
    cell.nameLabel.text = [dicTemp objectForKey:@"Name"];
    cell.amountLabel.text = [dicTemp objectForKey:@"amount"];
    cell.priceLabel.text = [dicTemp objectForKey:@"Price"];
    
    cell.imageView.image = [UIImage imageNamed:[dicTemp objectForKey:@"image"]];
    
    
    return cell;
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
