.class public Lcom/sec/android/app/contacts/util/ImsLowSignalWfc;
.super Lcom/sec/android/app/contacts/util/ImsLowSignalBase;
.source "ImsLowSignalWfc.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mIsRegistered:Z

.field private mLowSignalObserver:Landroid/database/ContentObserver;

.field private mRegistrationStateObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/sec/android/app/contacts/util/ImsLowSignalWfc;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/contacts/util/ImsLowSignalWfc;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 3
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
    .local p1, "activity":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/Activity;>;"
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 32
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/util/ImsLowSignalBase;-><init>(Ljava/lang/ref/WeakReference;)V

    .line 27
    iput-object v0, p0, Lcom/sec/android/app/contacts/util/ImsLowSignalWfc;->mRegistrationStateObserver:Landroid/database/ContentObserver;

    .line 28
    iput-object v0, p0, Lcom/sec/android/app/contacts/util/ImsLowSignalWfc;->mLowSignalObserver:Landroid/database/ContentObserver;

    .line 29
    iput-boolean v2, p0, Lcom/sec/android/app/contacts/util/ImsLowSignalWfc;->mIsRegistered:Z

    .line 34
    new-instance v0, Lcom/sec/android/app/contacts/util/ImsLowSignalWfc$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/contacts/util/ImsLowSignalWfc$1;-><init>(Lcom/sec/android/app/contacts/util/ImsLowSignalWfc;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/util/ImsLowSignalWfc;->mRegistrationStateObserver:Landroid/database/ContentObserver;

    .line 45
    new-instance v0, Lcom/sec/android/app/contacts/util/ImsLowSignalWfc$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/contacts/util/ImsLowSignalWfc$2;-><init>(Lcom/sec/android/app/contacts/util/ImsLowSignalWfc;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/util/ImsLowSignalWfc;->mLowSignalObserver:Landroid/database/ContentObserver;

    .line 56
    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/util/ImsLowSignalWfc;->setImsOn(Z)V

    .line 57
    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/util/ImsLowSignalWfc;->setLowSignal(Z)V

    .line 58
    iput-boolean v2, p0, Lcom/sec/android/app/contacts/util/ImsLowSignalWfc;->mIsRegistered:Z

    .line 59
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/sec/android/app/contacts/util/ImsLowSignalWfc;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public register()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 62
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/util/ImsLowSignalWfc;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 63
    .local v0, "resolver":Landroid/content/ContentResolver;
    sget-object v3, Lcom/sec/android/app/contacts/util/ImsLowSignalWfc;->TAG:Ljava/lang/String;

    const-string v4, "mLowSignalObserver/register()"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-static {v0}, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper;->getRegister(Landroid/content/ContentResolver;)Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;

    move-result-object v3

    sget-object v4, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;->REGISTER:Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;

    if-ne v3, v4, :cond_1

    .line 65
    sget-object v3, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract;->CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/sec/android/app/contacts/util/ImsLowSignalWfc;->mRegistrationStateObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 68
    sget-object v3, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$LowSignalContract;->CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/sec/android/app/contacts/util/ImsLowSignalWfc;->mLowSignalObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 71
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/util/ImsLowSignalWfc;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper;->getRegistrationState(Landroid/content/ContentResolver;)Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;

    move-result-object v3

    sget-object v4, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;->REGISTERED:Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;

    if-ne v3, v4, :cond_0

    move v1, v2

    :cond_0
    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/util/ImsLowSignalWfc;->setImsOn(Z)V

    .line 73
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/util/ImsLowSignalWfc;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper;->isLowSignal(Landroid/content/ContentResolver;)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/util/ImsLowSignalWfc;->setLowSignal(Z)V

    .line 74
    iput-boolean v2, p0, Lcom/sec/android/app/contacts/util/ImsLowSignalWfc;->mIsRegistered:Z

    .line 79
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/util/ImsLowSignalWfc;->notifyLowSignalRegistraints()V

    .line 80
    return-void

    .line 76
    :cond_1
    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/util/ImsLowSignalWfc;->setImsOn(Z)V

    .line 77
    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/util/ImsLowSignalWfc;->setLowSignal(Z)V

    goto :goto_0
.end method

.method public showErrorDialog(I)V
    .locals 4
    .param p1, "resid"    # I

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/util/ImsLowSignalWfc;->dismissDialog()V

    .line 94
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/util/ImsLowSignalWfc;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/util/ImsLowSignalWfc;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/sec/android/app/contacts/util/ImsLowSignalWfc$3;

    invoke-direct {v3, p0}, Lcom/sec/android/app/contacts/util/ImsLowSignalWfc$3;-><init>(Lcom/sec/android/app/contacts/util/ImsLowSignalWfc;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 102
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 103
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 105
    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/util/ImsLowSignalWfc;->setAlertDialog(Landroid/app/AlertDialog;)V

    .line 106
    return-void
.end method

.method public unregister()V
    .locals 3

    .prologue
    .line 83
    sget-object v1, Lcom/sec/android/app/contacts/util/ImsLowSignalWfc;->TAG:Ljava/lang/String;

    const-string v2, "mLowSignalObserver/unregister()"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/util/ImsLowSignalWfc;->mIsRegistered:Z

    if-eqz v1, :cond_0

    .line 85
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/util/ImsLowSignalWfc;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 86
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/sec/android/app/contacts/util/ImsLowSignalWfc;->mRegistrationStateObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 87
    iget-object v1, p0, Lcom/sec/android/app/contacts/util/ImsLowSignalWfc;->mLowSignalObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 88
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/contacts/util/ImsLowSignalWfc;->mIsRegistered:Z

    .line 90
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    :cond_0
    return-void
.end method
