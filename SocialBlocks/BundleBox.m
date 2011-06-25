//
//  BundleBox.m
//  SocialBlocks
//
//  Created by User on 22.05.11.
//  Copyright 2011 Home. All rights reserved.
//

#import "BundleBox.h"
#import "AlgorythmFactory.h"


@implementation BundleBox

@synthesize bundle;

-(id)initWithBoxes:(BoxView*)box1 secondBox:(BoxView*)box2 thirdBox:(BoxView*)box3 {
	bundle = [[NSMutableArray alloc] initWithCapacity:3];
	
	[bundle insertObject:box1 atIndex:0];
	[bundle insertObject:box2 atIndex:1];
	[bundle insertObject:box3 atIndex:2];
	
	return self;
}

-(void)moveLeft{
	for (id box in bundle) {
		[box moveLeft];
	}
}

-(void)moveRight{
	for (id box in bundle) {
		[box moveRight];
	}
}

-(void)moveDown{
	for (id box in bundle) {
		[box moveDown];
	}
}

-(void)changeColors{
	[self setBundle:[AlgorythmFactory shiftBundleBox:[self bundle]]];
}

-(void)killBox:(int)index{
	[bundle removeObjectAtIndex:index];
}

-(void)killMyself{
	[self dealloc];
}

@end
