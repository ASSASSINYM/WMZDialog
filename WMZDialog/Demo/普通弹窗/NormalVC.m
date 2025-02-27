
//
//  NormalVC.m
//  WMZDialog
//
//  Created by wmz on 2020/4/10.
//  Copyright © 2020 wmz. All rights reserved.
//

#import "NormalVC.h"

@interface NormalVC ()

@end

@implementation NormalVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.dataArr = @[@"普通弹窗",@"取消按钮",@"文字过多换行",@"自定义位置",@"背景阴影"];
}

-(void)action:(UIButton*)sender{
    switch (sender.tag) {
        case 0:{
            Dialog()
            .wTitleSet(@"标题")
            .wMessageSet(@"内容")
            .wTypeSet(DialogTypeNornal)
            .wStart();
        }
            break;
        case 1:{
            Dialog()
            //出现动画
            .wShowAnimationSet(AninatonZoomIn)
            //消失动画
            .wHideAnimationSet(AninatonZoomOut)
            .wEventCancelFinishSet(^(id anyID, id otherData) {})
            .wMessageSet(@"这是一条内容\n这是一条内容")
            .wTitleSet(@"这是一条标题\n这是一条标题")
            .wOKTitleSet(@"好的")
            .wCancelTitleSet(@"我知道了")
            .wMessageColorSet(DialogColor(0x333333))
            .wTitleColorSet(DialogColor(0x666666))
            .wOKColorSet([UIColor orangeColor])
            .wCancelColorSet([UIColor redColor])
            .wTitleFontSet(15)
            .wTypeSet(DialogTypeNornal).wStart();
        }
            break;
        case 2:{
            Dialog()
            //出现动画
            .wShowAnimationSet(AninatonShowLeft)
            //消失动画
            .wHideAnimationSet(AninatonHideLeft)
            .wEventCancelFinishSet(^(id anyID, id otherData) {})
            .wMessageSet(@"这是一条内容\n这是一条内容")
            .wTitleSet(@"这是一条标题\n这是一条标题")
            .wOKTitleSet(@"这是一个长的确定按钮这是一个长的确定按钮")
            .wCancelTitleSet(@"这是一个长的取消按钮这是一个长的取消按钮这是一个长的取消按钮这是一个长的取消按钮")
            .wOKColorSet([UIColor orangeColor])
            .wCancelColorSet([UIColor redColor])
            .wStartView(self.view);
        }
            break;
            
        case 3:{
            Dialog()
            .wTitleSet(@"标题")
            .wMessageSet(@"内容")
            /// 自定义位置
            .wPointSet(CGPointMake(30, DialogStatusH))
            .wTypeSet(DialogTypeNornal)
            .wStart();
        }
            break;
        case 4:{
            Dialog()
            ///开始主视图阴影
            .wMainShadowShowSet(YES)
            ///自定义主视图阴影
            .wCustomMainShadomSet(^(CALayer *shadom) {
                shadom.shadowColor = [UIColor orangeColor].CGColor;
            })
            .wTitleSet(@"标题")
            .wMessageSet(@"内容")
            .wTypeSet(DialogTypeNornal)
            .wStart();
        }
            break;
            
        default:
            break;
    }
}

@end
