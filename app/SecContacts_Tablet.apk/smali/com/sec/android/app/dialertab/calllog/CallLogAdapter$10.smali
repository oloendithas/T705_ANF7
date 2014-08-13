.class Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$10;
.super Ljava/lang/Object;
.source "CallLogAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->bindView(Landroid/view/View;Landroid/database/Cursor;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

.field final synthetic val$mHoverListListener:Landroid/widget/HoverPopupWindow$HoverPopupListener;

.field final synthetic val$views:Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;Landroid/widget/HoverPopupWindow$HoverPopupListener;)V
    .locals 0

    .prologue
    .line 2588
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$10;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    iput-object p2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$10;->val$views:Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;

    iput-object p3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$10;->val$mHoverListListener:Landroid/widget/HoverPopupWindow$HoverPopupListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2590
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$10;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->access$100(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.sec.feature.hovering_ui"

    invoke-static {v0, v1}, Landroid/util/GeneralUtil;->hasSystemFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "feature_kor"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$10;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->access$100(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2592
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$10;->val$views:Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->nameText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/HoverPopupWindow;->setEnabled(Z)V

    .line 2593
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$10;->val$views:Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->numberText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/HoverPopupWindow;->setEnabled(Z)V

    .line 2595
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$10;->val$views:Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->numberText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$10;->val$views:Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->numberText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isEllipsis()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$10;->val$views:Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->nameText:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$10;->val$views:Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->nameText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isEllipsis()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2597
    :cond_2
    const-string v0, "CallLogAdapter"

    const-string v1, "setHoverPopup"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2600
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$10;->val$views:Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->primaryActionView:Landroid/view/View;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/View;->setHoverPopupType(I)V

    .line 2601
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$10;->val$views:Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->primaryActionView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v0

    const v1, 0x7f040184

    invoke-virtual {v0, v1}, Landroid/widget/HoverPopupWindow;->setContent(I)V

    .line 2603
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$10;->val$views:Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->primaryActionView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v0

    const/16 v1, 0x3031

    invoke-virtual {v0, v1}, Landroid/widget/HoverPopupWindow;->setPopupGravity(I)V

    .line 2604
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$10;->val$views:Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->primaryActionView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/HoverPopupWindow;->setFHGuideLineEnabled(Z)V

    .line 2605
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$10;->val$views:Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->primaryActionView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$10;->val$mHoverListListener:Landroid/widget/HoverPopupWindow$HoverPopupListener;

    invoke-virtual {v0, v1}, Landroid/widget/HoverPopupWindow;->setHoverPopupListener(Landroid/widget/HoverPopupWindow$HoverPopupListener;)V

    .line 2609
    :cond_3
    return-void
.end method
