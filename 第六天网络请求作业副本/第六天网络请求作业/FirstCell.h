//
//  FirstCell.h
//  第六天网络请求作业
//
//  Created by lanou3g on 16/3/3.
//  Copyright © 2016年 陈林林. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "First.h"
#import "Secont.h"
@interface FirstCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *descLabel;

@property (weak, nonatomic) IBOutlet UILabel *tetel;

@property (weak, nonatomic) IBOutlet UILabel *tetel2;
@property (weak, nonatomic) IBOutlet UIImageView *imge;
@property (weak, nonatomic) IBOutlet UILabel *shijan;
@property(nonatomic,strong)First *first;
@property(nonatomic,strong) Secont *secont;
@end
