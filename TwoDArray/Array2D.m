//
//  Array2D.m
//  TwoDArray
//
//  Created by Арслан Загидуллин on 20.08.12.
//  Copyright (c) 2012 Арслан Загидуллин. All rights reserved.
//

#import "Array2D.h"

@implementation Array2D {
    int ***arr;
}

- (id) init:(int)w :(int)h {
    
    width = w;
    height = h;
    
    self = [super init];
    if (self) {
        arr = malloc(height * sizeof(int *));
        for (int i=0; i<height; i++) {
            arr[i] = malloc(width * sizeof(int *));
            for (int j=0; j<width; j++) {
                arr[i][j] = malloc(sizeof(int));
                *arr[i][j] = 1;
            }
        }
    }
    return self;
}

- (void) show {
    for (int i=0; i<width; i++) {
        for (int j=0; j<height; j++)
            printf("%d,", *arr[i][j]);
        printf("\n");
    }
}

@end
