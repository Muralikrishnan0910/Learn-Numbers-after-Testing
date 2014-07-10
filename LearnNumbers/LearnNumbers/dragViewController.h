//
//  dragViewController.h
//  LearnNumbers
//
//  Created by BSA Univ15 on 10/07/14.
//  Copyright (c) 2014 BSA Univ15. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TKDragView.h"

@interface dragViewController : UIViewController<TKDragViewDelegate>

@property (nonatomic, strong) NSMutableArray *dragViews;

@property (nonatomic, strong) NSMutableArray *goodFrames;

@property (nonatomic, strong) NSMutableArray *badFrames;

@property BOOL canDragMultipleViewsAtOnce;

@property BOOL canUseTheSameFrameManyTimes;

@end
