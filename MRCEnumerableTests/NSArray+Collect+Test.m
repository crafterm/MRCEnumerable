//
//  NSArray+Collect+Test.m
//  MRCEnumerable
//
//  Created by Marcus Crafter on 16/11/10.
//  Copyright 2010 Red Artisan. All rights reserved.
//

@interface NSArray_Collect_Test : XCTestCase
@end

@implementation NSArray_Collect_Test

- (void)testCollectShouldCallTheBlockOverEachElementCollectingResults {
    NSArray * array = [NSArray arrayWithObjects:@"dog", @"mouse", nil];
    NSArray * results = [array collect:^(id obj) {
        return [NSString stringWithFormat:@"%@ %d", obj, [obj length]];
    }];
    NSArray * expected = [NSArray arrayWithObjects:@"dog 3", @"mouse 5", nil];
    XCTAssertEqualObjects(expected, results, @"should be equal");
}

@end
