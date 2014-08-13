.class Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper$1$1;
.super Ljava/lang/Object;
.source "RingtoneRecommendationHelper.java"

# interfaces
.implements Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper$1;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper$1;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper$1$1;->this$1:Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCanceled()V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper$1$1;->this$1:Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper$1;

    iget-object v0, v0, Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper$1;->this$0:Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;

    # getter for: Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;->access$500(Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper$1$1;->this$1:Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper$1;

    iget-object v0, v0, Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper$1;->this$0:Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;

    # getter for: Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;->access$500(Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper$1$1;->this$1:Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper$1;

    iget-object v0, v0, Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper$1;->this$0:Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;

    # getter for: Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;->mListener:Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper$Listener;
    invoke-static {v0}, Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;->access$600(Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;)Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper$Listener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 63
    iget-object v0, p0, Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper$1$1;->this$1:Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper$1;

    iget-object v0, v0, Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper$1;->this$0:Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;

    # getter for: Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;->mListener:Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper$Listener;
    invoke-static {v0}, Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;->access$600(Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;)Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper$Listener;->onCanceled()V

    .line 65
    :cond_1
    return-void
.end method

.method public onSelected(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper$1$1;->this$1:Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper$1;

    iget-object v0, v0, Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper$1;->this$0:Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;

    # setter for: Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;->mRecommendUri:Landroid/net/Uri;
    invoke-static {v0, p1}, Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;->access$002(Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;Landroid/net/Uri;)Landroid/net/Uri;

    .line 54
    iget-object v0, p0, Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper$1$1;->this$1:Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper$1;

    iget-object v0, v0, Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper$1;->this$0:Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;

    # invokes: Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;->returnResult()V
    invoke-static {v0}, Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;->access$200(Lcom/sec/android/app/contacts/util/RingtoneRecommendationHelper;)V

    .line 55
    return-void
.end method
