.class public abstract Lcom/sec/android/app/contacts/util/ImsLowSignalBase;
.super Ljava/lang/Object;
.source "ImsLowSignalBase.java"


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mImsOn:Z

.field private mLowSignal:Z

.field private mRefActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private mRefHandler:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 0
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
    .line 28
    .local p1, "refActivity":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/Activity;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/sec/android/app/contacts/util/ImsLowSignalBase;->mRefActivity:Ljava/lang/ref/WeakReference;

    .line 30
    return-void
.end method

.method private getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/sec/android/app/contacts/util/ImsLowSignalBase;->mRefHandler:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    .line 88
    const/4 v0, 0x0

    .line 90
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/util/ImsLowSignalBase;->mRefHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    goto :goto_0
.end method


# virtual methods
.method protected dismissDialog()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/sec/android/app/contacts/util/ImsLowSignalBase;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/sec/android/app/contacts/util/ImsLowSignalBase;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 67
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/contacts/util/ImsLowSignalBase;->mAlertDialog:Landroid/app/AlertDialog;

    .line 68
    return-void
.end method

.method protected getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sec/android/app/contacts/util/ImsLowSignalBase;->mRefActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method protected isImsOn()Z
    .locals 1

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/util/ImsLowSignalBase;->mImsOn:Z

    return v0
.end method

.method protected isLowSignal()Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/util/ImsLowSignalBase;->mLowSignal:Z

    return v0
.end method

.method protected notifyLowSignalRegistraints()V
    .locals 3

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/sec/android/app/contacts/util/ImsLowSignalBase;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 78
    .local v0, "handler":Landroid/os/Handler;
    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 80
    .local v1, "msg":Landroid/os/Message;
    const/16 v2, 0x64

    iput v2, v1, Landroid/os/Message;->what:I

    .line 81
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 83
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public abstract register()V
.end method

.method public registerForLowSignal(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/Handler;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 72
    .local p1, "refHandler":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/os/Handler;>;"
    iput-object p1, p0, Lcom/sec/android/app/contacts/util/ImsLowSignalBase;->mRefHandler:Ljava/lang/ref/WeakReference;

    .line 73
    return-void
.end method

.method protected setAlertDialog(Landroid/app/AlertDialog;)V
    .locals 0
    .param p1, "alertDialog"    # Landroid/app/AlertDialog;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/sec/android/app/contacts/util/ImsLowSignalBase;->mAlertDialog:Landroid/app/AlertDialog;

    .line 61
    return-void
.end method

.method protected setImsOn(Z)V
    .locals 0
    .param p1, "imsOn"    # Z

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/util/ImsLowSignalBase;->mImsOn:Z

    .line 39
    return-void
.end method

.method protected setLowSignal(Z)V
    .locals 0
    .param p1, "lowSignal"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/util/ImsLowSignalBase;->mLowSignal:Z

    .line 46
    return-void
.end method

.method public abstract showErrorDialog(I)V
.end method

.method public abstract unregister()V
.end method
