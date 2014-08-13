.class Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$11$2;
.super Ljava/lang/Object;
.source "LogsDeleteActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$11;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$11;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$11;)V
    .locals 0

    .prologue
    .line 1381
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$11$2;->this$1:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1383
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$11$2;->this$1:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$11;

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$11;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->setAllItemChecked(Z)V

    .line 1384
    return-void
.end method
