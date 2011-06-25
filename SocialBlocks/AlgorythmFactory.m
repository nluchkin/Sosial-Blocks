//
//  AlgorythmFactory.m
//  SocialBlocks
//
//  Created by User on 22.05.11.
//  Copyright 2011 Home. All rights reserved.
//

#import "AlgorythmFactory.h"


@implementation AlgorythmFactory

+(BOOL) canMoveRight:(NSMutableDictionary*)gameArea withBundleBox:(BundleBox*)bundleBox {
	return YES;
}

+(BOOL) canMoveLeft:(NSMutableDictionary*)gameArea withBundleBox:(BundleBox*)bundleBox {
	return YES;
}

+(BOOL) canMoveDown:(NSMutableDictionary*)gameArea withBundleBox:(BundleBox*)bundleBox {
	return YES;
}

+(NSMutableDictionary*) eraseGameArea:(NSMutableDictionary*)gameArea {
	return gameArea;
}

+(NSMutableArray*) shiftBundleBox:(NSMutableArray*)bundle{
	
	int colorN = [((BoxView*) [bundle objectAtIndex:[bundle count]-1]) color];
	
	for (int i=[bundle count]-1; i>0; i--) {
		BoxView* currentBox = (BoxView*) [bundle objectAtIndex:i];
		BoxView* previousBox = (BoxView*) [bundle objectAtIndex:i-1];
		[currentBox setColor:[previousBox color]];
	}
	
    [((BoxView*) [bundle objectAtIndex:0]) setColor:colorN];								 
	
	return bundle;
}

@end
