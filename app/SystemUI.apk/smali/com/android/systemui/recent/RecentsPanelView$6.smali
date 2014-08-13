.class Lcom/android/systemui/recent/RecentsPanelView$6;
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

.field final synthetic val$displayMetrix:Landroid/util/DisplayMetrics;


# direct methods
.method constructor <init>(Lcom/android/systemui/recent/RecentsPanelView;Landroid/content/Context;Landroid/util/DisplayMetrics;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 870
    iput-object p1, p0, Lcom/android/systemui/recent/RecentsPanelView$6;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    iput-object p3, p0, Lcom/android/systemui/recent/RecentsPanelView$6;->val$displayMetrix:Landroid/util/DisplayMetrics;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 5
    .param p1, "orientation"    # I

    .prologue
    .line 873
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView$6;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/RecentsPanelView;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v2}, Lcom/android/systemui/recent/RecentsPanelView;->access$2200(Lcom/android/systemui/recent/RecentsPanelView;)Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 874
    .local v1, "display":Landroid/view/Display;
    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 875
    .local v0, "degrees":I
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView$6;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/RecentsPanelView;->lastDegrees:I
    invoke-static {v2}, Lcom/android/systemui/recent/RecentsPanelView;->access$2300(Lcom/android/systemui/recent/RecentsPanelView;)I

    move-result v2

    if-eq v2, v0, :cond_1

    .line 876
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView$6;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/RecentsPanelView;->mHelpPopupWindowTraybar:Landroid/widget/PopupWindow;
    invoke-static {v2}, Lcom/android/systemui/recent/RecentsPanelView;->access$1300(Lcom/android/systemui/recent/RecentsPanelView;)Landroid/widget/PopupWindow;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView$6;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/RecentsPanelView;->mHelpPopupWindowTraybar:Landroid/widget/PopupWindow;
    invoke-static {v2}, Lcom/android/systemui/recent/RecentsPanelView;->access$1300(Lcom/android/systemui/recent/RecentsPanelView;)Landroid/widget/PopupWindow;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView$6;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v2}, Lcom/android/systemui/recent/RecentsPanelView;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 878
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView$6;->val$displayMetrix:Landroid/util/DisplayMetrics;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 879
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView$6;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView$6;->val$displayMetrix:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    # setter for: Lcom/android/systemui/recent/RecentsPanelView;->mDisplayWidth:I
    invoke-static {v2, v3}, Lcom/android/systemui/recent/RecentsPanelView;->access$2402(Lcom/android/systemui/recent/RecentsPanelView;I)I

    .line 880
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView$6;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView$6;->val$displayMetrix:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    # setter for: Lcom/android/systemui/recent/RecentsPanelView;->mDisplayHeight:I
    invoke-static {v2, v3}, Lcom/android/systemui/recent/RecentsPanelView;->access$2502(Lcom/android/systemui/recent/RecentsPanelView;I)I

    .line 881
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView$6;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/RecentsPanelView;->mHelpPopupWindowTraybar:Landroid/widget/PopupWindow;
    invoke-static {v2}, Lcom/android/systemui/recent/RecentsPanelView;->access$1300(Lcom/android/systemui/recent/RecentsPanelView;)Landroid/widget/PopupWindow;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView$6;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/RecentsPanelView;->mDisplayWidth:I
    invoke-static {v3}, Lcom/android/systemui/recent/RecentsPanelView;->access$2400(Lcom/android/systemui/recent/RecentsPanelView;)I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/recent/RecentsPanelView$6;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/RecentsPanelView;->mDisplayHeight:I
    invoke-static {v4}, Lcom/android/systemui/recent/RecentsPanelView;->access$2500(Lcom/android/systemui/recent/RecentsPanelView;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/PopupWindow;->update(II)V

    .line 882
    const-string v2, "STATUSBAR-RecentsPanelView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "makeTraybarHelpPopupLayout update- w:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/recent/RecentsPanelView$6;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/RecentsPanelView;->mDisplayWidth:I
    invoke-static {v4}, Lcom/android/systemui/recent/RecentsPanelView;->access$2400(Lcom/android/systemui/recent/RecentsPanelView;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " h:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/recent/RecentsPanelView$6;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/RecentsPanelView;->mDisplayHeight:I
    invoke-static {v4}, Lcom/android/systemui/recent/RecentsPanelView;->access$2500(Lcom/android/systemui/recent/RecentsPanelView;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView$6;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # setter for: Lcom/android/systemui/recent/RecentsPanelView;->lastDegrees:I
    invoke-static {v2, v0}, Lcom/android/systemui/recent/RecentsPanelView;->access$2302(Lcom/android/systemui/recent/RecentsPanelView;I)I

    .line 887
    :cond_1
    return-void
.end method
