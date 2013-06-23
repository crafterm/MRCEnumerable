//
//  NSSet+Reject+Test.m
//  MRCEnumerable
//
//  Created by Marcus Crafter on 16/11/10.
//  Copyright 2010 Red Artisan. All rights reserved.
//

@interface NSSet_Reject_Test : XCTestCase
@end

@implementation NSSet_Reject_Test

- (void)testRejectShouldCollectElementsReturningFalseWithTheSuppliedBlock {
    NSSet * set = [NSSet setWithObjects:@"dog", @"mouse", nil];
    NSSet * results = [set reject:^(id obj) {
        return (BOOL)([obj length] == 3);
    }];
    NSSet * expected = [NSSet setWithObject:@"mouse"];
    XCTAssertEqualObjects(expected, results, @"should be equal");
}

@end
