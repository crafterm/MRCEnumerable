//
//  NSSet+Inject+Test.m
//  MRCEnumerable
//
//  Created by Marcus Crafter on 16/11/10.
//  Copyright 2010 Red Artisan. All rights reserved.
//

@interface NSSet_Inject_Test : XCTestCase
@end

@implementation NSSet_Inject_Test

// it should call the block over each element, passing the results of previous block to the next

- (void)testInjectShouldCallTheBlockOverEachElementPassingPreviousResultToNext {
    NSSet * set = [NSSet setWithObjects:@"dog", @"mouse", nil];
    NSSet * results = [set inject:[NSMutableDictionary dictionary] :^(id m, id obj) {
        [m setValue:[NSString stringWithFormat:@"%d", [obj length]] forKey:obj];
        return m;
    }];
    NSDictionary * expected = [NSDictionary dictionaryWithObjectsAndKeys:@"3", @"dog", @"5", @"mouse", nil];
    XCTAssertEqualObjects(expected, results, @"should be equal");
}

// it should use the first element in the set as the initial result when not provided

- (void)testInjectShouldUseTheFirstElementInTheArrayAsTheInitialWhenNotProvided {
    NSSet * set = [NSSet setWithObjects:@"", @"dog", @"mouse", nil];
    NSString * results = [set inject:nil :^(id m, id obj) {
        return (id)[m stringByAppendingString:obj];
    }];
    XCTAssertEqualObjects(@"dogmouse", results, @"should be equal");
}

@end
