.class Lcom/sec/android/app/dialertab/calllog/MissedCallCover$CoverDialog$1;
.super Ljava/lang/Object;
.source "MissedCallCover.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dialertab/calllog/MissedCallCover$CoverDialog;-><init>(Lcom/sec/android/app/dialertab/calllog/MissedCallCover;Landroid/content/Context;Ljava/lang/String;[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/dialertab/calllog/MissedCallCover$CoverDialog;

.field final synthetic val$this$0:Lcom/sec/android/app/dialertab/calllog/MissedCallCover;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/calllog/MissedCallCover$CoverDialog;Lcom/sec/android/app/dialertab/calllog/MissedCallCover;)V
    .locals 0

    .prologue
    .line 421
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover$CoverDialog$1;->this$1:Lcom/sec/android/app/dialertab/calllog/MissedCallCover$CoverDialog;

    iput-object p2, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover$CoverDialog$1;->val$this$0:Lcom/sec/android/app/dialertab/calllog/MissedCallCover;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 425
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover$CoverDialog$1;->this$1:Lcom/sec/android/app/dialertab/calllog/MissedCallCover$CoverDialog;

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover$CoverDialog;->this$0:Lcom/sec/android/app/dialertab/calllog/MissedCallCover;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/MissedCallCover;->dismissDialog()V

    .line 427
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sec/android/app/dialertab/calllog/MissedCallCover$CoverDialog$1$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dialertab/calllog/MissedCallCover$CoverDialog$1$1;-><init>(Lcom/sec/android/app/dialertab/calllog/MissedCallCover$CoverDialog$1;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 433
    return-void
.end method
