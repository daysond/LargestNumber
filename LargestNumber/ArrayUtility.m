//
//  ArrayUtility.m
//  LargestNumber
//
//  Created by Dayson Dong on 2019-02-01.
//  Copyright © 2019 Dayson Dong. All rights reserved.
//

#import "ArrayUtility.h"

@implementation ArrayUtility

+ (NSNumber *)largestNumber:(NSArray *)array {
    
        NSNumber *largest = array[0];
        
        for (id num in array) {
            
            if ([num intValue]> [largest intValue]) {
                largest = num;
            }
        }
        
        
        return largest;
    
}

+ (NSNumber *)smallestNumber:(NSArray *)array {
    
    NSNumber *smallest = array[0];
    
    for (id num in array) {
        
        if ([num intValue] < [smallest intValue]) {
            smallest = num;
        }
    }
    
    
    return smallest;
}

+ (NSNumber *)medianNumber:(NSArray *)array {
    
    NSMutableArray *copy = [[NSMutableArray alloc] initWithArray:array];
    
    while ((int)[copy count] > 2) {
        
        NSNumber *largest = [ArrayUtility largestNumber:copy];
        NSNumber *smallest = [ArrayUtility smallestNumber:copy];
        
        [copy removeObject:largest];
        [copy removeObject:smallest];
        
    }
    
    if ((int)[copy count] == 2) {
        
        NSNumber *median1 = copy[0];
        NSNumber *median2 = copy[1];
        
        NSNumber *median = [NSNumber numberWithInt:([median1 intValue] + [median2 intValue]) /2] ;

        return median;
        
    } else {
        
        NSNumber *median = copy[0];
        
        return median;
    }

}
@end
