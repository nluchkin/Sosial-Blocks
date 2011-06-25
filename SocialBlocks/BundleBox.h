//
//  BundleBox.h
//  SocialBlocks
//
//  Created by User on 22.05.11.
//  Copyright 2011 Home. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BoxView.h"

@interface BundleBox : NSObject {

	NSMutableArray* bundle;
}

-(id)initWithBoxes:(BoxView*)box1 secondBox:(BoxView*)box2 thirdBox:(BoxView*)box3;

-(void)moveLeft;
-(void)moveRight;
-(void)moveDown;

-(void)changeColors;
-(void)killBox:(int)index;

-(void)killMyself;

@property (retain) NSMutableArray* bundle;

@end
