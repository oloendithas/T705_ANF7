.class public Lcom/android/systemui/recent/Recents;
.super Lcom/android/systemui/SystemUI;
.source "Recents.java"

# interfaces
.implements Lcom/android/systemui/RecentsComponent;


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "Recents"


# instance fields
.field private mRecentsWindow:Lcom/android/systemui/recent/RecentsWindow;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelPreloadingRecentTasksList()V
    .locals 4

    .prologue
    .line 344
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mUseRecentsTrayConcept:Z

    if-eqz v1, :cond_0

    .line 345
    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/recent/RecentTasksLoader;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recent/RecentTasksLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recent/RecentTasksLoader;->cancelPreloadingRecentTasksList()V

    .line 353
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/recent/RecentTasksLoader;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recent/RecentTasksLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recent/RecentTasksLoader;->cancelPreloadingFirstTask()V

    .line 354
    return-void

    .line 347
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.systemui.recent.CANCEL_PRELOAD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 348
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.systemui"

    const-string v2, "com.android.systemui.recent.RecentsPreloadReceiver"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 350
    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    const/4 v3, -0x2

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0
.end method

.method public closeRecents()V
    .locals 4

    .prologue
    .line 360
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mUseRecentsTrayConcept:Z

    if-eqz v1, :cond_0

    .line 361
    iget-object v1, p0, Lcom/android/systemui/recent/Recents;->mRecentsWindow:Lcom/android/systemui/recent/RecentsWindow;

    invoke-virtual {v1}, Lcom/android/systemui/recent/RecentsWindow;->hide()V

    .line 367
    :goto_0
    return-void

    .line 364
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.systemui.recent.action.CLOSE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 365
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.systemui"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 366
    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    const/4 v3, -0x2

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0
.end method

.method public preloadRecentTasksList()V
    .locals 4

    .prologue
    .line 328
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mUseRecentsTrayConcept:Z

    if-eqz v1, :cond_0

    .line 329
    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/recent/RecentTasksLoader;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recent/RecentTasksLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recent/RecentTasksLoader;->preloadRecentTasksList()V

    .line 337
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/recent/RecentTasksLoader;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recent/RecentTasksLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recent/RecentTasksLoader;->preloadFirstTask()V

    .line 338
    return-void

    .line 331
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.systemui.recent.action.PRELOAD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 332
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.systemui"

    const-string v2, "com.android.systemui.recent.RecentsPreloadReceiver"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 334
    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    const/4 v3, -0x2

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0
.end method

.method public start()V
    .locals 2

    .prologue
    .line 60
    const-class v0, Lcom/android/systemui/RecentsComponent;

    invoke-virtual {p0, v0, p0}, Lcom/android/systemui/SystemUI;->putComponent(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 62
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mUseRecentsTrayConcept:Z

    if-eqz v0, :cond_0

    .line 63
    new-instance v0, Lcom/android/systemui/recent/RecentsWindow;

    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/recent/RecentsWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/recent/Recents;->mRecentsWindow:Lcom/android/systemui/recent/RecentsWindow;

    .line 65
    :cond_0
    return-void
.end method

.method public toggleRecents(Landroid/view/Display;ILandroid/view/View;)V
    .locals 10
    .param p1, "display"    # Landroid/view/Display;
    .param p2, "layoutDirection"    # I
    .param p3, "statusBarView"    # Landroid/view/View;

    .prologue
    .line 72
    :try_start_0
    sget-boolean v6, Lcom/android/systemui/statusbar/Feature;->mUseRecentsTrayConcept:Z

    if-eqz v6, :cond_0

    .line 73
    iget-object v6, p0, Lcom/android/systemui/recent/Recents;->mRecentsWindow:Lcom/android/systemui/recent/RecentsWindow;

    invoke-virtual {v6}, Lcom/android/systemui/recent/RecentsWindow;->show()V

    .line 322
    :goto_0
    return-void

    .line 77
    :cond_0
    sget-boolean v6, Lcom/android/systemui/statusbar/Feature;->mBlockRecentRingingState:Z

    if-eqz v6, :cond_1

    .line 78
    const-string v6, "Recents"

    const-string v7, "toggleRecents()."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 80
    :try_start_1
    const-string v6, "phone"

    invoke-static {v6}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v5

    .line 81
    .local v5, "telephonyService":Lcom/android/internal/telephony/ITelephony;
    if-eqz v5, :cond_1

    invoke-interface {v5}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 82
    const-string v6, "Recents"

    const-string v7, "recent apps key disabled during ringing"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 85
    .end local v5    # "telephonyService":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 86
    .local v1, "ex":Landroid/os/RemoteException;
    :try_start_2
    const-string v6, "Recents"

    const-string v7, "RemoteException from getPhoneInterface()"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 90
    .end local v1    # "ex":Landroid/os/RemoteException;
    :cond_1
    iget-object v6, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/systemui/recent/RecentTasksLoader;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recent/RecentTasksLoader;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/recent/RecentTasksLoader;->getFirstTask()Lcom/android/systemui/recent/TaskDescription;

    move-result-object v2

    .line 92
    .local v2, "firstTask":Lcom/android/systemui/recent/TaskDescription;
    new-instance v3, Landroid/content/Intent;

    const-string v6, "com.android.systemui.recent.action.TOGGLE_RECENTS"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 93
    .local v3, "intent":Landroid/content/Intent;
    const-string v6, "com.android.systemui"

    const-string v7, "com.android.systemui.recent.RecentsActivity"

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    const/high16 v6, 0x10800000

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 100
    iget-object v6, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/systemui/recent/RecentsActivity;->forceOpaqueBackground(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 101
    iget-object v6, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v7, 0x7f05000f

    const v8, 0x7f050010

    invoke-static {v6, v7, v8}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v4

    .line 104
    .local v4, "opts":Landroid/app/ActivityOptions;
    iget-object v6, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v7

    new-instance v8, Landroid/os/UserHandle;

    const/4 v9, -0x2

    invoke-direct {v8, v9}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v6, v3, v7, v8}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 319
    .end local v2    # "firstTask":Lcom/android/systemui/recent/TaskDescription;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "opts":Landroid/app/ActivityOptions;
    :catch_1
    move-exception v0

    .line 320
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v6, "Recents"

    const-string v7, "Failed to launch RecentAppsIntent"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 108
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    .restart local v2    # "firstTask":Lcom/android/systemui/recent/TaskDescription;
    .restart local v3    # "intent":Landroid/content/Intent;
    :cond_2
    :try_start_3
    iget-object v6, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    new-instance v7, Landroid/os/UserHandle;

    const/4 v8, -0x2

    invoke-direct {v7, v8}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v6, v3, v7}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0
.end method
