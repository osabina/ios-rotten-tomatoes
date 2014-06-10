//
//  DVDViewController.m
//  RottenTomatoes
//
//  Created by Osvaldo Sabina on 6/9/14.
//  Copyright (c) 2014 Ozzie Sabina. All rights reserved.
//

#import "DVDViewController.h"
#import "TableViewCell.h"

@interface DVDViewController ()
@property (strong, nonatomic) IBOutlet UITableView *tableView;

@property (nonatomic) NSArray *movies;

@end

@implementation DVDViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = @"DVDs";
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;

    NSString *url = @"http://api.rottentomatoes.com/api/public/v1.0/lists/dvds/top_rentals.json?apikey=nctwhbfyy2rvbgzu2x4fq6c6";
    
    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:url]];
    [NSURLConnection sendAsynchronousRequest:request queue:[NSOperationQueue mainQueue] completionHandler:^(NSURLResponse *response, NSData *data, NSError *connectionError) {
        id object = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
        NSLog(@"%@", object);
        
        self.movies = object[@"movies"];
        [self.tableView reloadData];
    }];

    [self.tableView registerNib:[UINib nibWithNibName:@"TableViewCell" bundle:nil] forCellReuseIdentifier:@"TableViewCell"];
    
    self.tableView.rowHeight = 150;

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark -- Table view methods

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.movies.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"TableViewCell"];
    
    NSDictionary *movie = self.movies[indexPath.row];
    
    cell.movieTitleLable.text = movie[@"title"];
    cell.synopsisTable.text = movie[@"synopsis"];
    return cell;
}

@end
