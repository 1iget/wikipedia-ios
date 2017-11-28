import Foundation

// Utilize this class to define localized strings that are used in multiple places in similar contexts.
// There should only be one WMF Localized String function in code for every localization key.
// If the same string value is used in different contexts, use different localization keys.

@objc(WMFCommonStrings)
public class CommonStrings: NSObject {
    @objc public static let shortSavedTitle = WMFLocalizedString("action-saved", value: "Saved", comment: "Short title for the save button in the 'Saved' state - Indicates the article is saved. Please use the shortest translation possible.\n{{Identical|Saved}}")
    @objc public static let accessibilitySavedTitle = WMFLocalizedString("action-saved-accessibility", value: "Saved. Activate to unsave.", comment: "Accessibility title for the 'Unsave' action\n{{Identical|Saved}}")
    @objc public static let shortUnsaveTitle = WMFLocalizedString("action-unsave", value: "Unsave", comment: "Short title for the 'Unsave' action. Please use the shortest translation possible.\n{{Identical|Saved}}")
    
    @objc public static let accessibilitySavedNotification = WMFLocalizedString("action-saved-accessibility-notification", value: "Article saved for later", comment: "Notification spoken after user saves an article for later.")
     @objc public static let accessibilityUnsavedNotification = WMFLocalizedString("action-unsaved-accessibility-notification", value: "Article unsaved", comment: "Notification spoken after user removes an article from Saved articles.")
    
    @objc public static let shortSaveTitle = WMFLocalizedString("action-save", value: "Save", comment: "Title for the 'Save' action\n{{Identical|Save}}")
    @objc public static let savedTitle:String = CommonStrings.savedTitle(language: nil)
    @objc public static let saveTitle:String = CommonStrings.saveTitle(language: nil)
    @objc public static let dimImagesTitle = WMFLocalizedString("dim-images", value: "Dim images", comment: "Label for image dimming setting")
    
    @objc public static let placesTitle = WMFLocalizedString("places-title", value: "Places", comment: "Title of the Places screen shown on the places tab.")
    @objc public static let onThisDayTitle = WMFLocalizedString("on-this-day-title", value: "On this day", comment: "Title for the 'On this day' feed section")
    
    @objc static public func savedTitle(language: String?) -> String {
        return WMFLocalizedString("button-saved-for-later", language: language, value: "Saved for later", comment: "Longer button text for already saved button used in various places.")
    }
    
    @objc static public func saveTitle(language: String?) -> String {
        return WMFLocalizedString("button-save-for-later", language: language, value: "Save for later", comment: "Longer button text for save button used in various places.")
    }
    
    @objc public static let shortShareTitle = WMFLocalizedString("action-share", value: "Share", comment: "Short title for the 'Share' action. Please use the shortest translation possible.\n{{Identical|Share}}")
    
    @objc public static let shortReadTitle = WMFLocalizedString("action-read", value: "Read", comment: "Title for the 'Read' action\n{{Identical|Read}}")
    
    @objc public static let dismissButtonTitle = WMFLocalizedString("announcements-dismiss", value: "Dismiss", comment: "Button text indicating a user wants to dismiss an announcement\n{{Identical|No thanks}}")
    
    @objc public static let textSizeSliderAccessibilityLabel = WMFLocalizedString("reading-themes-controls-accessibility-text-size-slider", value: "Text size slider", comment: "Accessibility label for the text size slider that adjusts article text size.")
    
    @objc public static let deleteActionTitle = WMFLocalizedStringWithDefaultValue("article-delete", nil, nil, "Delete", "Text of the article list row action shown on swipe which deletes the article")
    @objc public static let shareActionTitle = WMFLocalizedStringWithDefaultValue("article-share", nil, nil, "Share", "Text of the article list row action shown on swipe which allows the user to choose the sharing option")

    @objc public static let nextTitle = WMFLocalizedStringWithDefaultValue("button-next", nil, nil, "Next", "Button text for next button used in various places.\n{{Identical|Next}}")
    @objc public static let skipTitle = WMFLocalizedStringWithDefaultValue("button-skip", nil, nil, "Skip", "Button text for skip button used in various places.")
    
    @objc public static let privacyPolicyURLString = "https://m.wikimediafoundation.org/wiki/Privacy_policy"

    @objc public static let myLanguages = WMFLocalizedString("settings-my-languages", value: "My languages", comment: "Title for list of user's preferred languages")

    @objc public static let wikipediaLanguages = WMFLocalizedString("languages-wikipedia", value: "Wikipedia languages", comment: "Title for list of Wikipedia languages")
}
