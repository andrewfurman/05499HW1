//
//  Tweet.h
//  Homework1
//
//  Created by Andrew Furman on 3/4/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Tweet : NSObject

@property (readwrite, strong) NSString* content;
@property (nonatomic, readwrite) double latitude;
@property (nonatomic, readwrite) double longitude;
@property (readwrite, strong) NSDate* timestamp;

+ (double) defaultLat;
+ (double) defaultLon;
- (id) initWithContent:(NSString*)content
          withLatitude:(double)latitude
          andLongitude:(double)longitude;
- (id) initWithContent:(NSString*)content;

@end
