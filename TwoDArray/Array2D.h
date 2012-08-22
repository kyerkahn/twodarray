//
//  Array2D.h
//  TwoDArray
//
//  Created by Арслан Загидуллин on 20.08.12.
//  Copyright (c) 2012 Арслан Загидуллин. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Array2D : NSObject {
    unsigned width;
    unsigned height;
}

@property(readonly) unsigned width;
@property(readonly) unsigned height;

- (id) init:(unsigned)width :(unsigned)height;
- (void) show;

- (void) put:(const float *)value to:(unsigned)x :(unsigned)y;
- (float *) get:(unsigned)x :(unsigned)y;

@end
