//
//  Array2D.m
//  TwoDArray
//
//  Created by Арслан Загидуллин on 20.08.12.
//  Copyright (c) 2012 Арслан Загидуллин. All rights reserved.
//

#import "Array2D.h"

@implementation Array2D {
    float ***arr;
}

- (id) init:(unsigned)w :(unsigned)h {
    
    width = w;
    height = h;
    
    self = [super init];
    if (self) {
        arr = malloc(height * sizeof(void *));
        for (unsigned i=0; i<height; i++) {
            arr[i] = malloc(width * sizeof(void *));
            for (unsigned j=0; j<width; j++) {
                arr[i][j] = malloc(4 * sizeof(float));
                arr[i][j][0] = 0.1;
                arr[i][j][1] = 0.2;
                arr[i][j][2] = 0.3;
                arr[i][j][3] = 0.4;
            }
        }
    }
    return self;
}

- (void) show {
    for (unsigned i=0; i<height; i++) {
        for (unsigned j=0; j<width; j++)
            printf("[%f,%f,%f,%f]", arr[i][j][0], arr[i][j][1], arr[i][j][2], arr[i][j][3]);
        printf("\n");
    }
}

- (void) put:(const float *)value to:(unsigned)x :(unsigned)y {
    [self outOfBoundsChecker:x:y];
    //[self putComponent:value to:x :y];
    memcpy(arr[y][x], value, 4*sizeof(float));
}

- (float *) get:(unsigned int)x :(unsigned int)y {
    [self outOfBoundsChecker:x:y];
    
    float *value = malloc(4*sizeof(float));
    memcpy(value, arr[y][x], 4*sizeof(float));
    
    return value;
}

// CHECKERS

- (void) outOfBoundsChecker:(unsigned)x :(unsigned)y {
    @try {
        if (x>=width)
            [NSException raise:@"Out of bounds" format:@"X %d must not be higher than %d", x, width];
        if (y>=height)
            [NSException raise:@"Out of bounds" format:@"Y %d must not be higher than %d", y, height];
    }
    @catch (NSException *exception) {
        NSLog(@"outOfBoundsChecker: Caught %@: %@", [exception name], [exception reason]);
        exit(1);
    }
}

// UTILS

- (void) putComponent:(const float *)component to:(unsigned)x :(unsigned)y {
    for (int i=0; i<4; i++)
        arr[y][x][i] = component[i];
}

@end
