//
//  MasterViewController.m
//  EditableTableViewController
//
//  Created by Tommy MacWilliam on 3/27/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "AddTodoViewController.h"
#import "MasterViewController.h"

@interface MasterViewController ()

@property (strong, nonatomic) NSMutableArray *todos;

@end

@implementation MasterViewController

@synthesize todos = _todos;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = @"TODOs";
        self.todos = [[NSMutableArray alloc] init];
    }
    return self;
}
							
- (void)viewDidLoad
{
    [super viewDidLoad];

    self.navigationItem.leftBarButtonItem = self.editButtonItem;

    UIBarButtonItem *addButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(addTodo)];
    self.navigationItem.rightBarButtonItem = addButton;
}

- (void)viewDidUnload
{
    [super viewDidUnload];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

#pragma mark - Table View

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.todos count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    }

    // set text of cell to be fruit text
    cell.textLabel.text = [self.todos objectAtIndex:indexPath.row];
    
    return cell;
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    return YES;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    // row was deleted
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // update model
        [self.todos removeObjectAtIndex:indexPath.row];
        
        // update view
        [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }
}

- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
    // determine what fruit was moved
    NSString *moved = [self.todos objectAtIndex:fromIndexPath.row];
    
    // remove fruit from previous location in the model
    [self.todos removeObjectAtIndex:fromIndexPath.row];
    
    // re-insert fruit at new locaation in the model
    [self.todos insertObject:moved atIndex:toIndexPath.row];
}

- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    return YES;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // create and show new alertview with a message to the user
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"You selected " 
                                                    message:[self.todos objectAtIndex:indexPath.row] 
                                                   delegate:nil
                                          cancelButtonTitle:@"Thanks!" 
                                          otherButtonTitles:nil];
    [alert show];
}

- (void)addTodo
{
    // create new view controller
    AddTodoViewController* addTodoViewController = [[AddTodoViewController alloc] initWithNibName:@"AddTodoViewController" bundle:nil];
    
    // attach delegate
    addTodoViewController.delegate = self;
    
    // display view controller
    [self.navigationController pushViewController:addTodoViewController animated:YES];
}

- (void)didFinishWithTodo:(NSString *)todo
{
    // update model
    [self.todos addObject:todo];
    
    // update view
    [self.tableView reloadData];
    
    // return to tableview
    [self.navigationController popViewControllerAnimated:YES];
}

@end
