.class Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$2;
.super Ljava/lang/Object;
.source "CallDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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
    .line 704
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$2;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 707
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$2;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$300(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Landroid/content/Context;

    move-result-object v1

    const v0, 0x7f090055

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/sec/android/app/dialertab/callmessage/CallMessagePopup;->launch(Landroid/content/Context;Ljava/lang/String;I)V

    .line 708
    const/4 v0, 0x1

    return v0
.end method
