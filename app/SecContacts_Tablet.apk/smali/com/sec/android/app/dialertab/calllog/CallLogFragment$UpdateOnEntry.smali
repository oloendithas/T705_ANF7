.class Lcom/sec/android/app/dialertab/calllog/CallLogFragment$UpdateOnEntry;
.super Ljava/lang/Object;
.source "CallLogFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/calllog/CallLogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateOnEntry"
.end annotation


# instance fields
.field public mResetMissed:Z

.field final synthetic this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;Z)V
    .locals 0
    .param p2, "resetMissed"    # Z

    .prologue
    .line 3999
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$UpdateOnEntry;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4000
    iput-boolean p2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$UpdateOnEntry;->mResetMissed:Z

    .line 4001
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 4005
    const-wide/16 v0, 0x258

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 4006
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$UpdateOnEntry;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$UpdateOnEntry;->mResetMissed:Z

    # invokes: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->updateOnTransition(ZZ)V
    invoke-static {v0, v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$2700(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;ZZ)V

    .line 4007
    return-void
.end method
