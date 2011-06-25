//
//  GameState.m
//  SocialBlocks
//
//  Created by User on 28.05.11.
//  Copyright 2011 Home. All rights reserved.
//

#import "GameState.h"
#import "BundleBox.h"

@implementation GameState

@synthesize gameArea, currentBundle, nextBundle, score, state;

- (id)initGameState 
{
    score = 0;
    state = GAME_PAUSE;
    gameArea = [[NSMutableDictionary alloc] init];
    return self;
}

- (void)addNewBunddle:(BundleBox*)bundle
{
    if ([self currentBundle]!=nil) {
        [[self currentBundle] killMyself];
    }
    
    [self setCurrentBundle:bundle];        
}


@end
