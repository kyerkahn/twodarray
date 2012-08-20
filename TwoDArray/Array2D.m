//
//  Array2D.m
//  TwoDArray
//
//  Created by Арслан Загидуллин on 20.08.12.
//  Copyright (c) 2012 Арслан Загидуллин. All rights reserved.
//

#import "Array2D.h"

@implementation Array2D {
    CGColorRef **arr;
}

- (id) init:(int)w :(int)h {
    
    width = w;
    height = h;
    
    self = [super init];
    if (self) {
        arr = (CGColorRef**)malloc(width * height * sizeof(CGColorRef));
        for (int i=0; i<width; i++)
            for (int j=0; j<height; j++)
                arr[i][j] = CGColorCreateGenericRGB(1.0f, 0.0f, 0.0f, 1.0f);
    }
    return self;
}

- (void) show {
    for (int i=0; i<width; i++) {
        for (int j=0; j<height; j++) {
            const CGFloat *components = CGColorGetComponents(arr[i][j]);
            printf("[%f:%f:%f]", components[0], components[1], components[2]);
        }
        printf("\n");
    }
}

@end
