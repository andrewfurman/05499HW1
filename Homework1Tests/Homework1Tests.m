//
//  Homework1Tests.m
//  Homework1Tests
//
//  Created by Andrew Furman on 3/4/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Homework1Tests.h"
#import "Tweet.h"

@implementation Homework1Tests {
    Tweet *testTweet1;
    Tweet *testTweet2;
}

- (void)setUp
{
    [super setUp];
    
    // Set-up code here.
    testTweet1 = [[Tweet alloc] initWithContent:@"first tweet!"
                                   withLatitude:5.0f
                                  withLongitude:10.0f];
    //testTweet2 = [[Tweet alloc] initWithContent:@"Second Tweet!"];
}

- (void)tearDown
{
    // Tear-down code here.
    
    [super tearDown];
}

- (void)testExample
{
    //Tests to show tweets are not nil
    STAssertNotNil(testTweet1,@"1st tweet is nil");
    STASsertNotNil(testTweet2,@"2nd tweet is nil");
}

@end
