//
//  GameView.h
//  SocialBlocks
//
//  Created by User on 28.05.11.
//  Copyright 2011 Home. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GameState.h"
#import "BundleBox.h"
#import "BoxView.h"


@interface GameView : UIView {

}

-(id) initWithGameState:(GameState*)gameState withFrame:(CGRect)frame;

-(id) renderGameArea:(GameState*)gameState;
-(id) renderScore:(GameState*)gameState;
-(id) renderState:(GameState*)gameState;
-(id) renderNextBundle:(GameState*)gameState;

@end
