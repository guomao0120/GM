//
//  SecontCell.h
//  第六天网络请求作业
//
//  Created by lanou3g on 16/3/4.
//  Copyright © 2016年 陈林林. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Secont.h"
#import "First.h"
@interface SecontCell : UITableViewCell

@property(nonatomic,strong)UIImageView *imgView1;
@property(nonatomic,strong) UILabel *teitelLabel1;
@property(nonatomic,strong) UILabel *teite2lLabel;
@property(nonatomic,strong) UILabel *shijianLbel;
@property(nonatomic,strong) UILabel *descLabel;

@property(nonatomic,strong)First *first;

@property(nonatomic,strong)Secont *secont;
@end
