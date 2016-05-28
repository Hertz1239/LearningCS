//
//  Sort.m
//  Algorithm
//
//  Created by Hertz on 5/27/16.
//  Copyright © 2016 Hertz. All rights reserved.
//

#import "Sort.h"

@implementation Sort



#pragma mark -- sort
-(BOOL)bubbleSortWithArray:(int *)array Size:(int)size {
    for(int i = 0; i < size; i++) {
        for(int j = 0; j < size - i - 1; j++) {
            if(array[j] > array[j+1]) {
#if 1
                int temp = array[j];
                array[j] = array[j+1];
                array[j+1] = temp;
#else
                [self exchangeWithArray:array Index1:j Index2: j+1];
#endif
            }
        }
    }
    
    return YES;
}

-(BOOL)selectionSortWithArray:(int *)array Size:(int)size {
    for(int i = 0; i < size; i++) {
        int min = i;
        for(int j = i + 1; j < size; j++) {
            if(array[j] < array[min]) {
                min = j;
            }
        }
    
        [self exchangeWithArray:array Index1:min Index2:i];
    }
    
    
    
    return YES;
}

-(BOOL)insertionSortWithArray:(int *)array Size:(int)size {
    for(int i = 1; i < size; i++) {
        for(int j = i; j > 0; j--) {
            if(array[j] > array[j-1]) {
                break;
            }
            [self exchangeWithArray:array Index1:j Index2:j-1];
        }
    }
    
    return YES;
}

-(BOOL)shellSortWithArray:(int *)array Size:(int)size {
    
    return YES;
}

#pragma mark -- public method
-(BOOL)exchangeWithArray:(int *)array Index1:(int)idx1 Index2:(int)idx2 {
    int temp = array[idx1];
    array[idx1] = array[idx2];
    array[idx2] = temp;    
    return YES;
}




#pragma mark -- init
-(id)init {
    self = [super init];
    
    if(self) {
        _firstName = @"Hertz";
    }
    
    return self;
}
@end
