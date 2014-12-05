.class public Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;
.super Landroid/service/wallpaper/IWallpaperConnection$Stub;
.source "KeyguardLiveWallpaperConnection.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private final TAG:Ljava/lang/String;

.field mConnected:Z

.field private final mContext:Landroid/content/Context;

.field mEngine:Landroid/service/wallpaper/IWallpaperEngine;

.field private final mIntent:Landroid/content/Intent;

.field mIsVisible:Z

.field private final mParentView:Landroid/view/View;

.field mService:Landroid/service/wallpaper/IWallpaperService;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/Intent;Landroid/view/View;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "parentView"    # Landroid/view/View;

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/service/wallpaper/IWallpaperConnection$Stub;-><init>()V

    .line 18
    const-string v0, "KeyguardLiveWallpaperConnection"

    iput-object v0, p0, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->TAG:Ljava/lang/String;

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->mIsVisible:Z

    .line 30
    iput-object p1, p0, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->mContext:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->mIntent:Landroid/content/Intent;

    .line 32
    iput-object p3, p0, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->mParentView:Landroid/view/View;

    .line 33
    return-void
.end method


# virtual methods
.method public attachEngine(Landroid/service/wallpaper/IWallpaperEngine;)V
    .registers 4
    .param p1, "engine"    # Landroid/service/wallpaper/IWallpaperEngine;

    .prologue
    .line 87
    monitor-enter p0

    .line 88
    :try_start_1
    iget-boolean v1, p0, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->mConnected:Z

    if-eqz v1, :cond_9

    .line 89
    iput-object p1, p0, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    .line 97
    :goto_7
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_12

    .line 98
    return-void

    .line 92
    :cond_9
    :try_start_9
    invoke-interface {p1}, Landroid/service/wallpaper/IWallpaperEngine;->destroy()V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_c} :catch_d
    .catchall {:try_start_9 .. :try_end_c} :catchall_12

    goto :goto_7

    .line 93
    :catch_d
    move-exception v0

    .line 94
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_e
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_7

    .line 97
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_12
    move-exception v1

    monitor-exit p0
    :try_end_14
    .catchall {:try_start_e .. :try_end_14} :catchall_12

    throw v1
.end method

.method public connect()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 36
    monitor-enter p0

    .line 37
    :try_start_2
    iget-object v1, p0, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->mIntent:Landroid/content/Intent;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p0, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-nez v1, :cond_10

    .line 38
    const/4 v0, 0x0

    monitor-exit p0

    .line 42
    :goto_f
    return v0

    .line 41
    :cond_10
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->mConnected:Z

    .line 42
    monitor-exit p0

    goto :goto_f

    .line 43
    :catchall_15
    move-exception v0

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_2 .. :try_end_17} :catchall_15

    throw v0
.end method

.method public disconnect()V
    .registers 3

    .prologue
    .line 47
    monitor-enter p0

    .line 48
    const/4 v1, 0x0

    :try_start_2
    iput-boolean v1, p0, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->mConnected:Z

    .line 49
    iget-object v1, p0, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;
    :try_end_6
    .catchall {:try_start_2 .. :try_end_6} :catchall_1f

    if-eqz v1, :cond_10

    .line 51
    :try_start_8
    iget-object v1, p0, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    invoke-interface {v1}, Landroid/service/wallpaper/IWallpaperEngine;->destroy()V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_d} :catch_1a
    .catchall {:try_start_8 .. :try_end_d} :catchall_1f

    .line 55
    :goto_d
    const/4 v1, 0x0

    :try_start_e
    iput-object v1, p0, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;
    :try_end_10
    .catchall {:try_start_e .. :try_end_10} :catchall_1f

    .line 59
    :cond_10
    :try_start_10
    iget-object v1, p0, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_15
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_15} :catch_22
    .catchall {:try_start_10 .. :try_end_15} :catchall_1f

    .line 64
    :goto_15
    const/4 v1, 0x0

    :try_start_16
    iput-object v1, p0, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    .line 65
    monitor-exit p0

    .line 66
    return-void

    .line 52
    :catch_1a
    move-exception v0

    .line 53
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_d

    .line 65
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_1f
    move-exception v1

    monitor-exit p0
    :try_end_21
    .catchall {:try_start_16 .. :try_end_21} :catchall_1f

    throw v1

    .line 60
    :catch_22
    move-exception v0

    .line 61
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :try_start_23
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_1f

    goto :goto_15
.end method

.method public engineShown(Landroid/service/wallpaper/IWallpaperEngine;)V
    .registers 2
    .param p1, "engine"    # Landroid/service/wallpaper/IWallpaperEngine;

    .prologue
    .line 106
    return-void
.end method

.method public isVisible()Z
    .registers 2

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->mIsVisible:Z

    return v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 13
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 69
    invoke-static {p2}, Landroid/service/wallpaper/IWallpaperService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/wallpaper/IWallpaperService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    .line 71
    :try_start_6
    iget-object v9, p0, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->mParentView:Landroid/view/View;

    .line 72
    .local v9, "view":Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v8

    .line 73
    .local v8, "root":Landroid/view/View;
    iget-object v0, p0, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    invoke-virtual {v9}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/16 v3, 0x3ec

    const/4 v4, 0x1

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v6

    move-object v1, p0

    invoke-interface/range {v0 .. v6}, Landroid/service/wallpaper/IWallpaperService;->attach(Landroid/service/wallpaper/IWallpaperConnection;Landroid/os/IBinder;IZII)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_21} :catch_22

    .line 79
    .end local v8    # "root":Landroid/view/View;
    .end local v9    # "view":Landroid/view/View;
    :goto_21
    return-void

    .line 76
    :catch_22
    move-exception v7

    .line 77
    .local v7, "e":Landroid/os/RemoteException;
    const-string v0, "KeyguardLiveWallpaperConnection"

    const-string v1, "Failed attaching wallpaper; clearing"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_21
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    const/4 v0, 0x0

    .line 82
    iput-object v0, p0, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    .line 83
    iput-object v0, p0, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    .line 84
    return-void
.end method

.method public setVisibility(Z)V
    .registers 6
    .param p1, "isVisible"    # Z

    .prologue
    .line 109
    const-string v1, "KeyguardLiveWallpaperConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set visibility = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iput-boolean p1, p0, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->mIsVisible:Z

    .line 113
    iget-object v1, p0, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    if-nez v1, :cond_1f

    .line 121
    :goto_1e
    return-void

    .line 117
    :cond_1f
    :try_start_1f
    iget-object v1, p0, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    iget-boolean v2, p0, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->mIsVisible:Z

    invoke-interface {v1, v2}, Landroid/service/wallpaper/IWallpaperEngine;->setVisibility(Z)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_26} :catch_27

    goto :goto_1e

    .line 118
    :catch_27
    move-exception v0

    .line 119
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1e
.end method

.method public setWallpaper(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 101
    const/4 v0, 0x0

    return-object v0
.end method
