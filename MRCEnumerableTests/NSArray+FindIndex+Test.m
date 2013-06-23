//
//  NSArray+FindIndex+Test.m
//  MRCEnumerable
//
//  Created by Marcus Crafter on 27/02/12.
//  Copyright (c) 2012 Red Artisan. All rights reserved.
//

@interface NSArray_FindIndex_Test : XCTestCase
@end

@implementation NSArray_FindIndex_Test

- (void)testFindIndexShouldReturnTheIndexOfTheGivenElementWhenPresent {
    NSArray * array = [NSArray arrayWithObjects:@"dog", @"mouse", nil];
    XCTAssertEquals(1, [array findIndex:@"mouse"], @"should be equal");
}

- (void)testFindIndexShouldReturnFailWhenNotPresent {
    NSArray * array = [NSArray arrayWithObjects:@"dog", @"mouse", nil];
    XCTAssertEquals(-1, [array findIndex:@"cat"],   @"should not be equal");
}

- (void)testFindIndexShouldReturnTheIndexOfTheGivenElementUsingBlockSyntax {
    NSArray * array = [NSArray arrayWithObjects:@"dog", @"mouse", nil];
    XCTAssertEquals(1, [array findIndexWithBlock:^BOOL(id obj) { return [obj isEqualToString:@"mouse"]; }], @"should be equal");
    XCTAssertEquals(-1, [array findIndexWithBlock:^BOOL(id obj) { return [obj isEqualToString:@"cat"]; }], @"should not be equal");
}

@end
