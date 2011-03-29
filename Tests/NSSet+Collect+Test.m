//
//  NSSet+Collect+Test.m
//  MRCEnumerable
//
//  Created by Marcus Crafter on 16/11/10.
//  Copyright 2010 Red Artisan. All rights reserved.
//

@interface NSSet_Collect_Test : GHTestCase
@end

@implementation NSSet_Collect_Test

- (void)testCollectShouldCallTheBlockOverEachElementCollectingResults {
    NSSet * set = [NSSet setWithObjects:@"dog", @"mouse", nil];
    NSSet * results = [set collect:^(id obj) {
        return [NSString stringWithFormat:@"%@ %d", obj, [obj length]];
    }];
    NSSet * expected = [NSSet setWithObjects:@"dog 3", @"mouse 5", nil];
    GHAssertEqualObjects(expected, results, @"should be equal");
}

@end
