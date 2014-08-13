.class Lcom/android/systemui/recent/RecentsPanelView$14;
.super Ljava/lang/Object;
.source "RecentsPanelView.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recent/RecentsPanelView;->handleLongPress(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recent/RecentsPanelView;

.field final synthetic val$thumbnailView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui/recent/RecentsPanelView;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1826
    iput-object p1, p0, Lcom/android/systemui/recent/RecentsPanelView$14;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    iput-object p2, p0, Lcom/android/systemui/recent/RecentsPanelView$14;->val$thumbnailView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/widget/PopupMenu;)V
    .locals 2
    .param p1, "menu"    # Landroid/widget/PopupMenu;

    .prologue
    .line 1828
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView$14;->val$thumbnailView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 1829
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView$14;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    const/4 v1, 0x0

    # setter for: Lcom/android/systemui/recent/RecentsPanelView;->mPopup:Landroid/widget/PopupMenu;
    invoke-static {v0, v1}, Lcom/android/systemui/recent/RecentsPanelView;->access$3502(Lcom/android/systemui/recent/RecentsPanelView;Landroid/widget/PopupMenu;)Landroid/widget/PopupMenu;

    .line 1830
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/systemui/recent/RecentsPanelView;->processed:Z

    .line 1831
    return-void
.end method
