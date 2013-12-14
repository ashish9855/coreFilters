//
//  iCoreFilters.h
//  coreFilters
//
//  Created by ADMIN on 12/13/13.
//  Copyright (c) 2013 Individual. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface iCoreFilters : NSObject

-(void)setFilterToImage:(NSInteger)getFilterName image:(UIImage *)getImage sendSelf:(id)getSelf view:(UIView *)sendView sendImageView:(UIImageView *)getImageView;
-(NSArray *)getAllFilters ;

@property(nonatomic,strong)NSString *getall;

@end
