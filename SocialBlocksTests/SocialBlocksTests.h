//
//  SocialBlocksTests.h
//  SocialBlocksTests
//
//  Created by User on 22.05.11.
//  Copyright 2011 Home. All rights reserved.
//

#import <SenTestingKit/SenTestingKit.h>

#define COLLUMN_X 6
#define COLLUMN_Y 12

@interface SocialBlocksTests : SenTestCase {
@private
    
}
- (BOOL) compareBundles:(NSMutableArray*)bundle1 secondBundle:(NSMutableArray*)bundle2;
- (BOOL) compareMatrix:(NSMutableDictionary*)matrix1 secondMatrix:(NSMutableDictionary*)matrix2;
- (NSMutableDictionary*) loadMatrix:(NSString*)fileName;
- (void) showBundle:(NSMutableArray*)array;
- (void) showMatrix:(NSMutableDictionary*)matrix;

@end
