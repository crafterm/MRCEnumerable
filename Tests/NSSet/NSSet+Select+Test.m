//
//  NSSet+Select+Test.m
//  MRCEnumerable
//
//  Created by Marcus Crafter on 16/11/10.
//  Copyright 2010 Red Artisan. All rights reserved.
//

@interface NSSet_Select_Test : XCTestCase
@end

@implementation NSSet_Select_Test

- (void)testSelectShouldCollectElementsReturningTrueWithTheSuppliedBlock {
    NSSet * set = [NSSet setWithObjects:@"dog", @"mouse", nil];
    NSSet * results = [set select:^(id obj) {
        return (BOOL)([obj length] == 3);
    }];
    NSSet * expected = [NSSet setWithObject:@"dog"];
    XCTAssertEqualObjects(expected, results, @"should be equal");
}

@end
