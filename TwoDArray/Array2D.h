//
//  Array2D.h
//  TwoDArray
//
//  Created by Арслан Загидуллин on 20.08.12.
//  Copyright (c) 2012 Арслан Загидуллин. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Array2D : NSObject {
    int width;
    int height;
}

@property(readonly) int width;
@property(readonly) int height;

- (id) init:(int)n :(int)m;
- (void) show;

@end
