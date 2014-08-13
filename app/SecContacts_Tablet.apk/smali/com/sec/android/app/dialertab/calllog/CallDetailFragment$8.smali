.class Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$8;
.super Ljava/lang/Object;
.source "CallDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)V
    .locals 0

    .prologue
    .line 412
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$8;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 415
    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mIsContactDialog:Z
    invoke-static {}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$300()Z

    move-result v0

    if-nez v0, :cond_0

    .line 416
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$8;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$200(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;->quinticDescription:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->createContact(Landroid/content/Context;Ljava/lang/String;)V

    .line 417
    const/4 v0, 0x1

    # setter for: Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->mIsContactDialog:Z
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;->access$302(Z)Z

    .line 419
    :cond_0
    return-void
.end method
