//
//  SecontCell.m
//  第六天网络请求作业
//
//  Created by lanou3g on 16/3/4.
//  Copyright © 2016年 陈林林. All rights reserved.
//

#import "SecontCell.h"
#import "UIImageView+WebCache.h"
@implementation SecontCell



-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    
    if (self =[super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.imgView1 =[[UIImageView alloc] initWithFrame:CGRectMake(10, 10, 100,120)];
        
        [self.contentView addSubview:self.imgView1];
        
        
        self.teitelLabel1 =[[UILabel alloc] initWithFrame:CGRectMake(120, 10, 240, 40)];
        self.teitelLabel1.font =[UIFont systemFontOfSize:20];
        [self.contentView addSubview:self.teitelLabel1];
        
        
        self.teite2lLabel =[[UILabel alloc] initWithFrame:CGRectMake(120, 55, 240, 35)];
        self.teite2lLabel.numberOfLines =0;
        [self.contentView addSubview:self.teite2lLabel];
        
        
        self.shijianLbel =[[UILabel alloc] initWithFrame:CGRectMake(120, 100, 240, 20)];
        self.shijianLbel.font =[UIFont systemFontOfSize:16];
        [self.contentView addSubview:self.shijianLbel];
        self.descLabel =[[UILabel alloc] initWithFrame:CGRectMake(10, 130, 350, 50)];
        self.descLabel.numberOfLines =0;
        self.descLabel.font =[UIFont systemFontOfSize:18];
        [self.contentView addSubview:self.descLabel];
    }
    
    return self;

    
}
-(void)setSecont:(Secont *)secont{
    
    self.descLabel.text =secont.desc;
}

-(void)setFirst:(First *)first{
    self.teite2lLabel.text =first.title2;

    self.shijianLbel.text =first.summary;
    self.teitelLabel1.text =first.title;
    [self.imgView1 sd_setImageWithURL:[NSURL URLWithString:first.image] placeholderImage:nil];

}
- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
