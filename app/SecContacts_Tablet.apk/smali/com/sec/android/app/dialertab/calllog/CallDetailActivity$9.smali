.class Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$9;
.super Landroid/database/ContentObserver;
.source "CallDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 863
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$9;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 866
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$9;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$9;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # invokes: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getCallLogEntryUris()Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$500(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->updateData(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$600(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;Ljava/lang/String;)V

    .line 867
    return-void
.end method
