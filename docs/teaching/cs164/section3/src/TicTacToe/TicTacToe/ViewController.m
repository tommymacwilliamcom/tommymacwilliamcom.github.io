//
//  ViewController.m
//  TicTacToe
//
//  Created by Tommy MacWilliam on 3/5/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

@synthesize board = _board;
@synthesize gameButton = _gameButton;
@synthesize turn = _turn;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // initialize properties
    self.turn = YES;
    self.board = [[NSMutableArray alloc] init];
    
    // start a new game
    [self game:nil];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

/**
 * Congratulatory alert view is dismissed
 *
 */
- (void) alertView:(UIAlertView *)alertView didDismissWithButtonIndex:(NSInteger)buttonIndex
{
    // start a new game
    [self game:nil];
}

/**
 * Create a new game
 *
 */
- (void)game:(id)sender
{
    // X always goes first
    self.turn = YES;
    
    // clear the previous board
    [self.board removeAllObjects];
    
    // reset button states and initialze board
    for (int i = 1; i <= 9; i++) {
        // clear cell text
        UIButton* cell = (UIButton*)[self.view viewWithTag:i];
        [cell setTitle:@"" forState:UIControlStateNormal];
        
        // represent empty cell with a 0
        [self.board addObject:[NSNumber numberWithInt:0]];
    }
}

/**
 * Make a move on the board
 *
 */
- (void)play:(id)sender
{    
    // get the cell that was tapped
    UIButton* cell = (UIButton*)sender;
    int i = cell.tag - 1;
            
    // make sure cell is blank
    if ([[self.board objectAtIndex:i] intValue] == 0) {
        // X's turn
        if (self.turn) {
            [cell setTitle:@"X" forState:UIControlStateNormal];
            [self.board replaceObjectAtIndex:i withObject:[NSNumber numberWithInt:1]];
        }
        
        // O's turn
        else {
            [cell setTitle:@"O" forState:UIControlStateNormal];
            [self.board replaceObjectAtIndex:i withObject:[NSNumber numberWithInt:2]];
        }
        
        // exchange turns
        self.turn = !self.turn;
    }
    
    // check if game has been won
    if ([self won]) {
        // display congratulatory message
        UIAlertView* alert = [[UIAlertView alloc] initWithTitle:@"Congrats!"
                                                        message:@"You win!" 
                                                       delegate:self
                                              cancelButtonTitle:@"I'm the best"
                                              otherButtonTitles:nil];
        [alert show];
    }
}

/**
 * Check if 3 cells have the same non-blank value (designating a win)
 *
 */
- (BOOL)check:(int)x with:(int)y and:(int)z
{
    // all three cells must be filled in
    if ([[self.board objectAtIndex:x] intValue] == 0 || [[self.board objectAtIndex:y] intValue] == 0 || 
        [[self.board objectAtIndex:z] intValue] == 0) {
        return NO;
    }
    
    // row is a win if cells are the same
    return ([[self.board objectAtIndex:x] intValue] == [[self.board objectAtIndex:y] intValue] &&
            [[self.board objectAtIndex:y] intValue] == [[self.board objectAtIndex:z] intValue]);
}

/**
 * Check if a win is found in any column
 *
 */
- (BOOL)checkColumns
{
    // check each column
    for (int i = 0; i < 3; i++)
        // compare each cell in the column
        if ([self check:i with:(i + 3) and:(i + 6)])
            return YES;
    
    return NO;
}

/**
 * Check if a win is found in any row
 *
 */
- (BOOL)checkRows
{
    // check each row
    for (int i = 0; i < 3; i++)
        // compare each cell in the row
        if ([self check:(i * 3) with:(i * 3 + 1) and:(i * 3 + 2)])
            return YES;
    
    return NO;
}

/**
 * Check if the game has been won
 *
 */
- (BOOL)won
{
    // game is won if row, column, or diagonal is the same
    return [self checkRows] || [self checkColumns] || [self check:0 with:4 and:8] || [self check:2 with:4 and:6];
}

@end
