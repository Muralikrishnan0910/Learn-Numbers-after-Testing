//
//  dragtest4Tests.m
//  dragtest4Tests
//
//  Created by BSA Univ15 on 23/06/14.
//  Copyright (c) 2014 BSA Univ15. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "SEDraggable.h"
#import "SEDraggableLocation.h"
#import "dragViewController.h"

#define OBJECT_WIDTH 50.0f
#define OBJECT_HEIGHT 50.0f
#define MARGIN_VERTICAL 10.0f
#define MARGIN_HORIZONTAL 10.0f
#define DRAGGABLE_LOCATION_WIDTH  ((OBJECT_WIDTH  * 4) + (MARGIN_HORIZONTAL * 5))
#define DRAGGABLE_LOCATION_HEIGHT ((OBJECT_HEIGHT * 4) + (MARGIN_VERTICAL   * 5))
@interface dragtest4Tests : XCTestCase
{
    SEDraggable *drag;
    SEDraggableLocation *dragLoc;
    dragViewController *dv;
}
@end

@implementation dragtest4Tests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    drag=[[SEDraggable alloc]init];
    dragLoc=[[SEDraggableLocation alloc]init];
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"ViewController_iPad" bundle:nil];
        dv = [storyboard instantiateInitialViewController];
       [dv view];
}

-(void)testViewControllerViewExists {
    XCTAssertNotNil([dv topWrapper], @"ViewController should contain a view");
    XCTAssertNotNil([dv bottomWrapper],@"ViewController should contain a view");
}

-(void)testDraggableClass
{
    XCTAssertNotNil(drag, @"Draggable Class Exist");
    
}
-(void)testDraggableLocationClass
{
    XCTAssertNotNil(dragLoc, @"Draggable Location Class Exist");
    
}
@end
