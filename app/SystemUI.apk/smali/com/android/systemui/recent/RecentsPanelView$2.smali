.class Lcom/android/systemui/recent/RecentsPanelView$2;
.super Ljava/lang/Object;
.source "RecentsPanelView.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recent/RecentsPanelView;->makeTraybarHelpPopupLayout(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recent/RecentsPanelView;


# direct methods
.method constructor <init>(Lcom/android/systemui/recent/RecentsPanelView;)V
    .locals 0

    .prologue
    .line 734
    iput-object p1, p0, Lcom/android/systemui/recent/RecentsPanelView$2;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 4

    .prologue
    .line 737
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView$2;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/RecentsPanelView;->orientationListener:Landroid/view/OrientationEventListener;
    invoke-static {v0}, Lcom/android/systemui/recent/RecentsPanelView;->access$1400(Lcom/android/systemui/recent/RecentsPanelView;)Landroid/view/OrientationEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 738
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView$2;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/RecentsPanelView;->orientationListener:Landroid/view/OrientationEventListener;
    invoke-static {v0}, Lcom/android/systemui/recent/RecentsPanelView;->access$1400(Lcom/android/systemui/recent/RecentsPanelView;)Landroid/view/OrientationEventListener;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 739
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView$2;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    const/4 v1, 0x0

    # setter for: Lcom/android/systemui/recent/RecentsPanelView;->orientationListener:Landroid/view/OrientationEventListener;
    invoke-static {v0, v1}, Lcom/android/systemui/recent/RecentsPanelView;->access$1402(Lcom/android/systemui/recent/RecentsPanelView;Landroid/view/OrientationEventListener;)Landroid/view/OrientationEventListener;

    .line 741
    :cond_0
    const-string v0, "STATUSBAR-RecentsPanelView"

    const-string v1, "onDismiss set checkbox checking InformDialog false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView$2;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/systemui/recent/RecentsPanelView;->access$1500(Lcom/android/systemui/recent/RecentsPanelView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "recent_menukey_dialog_do_not_show_checking"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 744
    return-void
.end method
