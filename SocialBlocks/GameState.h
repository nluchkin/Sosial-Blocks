//
//  GameState.h
//  SocialBlocks
//
//  Created by User on 28.05.11.
//  Copyright 2011 Home. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BundleBox.h"
#import "GameConstants.h"

@interface GameState : NSObject {

    int state;
    int score;
    BundleBox* currentBundle;
    BundleBox* nextBundle;
    NSMutableDictionary* gameArea;
}

- (id)initGameState;
- (void)addNewBunddle:(BundleBox*)bundle;

@property (retain) NSMutableDictionary* gameArea;
@property (retain) BundleBox* currentBundle;
@property (retain) BundleBox* nextBundle;
@property int state;
@property int score;

@end
