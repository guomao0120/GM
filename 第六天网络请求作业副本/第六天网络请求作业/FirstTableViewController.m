//
//  FirstTableViewController.m
//  第六天网络请求作业
//
//  Created by lanou3g on 16/3/3.
//  Copyright © 2016年 陈林林. All rights reserved.
//

#import "FirstTableViewController.h"
#import "First.h"
#import "FirstCell.h"
#import "URL.h"
#import "Secont.h"
#import "SecontCell.h"
#define URL @"http://api.m.mtime.cn/News/NewsList.api?"
@interface FirstTableViewController ()
@property(nonatomic,strong)NSMutableArray *array;
@property(nonatomic,strong)NSMutableArray *array1;

@end

@implementation FirstTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.tableView registerClass:[SecontCell class] forCellReuseIdentifier:@"cell1"];
    //创建 session对象
    NSURLSession *session =[NSURLSession sharedSession];
    //创建url
    NSURL *url =[NSURL URLWithString:URL];
    //通过URL初始化task 在block内处理数据
     NSURLSessionTask *task =[session dataTaskWithURL:url completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
         
        [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:nil];
         
         self.array =[NSMutableArray array];
         self.array1 =[NSMutableArray array];

         if (data !=nil) {
             NSDictionary *dic =[NSJSONSerialization JSONObjectWithData:data options:(NSJSONReadingAllowFragments) error:nil];

             for (NSDictionary *dic1 in dic[@"newsList"]) {
                
                 
                 for (NSDictionary *diccc in dic1[@"images"]) {
                     Secont *secon =[Secont new];
                     [secon setValuesForKeysWithDictionary:diccc];
                     [self.array1 addObject:secon];
                     NSLog(@"%@",secon.desc);
                     
                     
                     
                 }
                 
                 First *fir =[First new];
                 
                 [fir setValuesForKeysWithDictionary:dic1];
//                 NSLog(@"%@",fir.title);

                 [self.array addObject:fir];
                
             }
             //返回主线程
             dispatch_async(dispatch_get_main_queue(), ^{
                 
                 [self.tableView reloadData];
             });
             

         }

     }];
    
    [task resume];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.array1.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    Secont *secont =self.array1[indexPath.row];
    if (secont.desc.length <40) {
        
       SecontCell *cell1 = [tableView dequeueReusableCellWithIdentifier:@"cell1" forIndexPath:indexPath];
        cell1.secont=self.array1[indexPath.row];
        cell1.first =self.array [indexPath.row];
        cell1.layer.cornerRadius =13;
        cell1.layer.borderWidth =2;
        return cell1;
        
    }else{
    FirstCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
        cell.secont=self.array1[indexPath.row];

    cell.first =self.array[indexPath.row];
        cell.layer.cornerRadius =15;
        cell.layer.borderWidth =2;
        cell.layer.borderColor =[[UIColor yellowColor]CGColor];

        return cell;
    }
    
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{


}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    Secont *secont =self.array1[indexPath.row];
    
    
    if (secont.desc.length <40) {
        
        return 190;
    }else{
        return 300;
    }
    
    
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
