//
//  ViewController.m
//  WWCTest
//
//  Created by plu on 17/4/6.
//  Copyright © 2017年 ls. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic ,strong) NSMutableArray *mStrongArray;
@property (nonatomic ,copy) NSMutableArray * a;

@property (nonatomic ,copy) NSArray * mcopyArray;

@property (nonatomic ,strong) NSArray * mstrongArray;
@end
@implementation ViewController
- (void)viewDidLoad {
    [super viewDidLoad];
//    NSMutableArray* b = [NSMutableArray array];
//    self.a = b;
//    [b removeAllObjects];
//    [self.a  removeAllObjects];
//    NSArray *array = @[@[@"a", @"b"], @[@"c", @"d"]];
//    NSArray *copyArray = [array copy];
//    self.mStrongArray = array;
//    NSLog(@"array %p,copyArray %p,mStrongArray %p",array,copyArray,self.mStrongArray);
//    [self.mStrongArray addObject:@[@"12"]];
    
    
    NSMutableArray *mutableArray = [NSMutableArray arrayWithObjects:@"1",@"2",@"3", nil];
    NSLog(@"mutableArray = %p",mutableArray);//查看mutableArray的地址
    
    NSMutableArray *mutableArray1 = [mutableArray copy];//使用copy方法
    NSLog(@"mutableArray1 is NSMutableArray = %@",[mutableArray1 isKindOfClass:[NSMutableArray class]]?@"YES":@"NO");//查看mutableArray1是否是NSMutableArray
    NSLog(@"copy1 = %p",mutableArray1);//打印地址
    
    NSMutableArray *mutableArray2 = [mutableArray mutableCopy];//使用mutableCopy方法
    NSLog(@"mutableArray2 is NSMutableArray = %@",[mutableArray2 isKindOfClass:[NSMutableArray class]]?@"YES":@"NO");//查看mutableArray2是否是NSMutableArray
    NSLog(@"copy2 = %p",mutableArray2);//打印地址
    
    
    self.mcopyArray = mutableArray;
    NSLog(@"mcopyArray is NSMutableArray = %@",[self.mcopyArray isKindOfClass:[NSMutableArray class]]?@"YES":@"NO");//查看mutableArray2是否是NSMutableArray
    NSLog(@"mcopyArray = %p",self.mcopyArray);//打印地址
    
    self.mstrongArray = mutableArray;
    NSLog(@"mstrongArray is NSMutableArray = %@",[self.mstrongArray isKindOfClass:[NSMutableArray class]]?@"YES":@"NO");//查看mutableArray2是否是NSMutableArray
    NSLog(@"mstrongArray = %p",self.mstrongArray);//打印地址
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
