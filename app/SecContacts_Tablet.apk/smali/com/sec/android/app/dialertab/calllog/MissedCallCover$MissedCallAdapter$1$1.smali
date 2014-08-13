.class Lcom/sec/android/app/dialertab/calllog/MissedCallCover$MissedCallAdapter$1$1;
.super Ljava/lang/Object;
.source "MissedCallCover.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dialertab/calllog/MissedCallCover$MissedCallAdapter$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/sec/android/app/dialertab/calllog/MissedCallCover$MissedCallAdapter$1;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/calllog/MissedCallCover$MissedCallAdapter$1;)V
    .locals 0

    .prologue
    .line 641
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover$MissedCallAdapter$1$1;->this$2:Lcom/sec/android/app/dialertab/calllog/MissedCallCover$MissedCallAdapter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 643
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover$MissedCallAdapter$1$1;->this$2:Lcom/sec/android/app/dialertab/calllog/MissedCallCover$MissedCallAdapter$1;

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover$MissedCallAdapter$1;->this$1:Lcom/sec/android/app/dialertab/calllog/MissedCallCover$MissedCallAdapter;

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/MissedCallCover$MissedCallAdapter;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 644
    return-void
.end method
