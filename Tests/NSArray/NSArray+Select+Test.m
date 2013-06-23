//
//  NSArray+Select+Test.m
//  MRCEnumerable
//
//  Created by Marcus Crafter on 16/11/10.
//  Copyright 2010 Red Artisan. All rights reserved.
//

@interface NSArray_Select_Test : XCTestCase
@end

@implementation NSArray_Select_Test

- (void)testSelectShouldCollectElementsReturningTrueWithTheSuppliedBlock {
    NSArray * array = [NSArray arrayWithObjects:@"dog", @"mouse", nil];
    NSArray * results = [array select:^(id obj) {
        return (BOOL)([obj length] == 3);
    }];
    NSArray * expected = [NSArray arrayWithObject:@"dog"];
    XCTAssertEqualObjects(expected, results, @"should be equal");
}

@end
