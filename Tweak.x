#import "Tweak.h"

@interface SBDockView : UIView {
    UIView *_backgroundView;
}
@end

%hook SBDockView
- (void)layoutSubviews {
    %orig;
    UIView *view = [self valueForKey:@"_backgroundView"];
    view.hidden = YES;
}
- (void)setBackgroundAlpha:(double)arg1 {
    %orig(0);
}
%end