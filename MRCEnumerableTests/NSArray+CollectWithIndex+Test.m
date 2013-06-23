//
//  NSArray+CollectWithIndex+Test.m
//  MRCEnumerable
//
//  Created by Marcus Crafter on 16/11/10.
//  Copyright 2010 Red Artisan. All rights reserved.
//

@interface NSArray_CollectWithIndex_Test : XCTestCase
@end

@implementation NSArray_CollectWithIndex_Test

- (void)testCollectShouldCallTheBlockOverEachElementCollectingResults {
    NSArray * array = [NSArray arrayWithObjects:@"dog", @"mouse", nil];
    NSArray * results = [array collectWithIndex:^(id obj, NSUInteger idx) {
        return [NSString stringWithFormat:@"%@ %d", obj, idx];
    }];
    NSArray * expected = [NSArray arrayWithObjects:@"dog 0", @"mouse 1", nil];
    XCTAssertEqualObjects(expected, results, @"should be equal");
}

@end
