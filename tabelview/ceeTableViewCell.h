//
//  ceeTableViewCell.h
//  tabelview
//
//  Created by macserver on 2/1/17.
//  Copyright © 2017 macserver. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"

@interface ceeTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *labelot;
@property (weak, nonatomic) IBOutlet UIButton *btnooot;

- (IBAction)buttonact:(id)sender;

@end
