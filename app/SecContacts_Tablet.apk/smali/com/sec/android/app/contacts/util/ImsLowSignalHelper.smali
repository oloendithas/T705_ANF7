.class public Lcom/sec/android/app/contacts/util/ImsLowSignalHelper;
.super Ljava/lang/Object;
.source "ImsLowSignalHelper.java"


# static fields
.field public static final MSG_LOW_SIGNAL:I = 0x64


# instance fields
.field private mImsLowSignalBase:Lcom/sec/android/app/contacts/util/ImsLowSignalBase;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/contacts/util/ImsLowSignalHelper;->mImsLowSignalBase:Lcom/sec/android/app/contacts/util/ImsLowSignalBase;

    .line 52
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 58
    .local v0, "refActivity":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/Activity;>;"
    return-void
.end method


# virtual methods
.method public isImsOn()Z
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sec/android/app/contacts/util/ImsLowSignalHelper;->mImsLowSignalBase:Lcom/sec/android/app/contacts/util/ImsLowSignalBase;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/sec/android/app/contacts/util/ImsLowSignalHelper;->mImsLowSignalBase:Lcom/sec/android/app/contacts/util/ImsLowSignalBase;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/util/ImsLowSignalBase;->isImsOn()Z

    move-result v0

    .line 82
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLowSignal()Z
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sec/android/app/contacts/util/ImsLowSignalHelper;->mImsLowSignalBase:Lcom/sec/android/app/contacts/util/ImsLowSignalBase;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/sec/android/app/contacts/util/ImsLowSignalHelper;->mImsLowSignalBase:Lcom/sec/android/app/contacts/util/ImsLowSignalBase;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/util/ImsLowSignalBase;->isLowSignal()Z

    move-result v0

    .line 75
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registerForLowSignal(Landroid/os/Handler;)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/sec/android/app/contacts/util/ImsLowSignalHelper;->mImsLowSignalBase:Lcom/sec/android/app/contacts/util/ImsLowSignalBase;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/sec/android/app/contacts/util/ImsLowSignalHelper;->mImsLowSignalBase:Lcom/sec/android/app/contacts/util/ImsLowSignalBase;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/util/ImsLowSignalBase;->registerForLowSignal(Ljava/lang/ref/WeakReference;)V

    .line 95
    :cond_0
    return-void
.end method

.method public registerImsReceiver(Z)V
    .locals 1
    .param p1, "registered"    # Z

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sec/android/app/contacts/util/ImsLowSignalHelper;->mImsLowSignalBase:Lcom/sec/android/app/contacts/util/ImsLowSignalBase;

    if-nez v0, :cond_0

    .line 68
    :goto_0
    return-void

    .line 64
    :cond_0
    if-eqz p1, :cond_1

    .line 65
    iget-object v0, p0, Lcom/sec/android/app/contacts/util/ImsLowSignalHelper;->mImsLowSignalBase:Lcom/sec/android/app/contacts/util/ImsLowSignalBase;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/util/ImsLowSignalBase;->register()V

    goto :goto_0

    .line 67
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/util/ImsLowSignalHelper;->mImsLowSignalBase:Lcom/sec/android/app/contacts/util/ImsLowSignalBase;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/util/ImsLowSignalBase;->unregister()V

    goto :goto_0
.end method

.method public showErrorDialog(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 87
    iget-object v0, p0, Lcom/sec/android/app/contacts/util/ImsLowSignalHelper;->mImsLowSignalBase:Lcom/sec/android/app/contacts/util/ImsLowSignalBase;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/sec/android/app/contacts/util/ImsLowSignalHelper;->mImsLowSignalBase:Lcom/sec/android/app/contacts/util/ImsLowSignalBase;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/contacts/util/ImsLowSignalBase;->showErrorDialog(I)V

    .line 89
    :cond_0
    return-void
.end method
