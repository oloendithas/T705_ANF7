.class Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity$2;
.super Ljava/lang/Object;
.source "DialerGuideActivity.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;)V
    .locals 0

    .prologue
    .line 267
    iput-object p1, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity$2;->this$0:Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v6, 0x0

    .line 269
    packed-switch p2, :pswitch_data_0

    .line 288
    :cond_0
    :goto_0
    return v6

    .line 271
    :pswitch_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 272
    .local v1, "rect":Landroid/graphics/Rect;
    const/4 v4, 0x2

    new-array v0, v4, [I

    .line 273
    .local v0, "location":[I
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    const v5, 0x7f090259

    if-eq v4, v5, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    const v5, 0x7f09020f

    if-ne v4, v5, :cond_0

    .line 274
    :cond_1
    invoke-virtual {p1, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 275
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 276
    aget v2, v0, v6

    .line 277
    .local v2, "x":I
    const/4 v4, 0x1

    aget v3, v0, v4

    .line 279
    .local v3, "y":I
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity$2;->this$0:Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;

    # getter for: Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mGuideDialer:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;
    invoke-static {v4}, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->access$700(Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;)Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity$2;->this$0:Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;

    # getter for: Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mGuideDialer:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;
    invoke-static {v4}, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->access$700(Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;)Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    move-result-object v4

    invoke-virtual {v4, p3, v2, v3}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->KeyEvent(Landroid/view/KeyEvent;II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 280
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity$2;->this$0:Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;

    # getter for: Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mGuideDialer:Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;
    invoke-static {v4}, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->access$700(Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;)Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/dialertab/dialerguide/GuideDialer;->runGuide()Z

    move-result v4

    if-nez v4, :cond_0

    .line 281
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity$2;->this$0:Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 269
    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_0
    .end packed-switch
.end method
