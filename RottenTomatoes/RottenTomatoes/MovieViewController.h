//
//  MovieViewController.h
//  RottenTomatoes
//
//  Created by Osvaldo Sabina on 6/6/14.
//  Copyright (c) 2014 Ozzie Sabina. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "EGORefreshTableHeaderView.h"


@interface MovieViewController : UIViewController <EGORefreshTableHeaderDelegate, UITableViewDataSource,UITableViewDelegate>
{
    
EGORefreshTableHeaderView *_refreshHeaderView;

//  Reloading var should really be your tableviews datasource
//  Putting it here for demo purposes
BOOL _reloading;
}

- (void)reloadTableViewDataSource;
- (void)doneLoadingTableViewData;
@end
