//
//  SocialBlocksViewController.h
//  SocialBlocks
//
//  Created by User on 22.05.11.
//  Copyright 2011 Home. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GameView.h"
#import "GameConstants.h"

@interface SocialBlocksViewController : UIViewController {

    GameView* gameView;
    GameState* gameState;
}

@end
