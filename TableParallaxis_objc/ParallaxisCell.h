//
//  ParallaxisCell.h
//  TableParallaxis_objc
//
//  Created by binsonchang on 2017/6/2.
//  Copyright © 2017年 tw.com.binson. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ParallaxisCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *backgroundImgV;

+(instancetype)dequeueReusableParallaxisCell:(UITableView*)tableView;

-(void)cellOnTableView:(UITableView*)tableView didScrollView:(UIView*)view;

@end
