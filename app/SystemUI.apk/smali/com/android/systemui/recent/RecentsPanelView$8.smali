.class Lcom/android/systemui/recent/RecentsPanelView$8;
.super Landroid/view/OrientationEventListener;
.source "RecentsPanelView.java"


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
.method constructor <init>(Lcom/android/systemui/recent/RecentsPanelView;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 936
    iput-object p1, p0, Lcom/android/systemui/recent/RecentsPanelView$8;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 4
    .param p1, "angle"    # I

    .prologue
    .line 939
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView$8;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/RecentsPanelView;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v2}, Lcom/android/systemui/recent/RecentsPanelView;->access$2200(Lcom/android/systemui/recent/RecentsPanelView;)Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 940
    .local v1, "display":Landroid/view/Display;
    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 941
    .local v0, "degrees":I
    const-string v2, "STATUSBAR-RecentsPanelView"

    const-string v3, "onOrientationChanged"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView$8;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/RecentsPanelView;->lastDegrees:I
    invoke-static {v2}, Lcom/android/systemui/recent/RecentsPanelView;->access$2300(Lcom/android/systemui/recent/RecentsPanelView;)I

    move-result v2

    if-eq v2, v0, :cond_1

    .line 943
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView$8;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/RecentsPanelView;->mHelpPopupWindowTraybar:Landroid/widget/PopupWindow;
    invoke-static {v2}, Lcom/android/systemui/recent/RecentsPanelView;->access$1300(Lcom/android/systemui/recent/RecentsPanelView;)Landroid/widget/PopupWindow;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 946
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView$8;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v2}, Lcom/android/systemui/recent/RecentsPanelView;->dismissHelpPopupWindowTraybar()V

    .line 949
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView$8;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # setter for: Lcom/android/systemui/recent/RecentsPanelView;->lastDegrees:I
    invoke-static {v2, v0}, Lcom/android/systemui/recent/RecentsPanelView;->access$2302(Lcom/android/systemui/recent/RecentsPanelView;I)I

    .line 951
    :cond_1
    return-void
.end method
