.class public Lcom/android/systemui/statusbar/policy/SmartBondingController;
.super Landroid/content/BroadcastReceiver;
.source "SmartBondingController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/SmartBondingController$SmartBondingControlHandler;,
        Lcom/android/systemui/statusbar/policy/SmartBondingController$ImageGetter;
    }
.end annotation


# static fields
.field private static final EVENT_HIDE_DIALOG:I = 0x3

.field private static final EVENT_SHOW_DIALOG:I = 0x1

.field private static final EVENT_UPDATE_DIALOG:I = 0x2

.field private static final TAG:Ljava/lang/String; = "StatusBar.SmartBondingController"

.field private static final TIME_HIDE_DIALOG:I = 0x5dc


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/Dialog;

.field private mDisableAlertCheckBox:Landroid/widget/CheckBox;

.field private mFileSize:J

.field private mHandler:Landroid/os/Handler;

.field private mIsSelected:Z

.field private mSBService:Lcom/samsung/smartbonding/ISmartBondingService;

.field private mThreadID:J

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v2, 0x0

    .line 77
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 62
    iput-wide v2, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController;->mThreadID:J

    .line 63
    iput-wide v2, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController;->mFileSize:J

    .line 64
    const-string v2, ""

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController;->mUrl:Ljava/lang/String;

    .line 66
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController;->mIsSelected:Z

    .line 78
    sget-boolean v2, Lcom/android/systemui/statusbar/BaseStatusBar;->isLightTheme:Z

    if-eqz v2, :cond_0

    .line 79
    new-instance v2, Landroid/view/ContextThemeWrapper;

    const v3, 0x103012b

    invoke-direct {v2, p1, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController;->mContext:Landroid/content/Context;

    .line 84
    :goto_0
    const-string v2, "sb_service"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/smartbonding/ISmartBondingService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/smartbonding/ISmartBondingService;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController;->mSBService:Lcom/samsung/smartbonding/ISmartBondingService;

    .line 85
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "SmartBondingController"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 86
    .local v1, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 87
    new-instance v2, Lcom/android/systemui/statusbar/policy/SmartBondingController$SmartBondingControlHandler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/statusbar/policy/SmartBondingController$SmartBondingControlHandler;-><init>(Lcom/android/systemui/statusbar/policy/SmartBondingController;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController;->mHandler:Landroid/os/Handler;

    .line 89
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 90
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.SB_SHOW_DIALOG"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 91
    const-string v2, "android.intent.action.SB_HIDE_DIALOG"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 93
    return-void

    .line 81
    .end local v0    # "filter":Landroid/content/IntentFilter;
    .end local v1    # "handlerThread":Landroid/os/HandlerThread;
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController;->mContext:Landroid/content/Context;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/SmartBondingController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/SmartBondingController;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/SmartBondingController;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/SmartBondingController;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController;->mDisableAlertCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/SmartBondingController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/SmartBondingController;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/SmartBondingController;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/SmartBondingController;

    .prologue
    .line 58
    iget-wide v0, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController;->mThreadID:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/policy/SmartBondingController;IJ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/SmartBondingController;
    .param p1, "x1"    # I
    .param p2, "x2"    # J

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/policy/SmartBondingController;->setSBUsageStatus(IJ)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/policy/SmartBondingController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/SmartBondingController;

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController;->mIsSelected:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/systemui/statusbar/policy/SmartBondingController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/SmartBondingController;
    .param p1, "x1"    # Z

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController;->mIsSelected:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/policy/SmartBondingController;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/SmartBondingController;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/systemui/statusbar/policy/SmartBondingController;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/SmartBondingController;
    .param p1, "x1"    # Landroid/app/Dialog;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController;->mDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/policy/SmartBondingController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/SmartBondingController;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/SmartBondingController;->removeSmartBondingUsageAlert()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/policy/SmartBondingController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/SmartBondingController;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/SmartBondingController;->createSmartBondingUsageAlert()V

    return-void
.end method

.method private createSmartBondingUsageAlert()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const v9, 0x7f0800e4

    const/high16 v8, -0x1000000

    .line 122
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController;->mContext:Landroid/content/Context;

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 123
    .local v4, "usageLayout":Landroid/view/LayoutInflater;
    const v6, 0x7f04002e

    invoke-virtual {v4, v6, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 125
    .local v5, "usageView":Landroid/view/View;
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b01e6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 128
    .local v1, "message":Ljava/lang/String;
    const-string v6, "%d"

    const-string v7, "30"

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 129
    const-string v6, "\n"

    const-string v7, "<br/>"

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 131
    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 132
    .local v2, "textView":Landroid/widget/TextView;
    new-instance v6, Lcom/android/systemui/statusbar/policy/SmartBondingController$ImageGetter;

    invoke-direct {v6, p0}, Lcom/android/systemui/statusbar/policy/SmartBondingController$ImageGetter;-><init>(Lcom/android/systemui/statusbar/policy/SmartBondingController;)V

    invoke-static {v1, v6, v10}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    const v6, 0x7f0800e5

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController;->mDisableAlertCheckBox:Landroid/widget/CheckBox;

    .line 136
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController;->mDisableAlertCheckBox:Landroid/widget/CheckBox;

    new-instance v7, Lcom/android/systemui/statusbar/policy/SmartBondingController$1;

    invoke-direct {v7, p0}, Lcom/android/systemui/statusbar/policy/SmartBondingController$1;-><init>(Lcom/android/systemui/statusbar/policy/SmartBondingController;)V

    invoke-virtual {v6, v7}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 145
    const/4 v3, 0x0

    .line 153
    .local v3, "theme":I
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 154
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v6, 0x7f0b01e5

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 155
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 156
    const v6, 0x104000a

    new-instance v7, Lcom/android/systemui/statusbar/policy/SmartBondingController$2;

    invoke-direct {v7, p0}, Lcom/android/systemui/statusbar/policy/SmartBondingController$2;-><init>(Lcom/android/systemui/statusbar/policy/SmartBondingController;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 164
    const/high16 v6, 0x1040000

    new-instance v7, Lcom/android/systemui/statusbar/policy/SmartBondingController$3;

    invoke-direct {v7, p0}, Lcom/android/systemui/statusbar/policy/SmartBondingController$3;-><init>(Lcom/android/systemui/statusbar/policy/SmartBondingController;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 174
    sget-boolean v6, Lcom/android/systemui/statusbar/BaseStatusBar;->isLightTheme:Z

    if-eqz v6, :cond_0

    .line 175
    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 176
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController;->mDisableAlertCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 179
    :cond_0
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 180
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController;->mDialog:Landroid/app/Dialog;

    .line 182
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController;->mDialog:Landroid/app/Dialog;

    new-instance v7, Lcom/android/systemui/statusbar/policy/SmartBondingController$4;

    invoke-direct {v7, p0}, Lcom/android/systemui/statusbar/policy/SmartBondingController$4;-><init>(Lcom/android/systemui/statusbar/policy/SmartBondingController;)V

    invoke-virtual {v6, v7}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 192
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x7d3

    invoke-virtual {v6, v7}, Landroid/view/Window;->setType(I)V

    .line 193
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    .line 194
    const-string v6, "StatusBar.SmartBondingController"

    const-string v7, "createSmartBondingUsageAlert : done"

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    return-void
.end method

.method private isLandsacpe()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 218
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v0, :cond_0

    .line 219
    const/4 v0, 0x0

    .line 221
    :cond_0
    return v0
.end method

.method private isLightTheme()Z
    .locals 1

    .prologue
    .line 243
    const/4 v0, 0x0

    return v0
.end method

.method private isWifiConnected()Z
    .locals 4

    .prologue
    .line 226
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 228
    .local v1, "connMgr":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 229
    .local v0, "activeNetwork":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 235
    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 232
    :pswitch_0
    const/4 v2, 0x1

    goto :goto_0

    .line 230
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private removeSmartBondingUsageAlert()V
    .locals 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 200
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController;->mDialog:Landroid/app/Dialog;

    .line 201
    const-string v0, "StatusBar.SmartBondingController"

    const-string v1, "removeSmartBondingUsageAlert : done"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_0
    return-void
.end method

.method private setSBUsageStatus(IJ)V
    .locals 4
    .param p1, "status"    # I
    .param p2, "threadID"    # J

    .prologue
    .line 206
    const-string v1, "StatusBar.SmartBondingController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSBUsageStatus : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " thread : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController;->mSBService:Lcom/samsung/smartbonding/ISmartBondingService;

    if-eqz v1, :cond_0

    .line 208
    const-string v1, "StatusBar.SmartBondingController"

    const-string v2, "call setSBUsageStatus in ISmartBondingService"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController;->mSBService:Lcom/samsung/smartbonding/ISmartBondingService;

    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/smartbonding/ISmartBondingService;->setSBUsageStatus(IJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 211
    :catch_0
    move-exception v0

    .line 212
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "StatusBar.SmartBondingController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSBUsageStatus Exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x3

    const-wide/16 v6, -0x1

    .line 97
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, "action":Ljava/lang/String;
    const-string v3, "StatusBar.SmartBondingController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    const-string v3, "android.intent.action.SB_SHOW_DIALOG"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 100
    const-string v3, "threadID"

    invoke-virtual {p2, v3, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController;->mThreadID:J

    .line 101
    const-string v3, "fileSize"

    invoke-virtual {p2, v3, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController;->mFileSize:J

    .line 102
    const-string v3, "url"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 104
    .local v2, "url":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController;->mUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController;->mDialog:Landroid/app/Dialog;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 105
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 106
    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController;->mUrl:Ljava/lang/String;

    .line 107
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 108
    .local v1, "message":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 119
    .end local v1    # "message":Landroid/os/Message;
    .end local v2    # "url":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 110
    .restart local v2    # "url":Ljava/lang/String;
    :cond_1
    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController;->mUrl:Ljava/lang/String;

    .line 111
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 112
    .restart local v1    # "message":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 114
    .end local v1    # "message":Landroid/os/Message;
    .end local v2    # "url":Ljava/lang/String;
    :cond_2
    const-string v3, "android.intent.action.SB_HIDE_DIALOG"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 115
    const-string v3, "threadID"

    invoke-virtual {p2, v3, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController;->mThreadID:J

    .line 116
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 117
    .restart local v1    # "message":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x5dc

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method
