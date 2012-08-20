//
//  Array2D.m
//  TwoDArray
//
//  Created by Арслан Загидуллин on 20.08.12.
//  Copyright (c) 2012 Арслан Загидуллин. All rights reserved.
//

#import "Array2D.h"

@implementation Array2D {
    NSMutableArray *arr;
}

-(id)init:(int)i :(int)j {
    self = [super init];
    if (self) {
        arr = [[NSMutableArray alloc] initWithCapacity:i*j];
        
    }
    return self;
}

@end
