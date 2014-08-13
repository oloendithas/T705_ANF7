.class Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$11;
.super Ljava/lang/Object;
.source "LogsDeleteActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)V
    .locals 0

    .prologue
    .line 1369
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$11;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p1, "av"    # Landroid/widget/AdapterView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "index"    # I
    .param p4, "id"    # J

    .prologue
    .line 1371
    if-nez p3, :cond_1

    .line 1372
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$11;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mHeaderAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->access$000(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1373
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$11;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mHeaderAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->access$000(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 1374
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$11$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$11$1;-><init>(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$11;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1391
    :goto_0
    return-void

    .line 1380
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$11;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mHeaderAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->access$000(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 1381
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$11$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$11$2;-><init>(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$11;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1389
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$11;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    # invokes: Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->updateAllCheckState()V
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->access$1700(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)V

    goto :goto_0
.end method
