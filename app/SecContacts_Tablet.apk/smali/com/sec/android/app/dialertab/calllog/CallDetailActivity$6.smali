.class Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$6;
.super Ljava/lang/Object;
.source "CallDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
.method constructor <init>(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)V
    .locals 0

    .prologue
    .line 782
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$6;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 785
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$6;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # invokes: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->finishPhoneNumerSelectedActionModeIfShown()Z
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$200(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 789
    :goto_0
    return-void

    .line 788
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$6;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;->quanternaryIntent:Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
