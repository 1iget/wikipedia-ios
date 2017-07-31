import UIKit

@objc(WMFSaveButton) public class SaveButton: AlignedImageButton, AnalyticsContextProviding, AnalyticsContentTypeProviding {
    @objc(WMFSaveButtonState) enum State: Int {
        case shortSaved
        case longSaved
        case shortSave
        case longSave
    }
    
    static let shortSavedTitle = WMFLocalizedString("action-saved", value:"Saved", comment:"Title for the save button in the 'Saved' state - Indicates the article is saved\n{{Identical|Saved}}")
    static let accessibilitySavedTitle = WMFLocalizedString("action-saved-accessibility", value:"Saved. Activate to unsave.", comment:"Accessibility title for the 'Unsave' action\n{{Identical|Saved}}")
    static let shortUnsaveTitle = WMFLocalizedString("action-unsave", value:"Unsave", comment:"Title for the 'Unsave' action\n{{Identical|Saved}}")
    
    static let shortSaveTitle = WMFLocalizedString("action-save", value:"Save", comment:"Title for the 'Save' action\n{{Identical|Save}}")
    static let savedTitle = WMFLocalizedString("button-saved-for-later", value:"Saved for later", comment:"Longer button text for already saved button used in various places.")
    static let saveTitle = WMFLocalizedString("button-save-for-later", value:"Save for later", comment:"Longer button text for save button used in various places.")
    static let saveImage = #imageLiteral(resourceName: "places-save")
    static let savedImage = #imageLiteral(resourceName: "places-unsave")
    
    public var analyticsContext = "unknown"
    public var analyticsContentType = "unknown"
    
    var saveButtonState: SaveButton.State = .shortSave {
        didSet {
            let saveTitle: String
            let saveImage: UIImage
            switch saveButtonState {
            case .longSaved:
                saveTitle = SaveButton.savedTitle
                saveImage = SaveButton.savedImage
                accessibilityLabel = SaveButton.accessibilitySavedTitle
            case .longSave:
                saveTitle = SaveButton.saveTitle
                saveImage = SaveButton.saveImage
                accessibilityLabel = SaveButton.saveTitle
            case .shortSaved:
                saveTitle = SaveButton.shortSavedTitle
                saveImage = SaveButton.savedImage
                accessibilityLabel = SaveButton.accessibilitySavedTitle
            case .shortSave:
                fallthrough
            default:
                saveTitle = SaveButton.shortSaveTitle
                saveImage = SaveButton.saveImage
                accessibilityLabel = SaveButton.saveTitle
            }
            UIView.performWithoutAnimation {
                setTitle(saveTitle, for: .normal)
                setImage(saveImage, for: .normal)
                layoutIfNeeded()
            }
        }
    }
}
