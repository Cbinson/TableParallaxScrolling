//
//  ViewController.m
//  TableParallaxis_objc
//
//  Created by binsonchang on 2017/6/2.
//  Copyright © 2017年 tw.com.binson. All rights reserved.
//

#import "ViewController.h"
#import "ParallaxisCell.h"

@interface ViewController ()
{

}


@property (weak, nonatomic) IBOutlet UITableView *mainTableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    self.mainTableView.rowHeight = 200;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    ParallaxisCell *cell = [ParallaxisCell dequeueReusableParallaxisCell:tableView];
    cell.backgroundImgV.image = [UIImage imageNamed:[NSString stringWithFormat:@"%ld",indexPath.row + 1]];

    return cell;
}

-(void)scrollViewDidScroll:(UIScrollView *)scrollView {
    //可見view
    NSArray *visibleCells = [self.mainTableView visibleCells];

    for (ParallaxisCell *cell in visibleCells) {
        [cell cellOnTableView:self.mainTableView didScrollView:self.view];
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
