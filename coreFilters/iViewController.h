//
//  iViewController.h
//  coreFilters
//
//  Created by ADMIN on 12/12/13.
//  Copyright (c) 2013 Individual. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "iCoreFilters.h"

@interface iViewController : UIViewController<UIPickerViewDelegate,UIPickerViewDataSource>

{
    iCoreFilters *coreFilter;
    NSArray *arrOfFilters;
}
@property (weak, nonatomic) IBOutlet UIPickerView *pickFilter;

@property (weak, nonatomic) IBOutlet UIImageView *filterImage;

@end
