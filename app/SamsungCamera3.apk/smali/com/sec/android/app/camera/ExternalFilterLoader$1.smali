.class Lcom/sec/android/app/camera/ExternalFilterLoader$1;
.super Landroid/database/ContentObserver;
.source "ExternalFilterLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/ExternalFilterLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/ExternalFilterLoader;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/ExternalFilterLoader;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/sec/android/app/camera/ExternalFilterLoader$1;->this$0:Lcom/sec/android/app/camera/ExternalFilterLoader;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 62
    # getter for: Lcom/sec/android/app/camera/ExternalFilterLoader;->mExternalEffects:Ljava/util/ArrayList;
    invoke-static {}, Lcom/sec/android/app/camera/ExternalFilterLoader;->access$000()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 63
    # getter for: Lcom/sec/android/app/camera/ExternalFilterLoader;->mDualExternalEffects:Ljava/util/ArrayList;
    invoke-static {}, Lcom/sec/android/app/camera/ExternalFilterLoader;->access$100()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 64
    const/4 v0, 0x0

    # setter for: Lcom/sec/android/app/camera/ExternalFilterLoader;->mFilterExist:Z
    invoke-static {v0}, Lcom/sec/android/app/camera/ExternalFilterLoader;->access$202(Z)Z

    .line 65
    iget-object v0, p0, Lcom/sec/android/app/camera/ExternalFilterLoader$1;->this$0:Lcom/sec/android/app/camera/ExternalFilterLoader;

    const/4 v1, 0x1

    # setter for: Lcom/sec/android/app/camera/ExternalFilterLoader;->mIsDBChanged:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/ExternalFilterLoader;->access$302(Lcom/sec/android/app/camera/ExternalFilterLoader;Z)Z

    .line 66
    return-void
.end method
