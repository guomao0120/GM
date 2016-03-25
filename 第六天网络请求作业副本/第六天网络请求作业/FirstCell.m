//
//  FirstCell.m
//  第六天网络请求作业
//
//  Created by lanou3g on 16/3/3.
//  Copyright © 2016年 陈林林. All rights reserved.
//

#import "FirstCell.h"
#import "UIImageView+WebCache.h"

@implementation FirstCell

-(void)setFirst:(First *)first{
    self.tetel.text =first.title;
    self.tetel2.text =first.title2;

    self.shijan.text =first.summary;
       [self.imge sd_setImageWithURL:[NSURL URLWithString:first.image] placeholderImage:[UIImage imageNamed:@"aa"]];

}
-(void)setSecont:(Secont *)secont{
    self.descLabel.text =secont.desc;
    
}

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
