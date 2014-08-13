.class Lcom/sec/android/app/dialertab/calllog/MissedCallCover$CoverDialog$1$1;
.super Ljava/lang/Object;
.source "MissedCallCover.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dialertab/calllog/MissedCallCover$CoverDialog$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/sec/android/app/dialertab/calllog/MissedCallCover$CoverDialog$1;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/calllog/MissedCallCover$CoverDialog$1;)V
    .locals 0

    .prologue
    .line 427
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover$CoverDialog$1$1;->this$2:Lcom/sec/android/app/dialertab/calllog/MissedCallCover$CoverDialog$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover$CoverDialog$1$1;->this$2:Lcom/sec/android/app/dialertab/calllog/MissedCallCover$CoverDialog$1;

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover$CoverDialog$1;->this$1:Lcom/sec/android/app/dialertab/calllog/MissedCallCover$CoverDialog;

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover$CoverDialog;->this$0:Lcom/sec/android/app/dialertab/calllog/MissedCallCover;

    # getter for: Lcom/sec/android/app/dialertab/calllog/MissedCallCover;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/MissedCallCover;->access$000(Lcom/sec/android/app/dialertab/calllog/MissedCallCover;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 430
    return-void
.end method
