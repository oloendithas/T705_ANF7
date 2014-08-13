.class Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$1;
.super Ljava/lang/Object;
.source "LogsDeleteActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 255
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$1;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 257
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$1;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mHeaderAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->access$000(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    .line 258
    .local v0, "checked":Z
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$1;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mHeaderAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->access$000(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v4

    if-nez v0, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 259
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$1;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    if-nez v0, :cond_1

    :goto_1
    invoke-virtual {v1, v2}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->setAllItemChecked(Z)V

    .line 260
    return-void

    :cond_0
    move v1, v3

    .line 258
    goto :goto_0

    :cond_1
    move v2, v3

    .line 259
    goto :goto_1
.end method
