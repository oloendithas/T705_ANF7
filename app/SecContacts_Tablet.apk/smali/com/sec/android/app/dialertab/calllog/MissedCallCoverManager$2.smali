.class Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager$2;
.super Ljava/lang/Object;
.source "MissedCallCoverManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;->startMissedCallDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager$2;->this$0:Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 172
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 173
    .local v0, "mintent":Landroid/content/Intent;
    const-string v1, "com.samsung.cover.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    const-string v1, "suppressCoverUI"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 175
    const-string v1, "sender"

    const-string v2, "MissedCallCover"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 176
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager$2;->this$0:Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;

    # getter for: Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;->access$000(Lcom/sec/android/app/dialertab/calllog/MissedCallCoverManager;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 177
    return-void
.end method
