//
//  Sort.m
//  Algorithm
//
//  Created by Hertz on 5/27/16.
//  Copyright © 2016 Hertz. All rights reserved.
//

#import "Sort.h"

@implementation Sort
-(BOOL)bubbleSortWithArray:(int *)array Size:(int)size {
    for(int i = 0; i < size; i++) {
        for(int j = 0; j < size - i - 1; j++) {
            if(array[j] > array[j+1]) {
                int temp = array[j];
                array[j] = array[j+1];
                array[j+1] = temp;
            }
        }
    }
    
    return YES;
}
@end
