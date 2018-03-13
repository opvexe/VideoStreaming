

#import "NRRecordEventWindow.h"

@implementation NRRecordEventWindow

- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event {
    for (UIView *view in self.subviews) {
        for (UIView *subView in view.subviews) {
            if (subView.tag >= kRecordEventViewMinTag && subView.tag <= kRecordEventViewMaxTag) {
                if(CGRectContainsPoint(subView.frame, point) && !view.hidden) {
                    return subView;
                }
            }
        }
    }
    return nil;
}

@end
