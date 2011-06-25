//
//  GameView.m
//  SocialBlocks
//
//  Created by User on 28.05.11.
//  Copyright 2011 Home. All rights reserved.
//

#import "GameView.h"

@implementation GameView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
     }
    return self;
}

-(id) initWithGameState:(GameState*)gameState withFrame:(CGRect)frame
{
    self = [self initWithFrame:frame];
    
    for (id box in [[gameState currentBundle] bundle]) {
        [self addSubview:box];
    }
    
    return self;
}

-(id) renderGameArea:(GameState*)gameState
{
    return self;
}
-(id) renderScore:(GameState*)gameState
{
    return self;
}
-(id) renderState:(GameState*)gameState
{
    return self;
}
-(id) renderNextBundle:(GameState*)gameState
{
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

- (void)dealloc
{
    [super dealloc];
}

@end
