.class Lcom/android/systemui/statusbar/BaseStatusBar$2;
.super Landroid/widget/RemoteViews$OnClickHandler;
.source "BaseStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/BaseStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/BaseStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V
    .locals 0

    .prologue
    .line 241
    iput-object p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$2;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-direct {p0}, Landroid/widget/RemoteViews$OnClickHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickHandler(Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)Z
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "fillInIntent"    # Landroid/content/Intent;

    .prologue
    const/16 v7, 0x64

    const/4 v5, 0x0

    .line 247
    invoke-virtual {p2}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v3

    .line 248
    .local v3, "isActivity":Z
    if-eqz v3, :cond_4

    .line 251
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 252
    invoke-virtual {p2}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v6

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 253
    .local v0, "creatorUid":I
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v6

    iget v1, v6, Landroid/content/pm/UserInfo;->id:I

    .line 255
    .local v1, "currentUid":I
    if-ge v0, v7, :cond_0

    if-lt v1, v7, :cond_2

    :cond_0
    const/4 v4, 0x1

    .line 256
    .local v4, "isKnox":Z
    :goto_0
    if-eqz v4, :cond_3

    if-eq v0, v1, :cond_3

    move v2, v5

    .line 284
    .end local v0    # "creatorUid":I
    .end local v1    # "currentUid":I
    .end local v4    # "isKnox":Z
    :cond_1
    :goto_1
    return v2

    .restart local v0    # "creatorUid":I
    .restart local v1    # "currentUid":I
    :cond_2
    move v4, v5

    .line 255
    goto :goto_0

    .line 269
    .end local v0    # "creatorUid":I
    .end local v1    # "currentUid":I
    :cond_3
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/app/IActivityManager;->resumeAppSwitches()V

    .line 272
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    :cond_4
    :goto_2
    invoke-super {p0, p1, p2, p3}, Landroid/widget/RemoteViews$OnClickHandler;->onClickHandler(Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)Z

    move-result v2

    .line 279
    .local v2, "handled":Z
    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    .line 281
    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar$2;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v6, v5}, Lcom/android/systemui/statusbar/BaseStatusBar;->animateCollapsePanels(I)V

    .line 282
    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar$2;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v6, v5}, Lcom/android/systemui/statusbar/BaseStatusBar;->visibilityChanged(Z)V

    goto :goto_1

    .line 273
    .end local v2    # "handled":Z
    :catch_0
    move-exception v6

    goto :goto_2
.end method
