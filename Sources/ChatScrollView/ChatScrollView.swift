import SwiftUI

public struct ChatScrollView<Content: View>: View {

    private let alignment: HorizontalAlignment
    private let spacing: CGFloat?
    private let pinnedViews: PinnedScrollableViews
    private let content: () -> Content
    
    public init(alignment: HorizontalAlignment = .center,
                spacing: CGFloat? = nil,
                pinnedViews: PinnedScrollableViews = .init(),
                @ViewBuilder content: @escaping () -> Content) {
        self.alignment = alignment
        self.spacing = spacing
        self.pinnedViews = pinnedViews
        self.content = content
    }
    
    public var body: some View {
        ScrollView(.vertical) {
            LazyVStack(alignment: alignment, spacing: spacing, pinnedViews: pinnedViews, content: content)
                .rotationEffect(Angle(degrees: 180))
                .scaleEffect(x: -1.0, y: 1.0, anchor: .center)
        }
        .rotationEffect(Angle(degrees: 180))
        .scaleEffect(x: -1.0, y: 1.0, anchor: .center)
    }
}
