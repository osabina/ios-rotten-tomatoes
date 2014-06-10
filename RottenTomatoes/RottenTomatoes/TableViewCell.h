//
//  TableViewCell.h
//  RottenTomatoes
//
//  Created by Osvaldo Sabina on 6/6/14.
//  Copyright (c) 2014 Ozzie Sabina. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *movieTitleLable;
@property (weak, nonatomic) IBOutlet UILabel *synopsisTable;
@property (weak, nonatomic) IBOutlet UIImageView *posterView;

@end
