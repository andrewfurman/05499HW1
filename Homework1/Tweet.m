//
//  Tweet.m
//  Homework1
//
//  Created by Andrew Furman on 3/4/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Tweet.h"

@implementation Tweet

@synthesize content = _content;
@synthesize latitude = _latitude;
@synthesize longitude = _longitude;
@synthesize timestamp = _timestamp;

+ (double) defaultLat {
    return 0.0f;
}

+ (double) defaultLon {
    return 1.0f;
}

- (id) initWithContent:(NSString*)content
          withLatitude:(double)latitude
          andLongitude:(double)longitude {
    if (self = [super init]) {
        _content = content;
        _latitude = latitude;
        _longitude = longitude;
        _timestamp = [NSDate date];
    }
    return self;
}

- (id) initWithContent:(NSString*)content {
    return [self initWithContent:content
                    withLatitude:[Tweet defaultLat] 
                    andLongitude:[Tweet defaultLon]];
}

@end
