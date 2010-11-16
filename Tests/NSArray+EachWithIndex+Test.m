//
//  NSArray+EachWithIndex+Test.m
//  MRCEnumerable
//
//  Created by Marcus Crafter on 16/11/10.
//  Copyright 2010 Red Artisan. All rights reserved.
//

@interface NSArray_EachWithIndex_Test : GHTestCase
@end

@implementation NSArray_EachWithIndex_Test

- (void)testEachShouldCallTheBlockOverEachElement {
    NSArray * array = [NSArray arrayWithObject:@"dog"];
    [array eachWithIndex:^(id obj, NSUInteger idx) {
        GHAssertEquals(@"dog", obj, @"should be equal");
        GHAssertTrue(0 == idx, @"index should equal");
    }];
}

@end
