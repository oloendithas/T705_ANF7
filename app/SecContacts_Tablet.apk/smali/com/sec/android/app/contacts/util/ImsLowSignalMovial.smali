.class public Lcom/sec/android/app/contacts/util/ImsLowSignalMovial;
.super Lcom/sec/android/app/contacts/util/ImsLowSignalBase;
.source "ImsLowSignalMovial.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mFilter:Landroid/content/IntentFilter;

.field private mIsReceiverRegistered:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/sec/android/app/contacts/util/ImsLowSignalMovial;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/contacts/util/ImsLowSignalMovial;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p1, "activity":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/Activity;>;"
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/util/ImsLowSignalBase;-><init>(Ljava/lang/ref/WeakReference;)V

    .line 32
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/sec/android/app/contacts/util/ImsLowSignalMovial;->mIsReceiverRegistered:Z

    .line 34
    new-instance v4, Lcom/sec/android/app/contacts/util/ImsLowSignalMovial$1;

    invoke-direct {v4, p0}, Lcom/sec/android/app/contacts/util/ImsLowSignalMovial$1;-><init>(Lcom/sec/android/app/contacts/util/ImsLowSignalMovial;)V

    iput-object v4, p0, Lcom/sec/android/app/contacts/util/ImsLowSignalMovial;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 63
    const/4 v2, 0x0

    .line 64
    .local v2, "IMS_REGISTRATION":Ljava/lang/String;
    const/4 v1, 0x0

    .line 66
    .local v1, "IMS_LOWSIGNAL":Ljava/lang/String;
    :try_start_0
    const-string v4, "com.movial.ipphone.IPUtils"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v5, "IMS_REGISTRATION"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    const-class v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .line 67
    const-string v4, "com.movial.ipphone.IPUtils"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v5, "IMS_LOWSIGNAL"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    const-class v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :goto_0
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/sec/android/app/contacts/util/ImsLowSignalMovial;->mFilter:Landroid/content/IntentFilter;

    .line 72
    iget-object v4, p0, Lcom/sec/android/app/contacts/util/ImsLowSignalMovial;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v4, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 73
    return-void

    .line 68
    :catch_0
    move-exception v3

    .line 69
    .local v3, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/sec/android/app/contacts/util/ImsLowSignalMovial;->TAG:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/sec/android/app/contacts/util/ImsLowSignalMovial;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public register()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 77
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/util/ImsLowSignalBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 78
    .local v1, "activity":Landroid/app/Activity;
    const/4 v4, 0x1

    .line 80
    .local v4, "isCellOnly":Z
    :try_start_0
    const-string v6, "com.movial.ipphone.IPPhoneSettings"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const-string v7, "CELL_ONLY"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    const-class v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 81
    .local v0, "CELL_ONLY":Ljava/lang/String;
    const/4 v6, 0x3

    new-array v2, v6, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/ContentResolver;

    aput-object v7, v2, v6

    const/4 v6, 0x1

    const-class v7, Ljava/lang/String;

    aput-object v7, v2, v6

    const/4 v6, 0x2

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v2, v6

    .line 82
    .local v2, "argTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const-string v6, "com.movial.ipphone.IPPhoneSettings"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const-string v7, "getBoolean"

    invoke-virtual {v6, v7, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 83
    .local v5, "method":Ljava/lang/reflect/Method;
    const/4 v6, 0x0

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v0, v7, v8

    const/4 v8, 0x2

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 87
    .end local v0    # "CELL_ONLY":Ljava/lang/String;
    .end local v2    # "argTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v5    # "method":Ljava/lang/reflect/Method;
    :goto_0
    if-nez v4, :cond_0

    .line 88
    iget-object v6, p0, Lcom/sec/android/app/contacts/util/ImsLowSignalMovial;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v7, p0, Lcom/sec/android/app/contacts/util/ImsLowSignalMovial;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v6, v7}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 89
    iput-boolean v11, p0, Lcom/sec/android/app/contacts/util/ImsLowSignalMovial;->mIsReceiverRegistered:Z

    .line 95
    :goto_1
    return-void

    .line 84
    :catch_0
    move-exception v3

    .line 85
    .local v3, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/sec/android/app/contacts/util/ImsLowSignalMovial;->TAG:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 91
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    invoke-virtual {p0, v10}, Lcom/sec/android/app/contacts/util/ImsLowSignalBase;->setImsOn(Z)V

    .line 92
    invoke-virtual {p0, v10}, Lcom/sec/android/app/contacts/util/ImsLowSignalBase;->setLowSignal(Z)V

    .line 93
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/util/ImsLowSignalBase;->notifyLowSignalRegistraints()V

    goto :goto_1
.end method

.method public showErrorDialog(I)V
    .locals 5
    .param p1, "resid"    # I

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/util/ImsLowSignalBase;->dismissDialog()V

    .line 108
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/util/ImsLowSignalBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 110
    .local v0, "activity":Landroid/app/Activity;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v4, Lcom/sec/android/app/contacts/util/ImsLowSignalMovial$3;

    invoke-direct {v4, p0, v0}, Lcom/sec/android/app/contacts/util/ImsLowSignalMovial$3;-><init>(Lcom/sec/android/app/contacts/util/ImsLowSignalMovial;Landroid/app/Activity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/contacts/util/ImsLowSignalMovial$2;

    invoke-direct {v3, p0, v0}, Lcom/sec/android/app/contacts/util/ImsLowSignalMovial$2;-><init>(Lcom/sec/android/app/contacts/util/ImsLowSignalMovial;Landroid/app/Activity;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 145
    .local v1, "alertDialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 146
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 148
    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/util/ImsLowSignalBase;->setAlertDialog(Landroid/app/AlertDialog;)V

    .line 149
    return-void
.end method

.method public unregister()V
    .locals 2

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/util/ImsLowSignalMovial;->mIsReceiverRegistered:Z

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/util/ImsLowSignalBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/contacts/util/ImsLowSignalMovial;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/util/ImsLowSignalMovial;->mIsReceiverRegistered:Z

    .line 103
    :cond_0
    return-void
.end method
