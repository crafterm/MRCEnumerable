//
//  NSArray+Reject+Test.m
//  MRCEnumerable
//
//  Created by Marcus Crafter on 16/11/10.
//  Copyright 2010 Red Artisan. All rights reserved.
//

@interface NSArray_Reject_Test : XCTestCase
@end

@implementation NSArray_Reject_Test

- (void)testSelectShouldCollectElementsReturningFalseWithTheSuppliedBlock {
    NSArray * array = [NSArray arrayWithObjects:@"dog", @"mouse", nil];
    NSArray * results = [array reject:^(id obj) {
        return (BOOL)([obj length] == 3);
    }];
    NSArray * expected = [NSArray arrayWithObject:@"mouse"];
    XCTAssertEqualObjects(expected, results, @"should be equal");
}

@end
