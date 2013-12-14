//
//  iCoreFilters.h
//  coreFilters
//
//  Created by ADMIN on 12/13/13.
//  Copyright (c) 2013 Individual. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface iCoreFilters : NSObject

{
    // array of filters
    NSArray *arrOfFilters;
}

// class methods
-(UIImage *)applyFilters:(NSInteger)getRow image:(UIImage *)getImage;
-(NSArray *)getAllFilters;
-(NSInteger)getCountOfAllFilters;

// singleton
+(iCoreFilters *)sharedInstanceSingleton;

@property(nonatomic,strong)NSString *getall;

@end
