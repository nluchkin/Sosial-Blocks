//
//  BoxView.h
//  SocialBlocks
//
//  Created by User on 22.05.11.
//  Copyright 2011 Home. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface BoxView : UIView {
	int x;
	int y;
	int color;
    float duration;
}

-(void) moveLeft;
-(void) moveRight;
-(void) moveDown;
-(void) changeColor;

-(id) initBoxView:(int)_color withX:(int)_x withY:(int)_y;

@property int x;
@property int y;
@property int color;
@property float duration;

@end

