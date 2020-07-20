//
//  PushToVCViewController.h
//  ShadowTBVCell
//
//  Created by Jobs on 2020/7/20.
//  Copyright © 2020 Jobs. All rights reserved.
//

#import "BaseVC.h"

NS_ASSUME_NONNULL_BEGIN

@interface PushToVCViewController : BaseVC

@property(nonatomic,strong)NSIndexPath * _Nonnull indexPath;
@property(nonatomic,strong)UIImageView *imageView;

+ (instancetype)ComingFromVC:(UIViewController *)rootVC
                 comingStyle:(ComingStyle)comingStyle
           presentationStyle:(UIModalPresentationStyle)presentationStyle
               requestParams:(nullable id)requestParams
                     success:(DataBlock)block
                    animated:(BOOL)animated;

@end

NS_ASSUME_NONNULL_END
