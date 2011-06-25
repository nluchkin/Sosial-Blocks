//
//  AlgorythmFactory.h
//  SocialBlocks
//
//  Created by User on 22.05.11.
//  Copyright 2011 Home. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BundleBox.h"
#import "BoxView.h"


@interface AlgorythmFactory : NSObject {

}

+(BOOL) canMoveRight:(NSMutableDictionary*)gameArea withBundleBox:(BundleBox*)bundleBox;

+(BOOL) canMoveLeft:(NSMutableDictionary*)gameArea withBundleBox:(BundleBox*)bundleBox;

+(BOOL) canMoveDown:(NSMutableDictionary*)gameArea withBundleBox:(BundleBox*)bundleBox;

+(NSMutableDictionary*) eraseGameArea:(NSMutableDictionary*)gameArea;

+(NSMutableArray*) shiftBundleBox:(NSMutableArray*)bundleBox;

@end
