.class Lcom/sec/android/app/contacts/util/ImsLowSignalWfc$2;
.super Landroid/database/ContentObserver;
.source "ImsLowSignalWfc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/util/ImsLowSignalWfc;-><init>(Ljava/lang/ref/WeakReference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/util/ImsLowSignalWfc;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/util/ImsLowSignalWfc;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/sec/android/app/contacts/util/ImsLowSignalWfc$2;->this$0:Lcom/sec/android/app/contacts/util/ImsLowSignalWfc;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sec/android/app/contacts/util/ImsLowSignalWfc$2;->this$0:Lcom/sec/android/app/contacts/util/ImsLowSignalWfc;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/util/ImsLowSignalWfc;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/sec/android/app/contacts/util/ImsLowSignalWfc$2;->this$0:Lcom/sec/android/app/contacts/util/ImsLowSignalWfc;

    iget-object v1, p0, Lcom/sec/android/app/contacts/util/ImsLowSignalWfc$2;->this$0:Lcom/sec/android/app/contacts/util/ImsLowSignalWfc;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/util/ImsLowSignalWfc;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper;->isLowSignal(Landroid/content/ContentResolver;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/util/ImsLowSignalWfc;->setLowSignal(Z)V

    .line 49
    iget-object v0, p0, Lcom/sec/android/app/contacts/util/ImsLowSignalWfc$2;->this$0:Lcom/sec/android/app/contacts/util/ImsLowSignalWfc;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/util/ImsLowSignalWfc;->notifyLowSignalRegistraints()V

    .line 53
    :goto_0
    return-void

    .line 51
    :cond_0
    # getter for: Lcom/sec/android/app/contacts/util/ImsLowSignalWfc;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/contacts/util/ImsLowSignalWfc;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mLowSignalObserver/onChange(): getActivity() is null"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
