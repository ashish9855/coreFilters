//
//  iViewController.m
//  coreFilters
//
//  Created by ADMIN on 12/12/13.
//  Copyright (c) 2013 Individual. All rights reserved.
//

#import "iViewController.h"

@interface iViewController ()

@end

@implementation iViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
 
    coreFilter=[iCoreFilters sharedInstanceSingleton];
    
}

-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    
    return [[coreFilter getAllFilters] objectAtIndex:row];
}

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    
    return 1;
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    
    return [coreFilter getCountOfAllFilters];
}

-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
   
    // set image
    UIImage *setImg= [coreFilter applyFilters:row image:self.filterImage.image];
    self.filterImage.image=setImg;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
