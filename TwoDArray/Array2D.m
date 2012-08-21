//
//  Array2D.m
//  TwoDArray
//
//  Created by Арслан Загидуллин on 20.08.12.
//  Copyright (c) 2012 Арслан Загидуллин. All rights reserved.
//

#import "Array2D.h"

@implementation Array2D 

- (id) init:(int)w :(int)h {
    
    width = w;
    height = h;
    
    self = [super init];
    if (self) {
        arr = malloc(width * height * sizeof(int));
        printf("w:h:sizeof(arr) = %d:%d:%u\n", width, height, sizeof(arr));
        int i, j;
        for (i=0; i<width; i++)
            for (j=0; j<height; j++) {
                printf("%d:%d\n", i, j);
                arr[i][j] = 1;
            }
    }
    return self;
}

- (void) show {
    printf("LOOL\n");
    int i, j;
    for (i=0; i<width; i++) {
        for (j=0; j<height; j++)
            printf("%d,", arr[i][j]);
        printf("\n");
    }
}

- (void) dealloc {
    [super dealloc];
    free(arr);
}

@end
