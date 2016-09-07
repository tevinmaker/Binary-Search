//
//  main.m
//  Binary Search
//
//  Created by Tevin Maker on 2016-09-06.
//  Copyright © 2016 Tevin Maker. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        NSArray *sortedArray = [NSArray arrayWithObjects:@1, @3, @4, @6, @9, nil];
        NSNumber *target = @5;
        
        if ([sortedArray containsObject:target]) {
            
        NSLog(@"%lui",(unsigned long)[sortedArray indexOfObjectIdenticalTo:target]);
        
        }
        else {
            NSLog(@"-1");
        }
        
        NSMutableArray *largeArray = [[NSMutableArray alloc] init];
        
        for (int i; i < 1000000; i++) {
           
            [largeArray addObject:@(i)];
        }
        NSDate *methodStart = [NSDate date];
        
        
        
        NSNumber *x = @(999999);
        
        NSLog(@"%lui",(unsigned long)[largeArray indexOfObjectIdenticalTo:x]);
        
        NSDate *methodFinish = [NSDate date];
        NSTimeInterval executionTime = [methodFinish timeIntervalSinceDate:methodStart];
        
        NSLog(@"executionTime = %f", executionTime);
    }
    return 0;
}
