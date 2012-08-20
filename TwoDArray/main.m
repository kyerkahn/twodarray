//
//  main.m
//  TwoDArray
//
//  Created by Арслан Загидуллин on 15.08.12.
//  Copyright (c) 2012 Арслан Загидуллин. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Array2d.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        Array2D *a2d = [[Array2D alloc] init:3 :3];
        [a2d show];
        
    }
    return 0;
}

