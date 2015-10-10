@import UIKit;

@class MWKSite;
@class MWKDataStore;
@class MWKSavedPageList;
@class MWKHistoryList;

NS_ASSUME_NONNULL_BEGIN

@interface WMFHomeViewController : UICollectionViewController

@property (nonatomic, strong) MWKSite* searchSite;
@property (nonatomic, strong) MWKDataStore* dataStore;
@property (nonatomic, strong) MWKSavedPageList* savedPages;
@property (nonatomic, strong) MWKHistoryList* recentPages;

- (void)showArticleViewControllerForTitle:(MWKTitle*)title
                                 animated:(BOOL)animated
                          discoveryMethod:(MWKHistoryDiscoveryMethod)discoveryMethod;

@end

NS_ASSUME_NONNULL_END