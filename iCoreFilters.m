//
//  iCoreFilters.m
//  coreFilters
//
//  Created by ADMIN on 12/13/13.
//  Copyright (c) 2013 Individual. All rights reserved.
//

#import "iCoreFilters.h"

@implementation iCoreFilters

//-(void)setFilterToImage:(NSInteger)getFilterName image:(UIImage *)getImage sendSelf:(id)getSelf view:(UIView *)sendView sendImageView:(UIImageView *)getImageView{
//  
//              break;
//            
//        default:
//            break;
//    }
//    
//    
//}

-(NSArray *)getAllFilters{
    
     NSArray *getFilter=[CIFilter filterNamesInCategory:nil];
     NSLog(@"%@",getFilter);
//     CIFilter *filter=[CIFilter filterWithName:@"CIAffineClamp"];
//     NSArray *arr=[filter inputKeys];
//     return arr;
    return getFilter;
}

@end
