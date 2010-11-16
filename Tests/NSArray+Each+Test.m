//
//  NSArray+Each+Test.m
//  MRCEnumerable
//
//  Created by Marcus Crafter on 16/11/10.
//  Copyright 2010 Red Artisan. All rights reserved.
//

@interface NSArray_Each_Test : GHTestCase
@end

@implementation NSArray_Each_Test

- (void)testEachShouldCallTheBlockOverEachElement {
    NSArray * array = [NSArray arrayWithObject:@"dog"];
    [array each:^(id obj) {
        GHAssertEquals(@"dog", obj, @"should be equal");
    }];
}

@end
