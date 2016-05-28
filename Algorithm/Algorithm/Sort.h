//
//  Sort.h
//  Algorithm
//
//  Created by Hertz on 5/27/16.
//  Copyright © 2016 Hertz. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Sort : NSObject
@property (copy) NSString *firstName;
#pragma mark -- public method
-(BOOL)exchangeWithArray:(int *)array Index1:(int)idx1 Index2:(int)idx2;

#pragma mark -- sort
-(BOOL)bubbleSortWithArray:(int *)array Size:(int)size;
-(BOOL)selectionSortWithArray:(int *)array Size:(int)size;
-(BOOL)insertionSortWithArray:(int *)array Size:(int)size;
-(BOOL)shellSortWithArray:(int *)array Size:(int)size;



-(id)init;

@end
