//
//  AppDelegate.h
//  TableParallaxis_objc
//
//  Created by binsonchang on 2017/6/2.
//  Copyright © 2017年 tw.com.binson. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

