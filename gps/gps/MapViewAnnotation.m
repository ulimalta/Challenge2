//
//  MapViewAnnotation.m
//  gps
//
//  Created by Ulisses Malta Santos on 20/01/14.
//  Copyright (c) 2014 Ulisses Malta Santos. All rights reserved.
//

#import "MapViewAnnotation.h"


@interface MapViewAnnotation()

@property (nonatomic, readwrite) CLLocationCoordinate2D coordinate;

@end

@implementation MapViewAnnotation

- (id)initWithTitle:(NSString *)ttl andCoordinate:(CLLocationCoordinate2D)c2d {
	self = [super init];
	if (self) {
        self.title = ttl;
        self.coordinate = c2d;
    }
	return self;
}

@end
