//
//  UILabel+GMCategory.h
//  GMAiDoorStaffSDK
//
//  Created by Stone_熊小叔 on 2020/11/12.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSInteger, GMFontWeightStyle) {
    GMFontWeightStyleMedium, // 中黑体
    GMFontWeightStyleSemibold, // 中粗体
    GMFontWeightStyleLight, // 细体
    GMFontWeightStyleUltralight, // 极细体
    GMFontWeightStyleRegular, // 常规体
    GMFontWeightStyleThin, // 纤细体
};


@interface UIFont (GMEx)

/**
 苹方字体

 @param fontWeight 字体粗细（字重)
 @param fontSize 字体大小
 @return 返回指定字重大小的苹方字体
 */
+ (UIFont *)gm_pingFangSCWithWeight:(GMFontWeightStyle)fontWeight size:(CGFloat)fontSize;

@end


@interface UILabel (GMCategory)

+ (UILabel *)creatLabelWithTitleColor:(UIColor *)titleColor titleFont:(CGFloat)titleFont;
+ (UILabel *)creatLabelWithTitleColor:(UIColor *)titleColor boldTitleFont:(CGFloat)titleFont;
+ (UILabel *)creatLabelWithTitleColor:(UIColor *)titleColor titleFont:(CGFloat)titleFont text:(NSString *)text;
+ (UILabel *)creatLabelWithTitleColor:(UIColor *)titleColor boldTitleFont:(CGFloat)titleFont text:(NSString *)text;
+ (UILabel *)creatLabelWithTitleColor:(UIColor *)titleColor titleFont:(CGFloat)titleFont lineSpacing:(CGFloat)lineSpacing;
+ (UILabel *)creatLabelWithTitleColor:(UIColor *)titleColor gm_pingFangSCWithWeight:(GMFontWeightStyle)fontWeight size:(CGFloat)fontSize text:(NSString *)text;
@end

NS_ASSUME_NONNULL_END
