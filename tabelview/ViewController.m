//
//  ViewController.m
//  tabelview
//
//  Created by macserver on 2/1/17.
//  Copyright © 2017 macserver. All rights reserved.
//

#import "ViewController.h"
#import "ceeTableViewCell.h"

@interface ViewController ()
{
NSArray *content;
    NSMutableArray * array,*aa;
    int selectedIndexPath;
    
    BOOL iin;
   
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
////////////    UITableViewCell     ////////////
    
    content = [NSArray arrayWithObjects:@"A", @"B", @"C",@"D",@"F",@"G",@"H",nil];
    
   
    
   
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [content  count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    
    ceeTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
                cell.labelot.text=[content objectAtIndex:indexPath.row];
    
    return cell;
}




-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    
       ceeTableViewCell *cell=[tableView cellForRowAtIndexPath:indexPath];
    
    selectedIndexPath = indexPath.row;
    NSLog(@"index %ld",(long)indexPath.row);
    
    if (selectedIndexPath==0)
    {
        NSLog(@"A is replaced by 0");
          cell.labelot.text=@"0";
          }
    
   else if (selectedIndexPath==1) {
       NSLog(@"B is replaced by 1");
        cell.labelot.text=@"1";
    }
    
  else  if (selectedIndexPath==2) {
        NSLog(@"c is replaced by 2");
      cell.labelot.text=@"2";
    }
    
   else if (selectedIndexPath==3) {
        NSLog(@"d is replaced by 3");
       cell.labelot.text=@"3";
    }
    
   else if (selectedIndexPath==4) {
        NSLog(@"e is replaced by 4");
       cell.labelot.text=@"4";
    }
    
  else  if (selectedIndexPath==5) {
        NSLog(@"f is replaced by 5");
      cell.labelot.text=@"5";

    }
    
  else  if (selectedIndexPath==6) {
        NSLog(@"g is replaced by 6");
      cell.labelot.text=@"6";
    }

}

-(void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath
{
    ceeTableViewCell *cell=[tableView cellForRowAtIndexPath:indexPath];
    
    int cellforRowatindexpath =indexPath.row ;
    
    NSLog(@"Index = %ld",(long)indexPath.row);
    
    if (selectedIndexPath==0)
    {
        NSLog(@"A is replaced by 0");
        cell.labelot.text=@"A";
    }
    
    else if (selectedIndexPath==1) {
        NSLog(@"B is replaced by 1");
        cell.labelot.text=@"B";
    }
    
    else  if (selectedIndexPath==2) {
        NSLog(@"c is replaced by 2");
        cell.labelot.text=@"C";
    }
    
    else if (selectedIndexPath==3) {
        NSLog(@"d is replaced by 3");
        cell.labelot.text=@"D";
    }
    
    else if (selectedIndexPath==4) {
        NSLog(@"e is replaced by 4");
        cell.labelot.text=@"E";
    }
    
    else  if (selectedIndexPath==5) {
        NSLog(@"f is replaced by 5");
        cell.labelot.text=@"F";
        
    }
    
    else  if (selectedIndexPath==6) {
        NSLog(@"g is replaced by 6");
        cell.labelot.text=@"G";
    }

    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
