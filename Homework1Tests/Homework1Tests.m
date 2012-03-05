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
                                   andLongitude:10.0f];
    testTweet2 = [[Tweet alloc] initWithContent:@"Second Tweet!"];
}

- (void)tearDown
{
    // Tear-down code here.
    
    [super tearDown];
}

- (void)testIfTweetsNil
{
    //Tests to show tweets are not nil
    STAssertNotNil(testTweet1,@"1st tweet is nil");
    STAssertNotNil(testTweet2,@"2nd tweet is nil");
}

- (void)testLonLatAssignments
{
    //Test declared values of longitude and latitude
    STAssertEquals(testTweet1.latitude, (double)5.0f, @"Latitude should be 5");
    STAssertEquals(testTweet1.longitude, (double)10.0f,@"Longitude should be 10");
    
    //Test Default Values of longitude and latitude
    STAssertEquals(testTweet2.latitude, (double)0.0f,@"Default Latitude should be 0");
    STAssertEquals(testTweet2.longitude, (double)1.0f,@"Default Longitude should be 1");
}
    
- (void)testDates
{
    //Test that dates are the right default
    NSDateComponents *expectedComponents1 = [[NSCalendar currentCalendar] components:NSDayCalendarUnit | NSMonthCalendarUnit | NSYearCalendarUnit fromDate:[NSDate date]];
    NSDateComponents *actualComponents1 = [[NSCalendar currentCalendar] components:NSDayCalendarUnit | NSMonthCalendarUnit | NSYearCalendarUnit fromDate:testTweet1.timestamp];
    
    STAssertEquals([expectedComponents1 day], [actualComponents1 day],@"The days are equal");
    STAssertEquals([expectedComponents1 month], [actualComponents1 month],@"The days are equal");
    STAssertEquals([expectedComponents1 year], [actualComponents1 year],@"The days are equal");
    
    NSDateComponents *expectedComponents2 = [[NSCalendar currentCalendar] components:NSDayCalendarUnit | NSMonthCalendarUnit | NSYearCalendarUnit fromDate:[NSDate date]];
    NSDateComponents *actualComponents2 = [[NSCalendar currentCalendar] components:NSDayCalendarUnit | NSMonthCalendarUnit | NSYearCalendarUnit fromDate:testTweet2.timestamp];
    
    STAssertEquals([expectedComponents2 day], [actualComponents2 day],@"The days are equal");
    STAssertEquals([expectedComponents2 month], [actualComponents2 month],@"The days are equal");
    STAssertEquals([expectedComponents2 year], [actualComponents2 year],@"The days are equal");
    
}

@end
