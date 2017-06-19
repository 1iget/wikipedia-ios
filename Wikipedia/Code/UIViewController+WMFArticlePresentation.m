#import "UIViewController+WMFArticlePresentation.h"
@import WMF;
#import "Wikipedia-Swift.h"
#import "WMFArticleViewController.h"

NS_ASSUME_NONNULL_BEGIN

@implementation UIViewController (WMFArticlePresentation)

- (WMFArticleViewController *)wmf_pushArticleWithURL:(NSURL *)url dataStore:(MWKDataStore *)dataStore restoreScrollPosition:(BOOL)restoreScrollPosition animated:(BOOL)animated {
    return [self wmf_pushArticleWithURL:url
                              dataStore:dataStore
                  restoreScrollPosition:restoreScrollPosition
                               animated:animated
                  articleLoadCompletion:^{
                  }];
}

- (WMFArticleViewController *)wmf_pushArticleWithURL:(NSURL *)url dataStore:(MWKDataStore *)dataStore restoreScrollPosition:(BOOL)restoreScrollPosition animated:(BOOL)animated articleLoadCompletion:(dispatch_block_t)articleLoadCompletion {
    if (!restoreScrollPosition) {
        url = [url wmf_URLWithFragment:nil];
    }

    WMFArticleViewController *vc = [[WMFArticleViewController alloc] initWithArticleURL:url dataStore:dataStore];
    vc.articleLoadCompletion = articleLoadCompletion;
    [self wmf_pushArticleViewController:vc animated:animated];
    return vc;
}

- (void)wmf_pushArticleWithURL:(NSURL *)url dataStore:(MWKDataStore *)dataStore animated:(BOOL)animated {
    [self wmf_pushArticleWithURL:url dataStore:dataStore restoreScrollPosition:NO animated:animated];
}

- (void)wmf_pushArticleViewController:(WMFArticleViewController *)viewController animated:(BOOL)animated {
    if (self.navigationController != nil) {
        [self.navigationController pushViewController:viewController animated:animated];
    } else if ([[self.childViewControllers firstObject] isKindOfClass:[UITabBarController class]]) {
        UITabBarController *tab = (UITabBarController *)[self.childViewControllers firstObject];
        UINavigationController *nav = [tab selectedViewController];
        [nav pushViewController:viewController animated:animated];
    } else {
        NSAssert(0, @"Unexpected view controller hierarchy");
    }
    [[PiwikTracker sharedInstance] wmf_logView:viewController];
}

- (void)wmf_pushViewController:(UIViewController *)viewController animated:(BOOL)animated {
    if (self.navigationController != nil) {
        [self.navigationController pushViewController:viewController animated:animated];
    } else if ([[self.childViewControllers firstObject] isKindOfClass:[UITabBarController class]]) {
        UITabBarController *tab = (UITabBarController *)[self.childViewControllers firstObject];
        UINavigationController *nav = [tab selectedViewController];
        [nav pushViewController:viewController animated:animated];
    } else {
        NSAssert(0, @"Unexpected view controller hierarchy");
    }
}

@end

NS_ASSUME_NONNULL_END
