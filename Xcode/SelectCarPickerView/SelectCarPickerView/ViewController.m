//
//  ViewController.m
//  SelectCarPickerView
//
//  Created by Derrick kim on 2021/04/08.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize imageView;

- (void)viewDidLoad {
    [super viewDidLoad];
    companyName = [[NSArray alloc]initWithObjects:@"Tesla", @"Lamborghini",@"Porsche", nil];
    
    carModel = [[NSArray alloc]init];
    carModelImage = [[NSArray alloc]init];
    
    
    
    tesla = [[NSArray alloc]initWithObjects:@"Model_X", @"Model_S", nil];
    teslaImageNames =  [[NSArray alloc]initWithObjects:@"tesla-model-x.jpg",@"tesla-model-s.jpg", nil];
    
    lamborghini = [[NSArray alloc]initWithObjects:@"Aventador",@"hurancan",@"veneno", nil];
    lamborghiniImageNames = [[NSArray alloc]initWithObjects:@"lamborghini-aventador.jpg", @"lamborghini-huracan.jgp",@"lamborghini-veneno.jpg", nil];
    
    porsche = [[NSArray alloc]initWithObjects:@"porsche-911",@"porsche-boxter", nil];
    porscheImageNames = [[NSArray alloc]initWithObjects:@"porsche-911.jgp",@"porsche-boxter.jgp", nil];
    
    carModel = tesla;
    carModelImage = teslaImageNames;
    
    // round 처리 하기.
    imageView.layer.cornerRadius = 35.0;
    imageView.layer.masksToBounds =  true;
    
}
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 2;
}
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    if (component == 0 ) {
        return companyName.count;
    }else{
        return carModel.count;
    }
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    if (component == 0 ) {
        return [companyName objectAtIndex:row];
    }else{
        return [carModel objectAtIndex:row];
    }
}

// 선택한 row 값으로 사진 불러오기 위해
- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    if (component == 0 && row == 0 ) {
        carModel = tesla;
        carModelImage = teslaImageNames;
    }else if (component == 0 && row == 1 ){
        carModel = lamborghini;
        carModelImage = lamborghiniImageNames;
    }else if (component == 0 && row == 2 ){
        carModel = porsche;
        carModelImage = porscheImageNames;
    }
    [pickerView reloadAllComponents];
    
    imageView.image = [UIImage imageNamed:[carModelImage objectAtIndex: [pickerView selectedRowInComponent:1]]];
}

// component 칸 비율 조절
- (CGFloat)pickerView:(UIPickerView *)pickerView rowHeightForComponent:(NSInteger)component{
    return 70.0;
}
- (CGFloat)pickerView:(UIPickerView *)pickerView widthForComponent:(NSInteger)component{
    if (component == 0 ) {
        return 100.0;
    }else{
        return 120.0;
    }
}
@end
