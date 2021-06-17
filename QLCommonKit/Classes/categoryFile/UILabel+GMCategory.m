//
//  UILabel+GMCategory.m
//  GMAiDoorStaffSDK
//
//  Created by Stone_熊小叔 on 2020/11/12.
//

#import "UILabel+GMCategory.h"

@implementation UIFont (GMEx)

+ (UIFont *)gm_pingFangSCWithWeight:(GMFontWeightStyle)fontWeight size:(CGFloat)fontSize {
    if (fontWeight < GMFontWeightStyleMedium || fontWeight > GMFontWeightStyleThin) {
        fontWeight = GMFontWeightStyleRegular;
    }
    
    NSString *fontName = @"PingFangSC-Regular";
    switch (fontWeight) {
        case GMFontWeightStyleMedium:
            fontName = @"PingFangSC-Medium";
            break;
        case GMFontWeightStyleSemibold:
            fontName = @"PingFangSC-Semibold";
            break;
        case GMFontWeightStyleLight:
            fontName = @"PingFangSC-Light";
            break;
        case GMFontWeightStyleUltralight:
            fontName = @"PingFangSC-Ultralight";
            break;
        case GMFontWeightStyleRegular:
            fontName = @"PingFangSC-Regular";
            break;
        case GMFontWeightStyleThin:
            fontName = @"PingFangSC-Thin";
            break;
    }
    
    UIFont *font = [UIFont fontWithName:fontName size:fontSize];
    
    return font ?: [UIFont systemFontOfSize:fontSize];
}
@end

@implementation UILabel (GMCategory)

+ (UILabel *)creatLabelWithTitleColor:(UIColor *)titleColor titleFont:(CGFloat)titleFont
{
    UILabel *label = [[UILabel alloc] init];
    label.textColor = titleColor;
    label.font = [UIFont systemFontOfSize:titleFont];
    return label;
}

+ (UILabel *)creatLabelWithTitleColor:(UIColor *)titleColor titleFont:(CGFloat)titleFont text:(NSString *)text
{
    UILabel *label = [[UILabel alloc] init];
    label.textColor = titleColor;
    label.font = [UIFont systemFontOfSize:titleFont];
    label.text = text;
    return label;
}

+ (UILabel *)creatLabelWithTitleColor:(UIColor *)titleColor boldTitleFont:(CGFloat)titleFont
{
    UILabel *label = [[UILabel alloc] init];
    label.textColor = titleColor;
    label.font = [UIFont boldSystemFontOfSize:titleFont];
    return label;
}

+ (UILabel *)creatLabelWithTitleColor:(UIColor *)titleColor boldTitleFont:(CGFloat)titleFont text:(NSString *)text
{
    UILabel *label = [[UILabel alloc] init];
    label.textColor = titleColor;
    label.font = [UIFont boldSystemFontOfSize:titleFont];
    label.text = text;
    return label;
}

+ (UILabel *)creatLabelWithTitleColor:(UIColor *)titleColor titleFont:(CGFloat)titleFont lineSpacing:(CGFloat)lineSpacing
{
    UILabel *label = [[UILabel alloc] init];
    label.textColor = titleColor;
    label.font = [UIFont systemFontOfSize:titleFont];
    label.numberOfLines = 0;
    NSMutableAttributedString * attributedString1 = [[NSMutableAttributedString alloc] initWithString:label.text];
    NSMutableParagraphStyle * paragraphStyle1 = [[NSMutableParagraphStyle alloc] init];
    [paragraphStyle1 setLineSpacing:lineSpacing];
    [attributedString1 addAttribute:NSParagraphStyleAttributeName value:paragraphStyle1 range:NSMakeRange(0, [label.text length])];
    [label setAttributedText:attributedString1];
    [label sizeToFit];
    return label;
}

+ (UILabel *)creatLabelWithTitleColor:(UIColor *)titleColor gm_pingFangSCWithWeight:(GMFontWeightStyle)fontWeight size:(CGFloat)fontSize text:(NSString *)text
{
    UILabel *label = [[UILabel alloc] init];
    label.textColor = titleColor;
    label.font = [UIFont gm_pingFangSCWithWeight:fontWeight size:fontSize];
    label.text = text;
    return label;
}
@end
