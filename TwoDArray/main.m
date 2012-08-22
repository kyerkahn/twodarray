//
//  main.m
//  TwoDArray
//
//  Created by Арслан Загидуллин on 15.08.12.
//  Copyright (c) 2012 Арслан Загидуллин. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Array2D.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        Array2D *a2d = [[Array2D alloc] init:3 :3];
        
        float rgb1[4] = {0.1f, 0.4f, 0.2f, 1.0f};
        [a2d put:rgb1 to:2 :2];
        
        [a2d show];

        float *rgb2 = [a2d get:2 :2];
        for (int i=0; i<4; i++)
            printf("%f,", rgb2[i]);
    }
    return 0;
}

