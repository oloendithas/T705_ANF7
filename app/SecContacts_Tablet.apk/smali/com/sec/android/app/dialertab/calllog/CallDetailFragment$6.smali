.class Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$6;
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
    .line 398
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$6;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 401
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$6;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;->tertiaryIntent:Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 402
    return-void
.end method
