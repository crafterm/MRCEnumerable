//
//  NSArray+FirstObject+Test.m
//  MRCEnumerable
//
//  Created by Marcus Crafter on 16/11/10.
//  Copyright 2010 Red Artisan. All rights reserved.
//

@interface NSArray_FirstObject_Test : XCTestCase
@end

@implementation NSArray_FirstObject_Test

- (void)testFirstObjectShouldReturnNilWhenEmpty {
    NSArray * emptyArray = [NSArray array];
    XCTAssertNil([emptyArray firstObject], @"should be nil");
}

- (void)testFirstObjectShouldReturnFirstObjectWhenNonEmpty {
    NSArray * nonEmptyArray = [NSArray arrayWithObject:@"element"];
    XCTAssertEquals([nonEmptyArray objectAtIndex:0], [nonEmptyArray firstObject], @"should be equal");
}

@end
