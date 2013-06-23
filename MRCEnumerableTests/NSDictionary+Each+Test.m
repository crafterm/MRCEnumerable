//
//  NSDictionary+Each+Test.m
//  MRCEnumerable
//
//  Created by Marcus Crafter on 18/11/10.
//  Copyright 2010 Red Artisan. All rights reserved.
//

@interface NSDictionary_Each_Test : XCTestCase
@end

@implementation NSDictionary_Each_Test

- (void)testEachShouldCallTheBlockOverEachElement {
    NSDictionary * dict = [NSDictionary dictionaryWithObjectsAndKeys:@"dog", @"animal", nil];
    [dict each:^(id key, id obj) {
        XCTAssertEquals(@"dog", obj, @"should be equal");
        XCTAssertEquals(@"animal", key, @"should be equal");
    }];
}

@end
