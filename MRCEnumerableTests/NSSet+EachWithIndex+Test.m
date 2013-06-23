//
//  NSSet+EachWithIndex+Test.m
//  MRCEnumerable
//
//  Created by Marcus Crafter on 16/11/10.
//  Copyright 2010 Red Artisan. All rights reserved.
//

@interface NSSet_EachWithIndex_Test : XCTestCase
@end

@implementation NSSet_EachWithIndex_Test

- (void)testEachShouldCallTheBlockOverEachElement {
    NSSet * set = [NSSet setWithObject:@"dog"];
    [set eachWithIndex:^(id obj, NSUInteger idx) {
        XCTAssertEquals(@"dog", obj, @"should be equal");
        XCTAssertTrue(0 == idx, @"index should equal");
    }];
}

@end
