//
//  NSSet+CollectWithIndex+Test.m
//  MRCEnumerable
//
//  Created by Marcus Crafter on 16/11/10.
//  Copyright 2010 Red Artisan. All rights reserved.
//

@interface NSSet_CollectWithIndex_Test : GHTestCase
@end

@implementation NSSet_CollectWithIndex_Test

- (void)testCollectShouldCallTheBlockOverEachElementCollectingResults {
    NSSet * set = [NSSet setWithObjects:@"dog", @"mouse", nil];
    NSSet * results = [set collectWithIndex:^(id obj, NSUInteger idx) {
        return [NSString stringWithFormat:@"%@ %d", obj, idx];
    }];
    NSSet * expected = [NSSet setWithObjects:@"dog 0", @"mouse 1", nil];
    GHAssertEqualObjects(expected, results, @"should be equal");
}

@end
