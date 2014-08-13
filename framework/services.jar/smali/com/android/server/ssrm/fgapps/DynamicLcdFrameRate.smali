.class public final Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;
.super Lcom/android/server/ssrm/fgapps/FgAppListener;
.source "DynamicLcdFrameRate.java"

# interfaces
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$BootCompleteCallback;
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$FgAppChangedCallback;
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$StatusNotificationCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS_ALL;,
        Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;
    }
.end annotation


# static fields
.field static TAG:Ljava/lang/String;

.field static mCustomFreqManager:Landroid/os/CustomFrequencyManager;

.field public static sDynamicLCDFPS:Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;

.field static sMultiWindowRunning:Z

.field public static sPermanentAppPID:I


# instance fields
.field final CHROME_PKG:Ljava/lang/String;

.field final LCD_FPS_HIGH:I

.field final LCD_FPS_IDLE:I

.field final LCD_FPS_LOW:I

.field final LCD_FPS_NONE:I

.field final QUALCOMM_FPS_PATH:Ljava/lang/String;

.field final SLSI_FPS_PATH:Ljava/lang/String;

.field final SSRM_STATUS_NOTIFY:Ljava/lang/String;

.field final SSRM_STATUS_NOTIFY_KNOX:Ljava/lang/String;

.field final YOUTUBE_PKG:Ljava/lang/String;

.field mBrowserIntentLowFps:Z

.field mBrowserLowFps:Z

.field mDynamicFpsPackage:Z

.field mFpsFullScreenMode:Z

.field mPrevBrowserLowFps:Z

.field mPrevFpsFullScreen:Z

.field mPrevFpsPackage:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 38
    const/16 v0, 0x1a

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->x([I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->TAG:Ljava/lang/String;

    .line 46
    sput-object v2, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->sDynamicLCDFPS:Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;

    .line 48
    const/4 v0, 0x0

    sput v0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->sPermanentAppPID:I

    .line 74
    const-string v0, "1"

    const-string/jumbo v1, "sys.multiwindow.running"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->sMultiWindowRunning:Z

    .line 264
    sput-object v2, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    return-void

    .line 38
    nop

    :array_0
    .array-data 4
        0x29
        0x29
        0x28
        0x37
        0xc
        0x48
        0x40
        0x3e
        0x3
        0x14
        0x1b
        0x17
        0x13
        0x19
        0x36
        0x19
        0x1e
        0x3c
        0x8
        0x1b
        0x17
        0x1f
        0x28
        0x1b
        0xe
        0x1f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;-><init>()V

    .line 50
    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mFpsFullScreenMode:Z

    .line 52
    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mDynamicFpsPackage:Z

    .line 54
    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mBrowserLowFps:Z

    .line 56
    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mBrowserIntentLowFps:Z

    .line 58
    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mPrevBrowserLowFps:Z

    .line 60
    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mPrevFpsFullScreen:Z

    .line 62
    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mPrevFpsPackage:Z

    .line 64
    iput v0, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->LCD_FPS_HIGH:I

    .line 66
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->LCD_FPS_LOW:I

    .line 68
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->LCD_FPS_IDLE:I

    .line 70
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->LCD_FPS_NONE:I

    .line 177
    const/16 v0, 0x1f

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->x([I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->QUALCOMM_FPS_PATH:Ljava/lang/String;

    .line 183
    const/16 v0, 0x25

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->x([I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->SLSI_FPS_PATH:Ljava/lang/String;

    .line 216
    const/16 v0, 0x1a

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->x([I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->YOUTUBE_PKG:Ljava/lang/String;

    .line 222
    const/16 v0, 0x12

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->x([I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->CHROME_PKG:Ljava/lang/String;

    .line 278
    const-string v0, "com.sec.android.intent.action.SSRM_REQUEST"

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->SSRM_STATUS_NOTIFY:Ljava/lang/String;

    .line 280
    const-string/jumbo v0, "sec_container_1.com.sec.android.intent.action.SSRM_REQUEST"

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->SSRM_STATUS_NOTIFY_KNOX:Ljava/lang/String;

    .line 44
    return-void

    .line 177
    nop

    :array_0
    .array-data 4
        0x55
        0x9
        0x3
        0x9
        0x55
        0x19
        0x16
        0x1b
        0x9
        0x9
        0x55
        0x16
        0x19
        0x1e
        0x55
        0xa
        0x1b
        0x14
        0x1f
        0x16
        0x55
        0x1c
        0xa
        0x9
        0x25
        0x19
        0x12
        0x1b
        0x14
        0x1d
        0x1f
    .end array-data

    .line 183
    :array_1
    .array-data 4
        0x55
        0x9
        0x3
        0x9
        0x55
        0x19
        0x16
        0x1b
        0x9
        0x9
        0x55
        0x1d
        0x8
        0x1b
        0xa
        0x12
        0x13
        0x19
        0x9
        0x55
        0x1c
        0x18
        0x4a
        0x55
        0x16
        0x19
        0x1e
        0x1c
        0x8
        0x1f
        0xb
        0x55
        0x16
        0x1f
        0xc
        0x1f
        0x16
    .end array-data

    .line 216
    :array_2
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1d
        0x15
        0x15
        0x1d
        0x16
        0x1f
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x3
        0x15
        0xf
        0xe
        0xf
        0x18
        0x1f
    .end array-data

    .line 222
    :array_3
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x19
        0x12
        0x8
        0x15
        0x17
        0x1f
    .end array-data
.end method

.method static onFullScreenStatusChanged(Z)V
    .locals 2
    .param p0, "isFullscreen"    # Z

    .prologue
    .line 267
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_D2:Z

    if-eqz v0, :cond_1

    .line 268
    sget-object v0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    if-nez v0, :cond_0

    .line 269
    sget-object v0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mContext:Landroid/content/Context;

    const-string v1, "CustomFrequencyManagerService"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/CustomFrequencyManager;

    sput-object v0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    .line 272
    :cond_0
    sget-object v0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    if-eqz v0, :cond_1

    .line 273
    sget-object v0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    invoke-virtual {v0, p0}, Landroid/os/CustomFrequencyManager;->onTopAppChanged(Z)V

    .line 276
    :cond_1
    return-void
.end method


# virtual methods
.method createDynamicLCDFPS()Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 194
    sget-boolean v3, Lcom/android/server/ssrm/Feature;->DISABLE_DYNAMIC_FPS:Z

    if-eqz v3, :cond_1

    .line 212
    :cond_0
    :goto_0
    return-object v0

    .line 198
    :cond_1
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->QUALCOMM_FPS_PATH:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 199
    .local v1, "qualcomFPSFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 200
    new-instance v0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS_ALL;

    invoke-direct {v0, p0}, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS_ALL;-><init>(Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;)V

    .line 201
    .local v0, "instance":Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS_ALL;
    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->QUALCOMM_FPS_PATH:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS_ALL;->setSysfsPath(Ljava/lang/String;)V

    goto :goto_0

    .line 205
    .end local v0    # "instance":Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS_ALL;
    :cond_2
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->SLSI_FPS_PATH:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 206
    .local v2, "slsiFPSFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->canWrite()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 207
    new-instance v0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS_ALL;

    invoke-direct {v0, p0}, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS_ALL;-><init>(Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;)V

    .line 208
    .restart local v0    # "instance":Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS_ALL;
    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->SLSI_FPS_PATH:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS_ALL;->setSysfsPath(Ljava/lang/String;)V

    goto :goto_0
.end method

.method isFPSValid(I)Z
    .locals 1
    .param p1, "fps"    # I

    .prologue
    .line 159
    packed-switch p1, :pswitch_data_0

    .line 165
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 163
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 159
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onBootComplete()V
    .locals 1

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->createDynamicLCDFPS()Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;

    move-result-object v0

    sput-object v0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->sDynamicLCDFPS:Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;

    .line 171
    sget-object v0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->sDynamicLCDFPS:Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;

    if-eqz v0, :cond_0

    .line 172
    sget-object v0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->sDynamicLCDFPS:Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;

    invoke-virtual {v0}, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;->initialize()V

    .line 174
    :cond_0
    return-void
.end method

.method public onFgAppChanged()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 228
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->getForegroundPackageName()Ljava/lang/String;

    move-result-object v0

    .line 229
    .local v0, "packageName":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 233
    :cond_1
    sget-object v2, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/ssrm/SortingMachine;->getInstance(Landroid/content/Context;)Lcom/android/server/ssrm/SortingMachine;

    move-result-object v1

    .line 234
    .local v1, "sm":Lcom/android/server/ssrm/SortingMachine;
    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->YOUTUBE_PKG:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->CHROME_PKG:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 235
    :cond_2
    iput-boolean v4, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mDynamicFpsPackage:Z

    .line 236
    iput-boolean v3, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mBrowserLowFps:Z

    .line 237
    iput-boolean v3, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mBrowserIntentLowFps:Z

    .line 247
    :goto_1
    iget-boolean v2, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mDynamicFpsPackage:Z

    iget-boolean v3, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mPrevFpsPackage:Z

    if-eq v2, v3, :cond_6

    .line 248
    sget-object v2, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->sDynamicLCDFPS:Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;

    if-eqz v2, :cond_3

    .line 249
    sget-object v2, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->sDynamicLCDFPS:Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;

    invoke-virtual {v2}, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;->handleMonitorStateChanged()V

    .line 251
    :cond_3
    iget-boolean v2, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mDynamicFpsPackage:Z

    iput-boolean v2, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mPrevFpsPackage:Z

    goto :goto_0

    .line 238
    :cond_4
    invoke-virtual {v1, v0}, Lcom/android/server/ssrm/SortingMachine;->isBrowserApp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 239
    iput-boolean v4, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mBrowserLowFps:Z

    .line 240
    iput-boolean v3, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mDynamicFpsPackage:Z

    goto :goto_1

    .line 242
    :cond_5
    iput-boolean v3, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mDynamicFpsPackage:Z

    .line 243
    iput-boolean v3, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mBrowserLowFps:Z

    .line 244
    iput-boolean v3, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mBrowserIntentLowFps:Z

    goto :goto_1

    .line 252
    :cond_6
    iget-boolean v2, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mBrowserLowFps:Z

    iget-boolean v3, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mPrevBrowserLowFps:Z

    if-eq v2, v3, :cond_0

    .line 253
    sget-object v2, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->sDynamicLCDFPS:Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;

    if-eqz v2, :cond_7

    .line 254
    sget-object v2, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->sDynamicLCDFPS:Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;

    invoke-virtual {v2}, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;->handleMonitorStateChanged()V

    .line 256
    :cond_7
    iget-boolean v2, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mBrowserLowFps:Z

    iput-boolean v2, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mPrevBrowserLowFps:Z

    goto :goto_0
.end method

.method public onFgAppInPackageList(Z)V
    .locals 0
    .param p1, "isForeground"    # Z

    .prologue
    .line 191
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Lcom/android/server/ssrm/fgapps/FgAppListener;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "value"    # Lcom/android/server/ssrm/fgapps/FgAppListener;

    .prologue
    const/4 v4, 0x0

    .line 284
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/ssrm/fgapps/FgAppListener;->onReceive(Landroid/content/Context;Landroid/content/Intent;Lcom/android/server/ssrm/fgapps/FgAppListener;)V

    .line 286
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 288
    .local v0, "action":Ljava/lang/String;
    const-string v5, "android.intent.action.SCREEN_ON"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 289
    sget-object v4, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->sDynamicLCDFPS:Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;

    if-eqz v4, :cond_0

    .line 290
    sget-object v4, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->sDynamicLCDFPS:Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;

    invoke-virtual {v4}, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;->resetFPS()V

    .line 317
    :cond_0
    :goto_0
    return-void

    .line 292
    :cond_1
    const-string v5, "com.sec.android.action.NOTIFY_MULTIWINDOW_STATUS"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 293
    const-string v4, "1"

    const-string/jumbo v5, "sys.multiwindow.running"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    sput-boolean v4, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->sMultiWindowRunning:Z

    .line 294
    sget-object v4, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->sDynamicLCDFPS:Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;

    if-eqz v4, :cond_0

    .line 295
    sget-object v4, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->sDynamicLCDFPS:Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;

    invoke-virtual {v4}, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;->handleMonitorStateChanged()V

    goto :goto_0

    .line 297
    :cond_2
    const-string v5, "com.sec.android.intent.action.SSRM_REQUEST"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string/jumbo v5, "sec_container_1.com.sec.android.intent.action.SSRM_REQUEST"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 298
    :cond_3
    sget-object v5, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->SSRM_STATUS_NAME:Ljava/lang/String;

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 299
    .local v2, "statusName":Ljava/lang/String;
    sget-object v5, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->SSRM_STATUS_VALUE:Ljava/lang/String;

    invoke-virtual {p2, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 300
    .local v3, "statusValue":Z
    const-string v5, "PID"

    invoke-virtual {p2, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 302
    .local v1, "pid":I
    if-lez v1, :cond_0

    .line 305
    const-string v5, "Camera_preview"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "MoviePlayer_play"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    sget-object v5, Lcom/android/server/ssrm/fgapps/NavigationScenario;->SSRM_STATUS_NAME_FOR_NAVI:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "ChatOnV_vtCall"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "GroupPlay_fpsChange"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "Phone_vtCall"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 310
    :cond_4
    if-eqz v3, :cond_5

    .end local v1    # "pid":I
    :goto_1
    sput v1, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->sPermanentAppPID:I

    .line 311
    sget-object v4, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->sDynamicLCDFPS:Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;

    if-eqz v4, :cond_0

    .line 312
    sget-object v4, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->sDynamicLCDFPS:Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;

    invoke-virtual {v4}, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;->handleMonitorStateChanged()V

    goto/16 :goto_0

    .restart local v1    # "pid":I
    :cond_5
    move v1, v4

    .line 310
    goto :goto_1
.end method

.method public onStatusNotiReceived(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 3
    .param p1, "statusName"    # Ljava/lang/String;
    .param p2, "statusValue"    # Z
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 321
    sget-object v0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "statusName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", statusValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    const-string v0, "FullScreen"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 324
    iput-boolean p2, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mFpsFullScreenMode:Z

    .line 325
    sget-object v0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FullScreen = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mFpsFullScreenMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mFpsFullScreenMode:Z

    iget-boolean v1, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mPrevFpsFullScreen:Z

    if-eq v0, v1, :cond_1

    .line 327
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mFpsFullScreenMode:Z

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->onFullScreenStatusChanged(Z)V

    .line 328
    sget-object v0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->sDynamicLCDFPS:Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;

    if-eqz v0, :cond_0

    .line 329
    sget-object v0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->sDynamicLCDFPS:Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;

    invoke-virtual {v0}, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;->handleMonitorStateChanged()V

    .line 331
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mFpsFullScreenMode:Z

    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mPrevFpsFullScreen:Z

    .line 339
    :cond_1
    :goto_0
    return-void

    .line 333
    :cond_2
    const-string v0, "BrowserLowFps"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 334
    iput-boolean p2, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mBrowserIntentLowFps:Z

    .line 335
    sget-object v0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->sDynamicLCDFPS:Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;

    if-eqz v0, :cond_1

    .line 336
    sget-object v0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->sDynamicLCDFPS:Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;

    invoke-virtual {v0}, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;->handleMonitorStateChanged()V

    goto :goto_0
.end method
