//
//  NSArray+EachWithIndex+Test.m
//  MRCEnumerable
//
//  Created by Marcus Crafter on 16/11/10.
//  Copyright 2010 Red Artisan. All rights reserved.
//

@interface NSArray_EachWithIndex_Test : XCTestCase
@end

@implementation NSArray_EachWithIndex_Test

- (void)testEachShouldCallTheBlockOverEachElement {
    NSArray * array = [NSArray arrayWithObject:@"dog"];
    [array eachWithIndex:^(id obj, NSUInteger idx) {
        XCTAssertEquals(@"dog", obj, @"should be equal");
        XCTAssertTrue(0 == idx, @"index should equal");
    }];
}

@end
