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
    Tweet *shortTweet;
    Tweet *longTweet;
    Tweet *perfectTweet;
}

- (void)setUp
{
    [super setUp];
    
    // Set-up code here.
    testTweet1 = [[Tweet alloc] initWithContent:@"first tweet!"
                                   withLatitude:5.0f
                                   andLongitude:10.0f];
    testTweet2 = [[Tweet alloc] initWithContent:@"Second Tweet!"];
    
    shortTweet = [[Tweet alloc] initWithContent:@"this tweet is 141 characters long wrgergerigeoirgioejrgiojergijerigjeorigjoeirjgoiegiowefijwefijweiofjwoiejfoiwejfiowejfoiwefjwioefjwioefji"];
    perfectTweet = [[Tweet alloc] initWithContent:@"this tweet is 141 characters long wrgergerigeoirgioejrgiojergijerigjeorigjoeirjgoiegiowefijwefijweiofjwoiejfoiwejfiowejfoiwefjwioefjwioefjio"];
    longTweet = [[Tweet alloc] initWithContent:@"this tweet is 141 characters long wrgergerigeoirgioejrgiojergijerigjeorigjoeirjgoiegiowefijwefijweiofjwoiejfoiwejfiowejfoiwefjwioefjwioefjioo"];
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

- (void)testTweetLength
{
    STAssertNotNil(shortTweet,@"This short tweet should not be nil");
    STAssertNotNil(shortTweet,@"This 140 char tweet should not be nil");
    STAssertNil(longTweet,@"This tweet should be nil");
}

- (void)testlatLon
{
    testTweet1.latitude = 190.0;
    STAssertEquals(testTweet1.latitude, (double)5.0f, @"Setting a valid latitude didn't work");
    testTweet1.latitude = 90.1f;
    STAssertEquals(testTweet1.latitude, (double)5.0f, @"Setting an improper value worked");
    
    testTweet1.longitude = 31.0f;
    STAssertEquals(testTweet1.longitude, (double)31.0f, @"Setting a valid latitude didn't work");
    testTweet1.longitude = 180.1f;
    STAssertEquals(testTweet1.longitude, (double)31.0f, @"Setting an improper value worked");
}

@end
