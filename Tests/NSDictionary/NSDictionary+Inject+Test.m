//
//  NSDictionary+Inject+Test.m
//  MRCEnumerable
//
//  Created by Marcus Crafter on 18/11/10.
//  Copyright 2010 Red Artisan. All rights reserved.
//

@interface NSDictionary_Inject_Test : XCTestCase
@end

@implementation NSDictionary_Inject_Test

// it should call the block over each element, passing the results of previous block to the next

- (void)testInjectShouldCallTheBlockOverEachElementPassingPreviousResultToNext {
    NSDictionary * dict = [NSDictionary dictionaryWithObjectsAndKeys:@"dog", @"animal", nil];
    NSString * result = [dict inject:@"" :^(id m, id key, id obj) {
        return (id)[m stringByAppendingFormat:@"%@ %@", key, obj];
    }];
    XCTAssertEqualObjects(@"animal dog", result, @"should be equal");
}

@end
