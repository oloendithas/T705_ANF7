.class Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1$2;
.super Ljava/lang/Object;
.source "CallDetailDeleteActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1;)V
    .locals 0

    .prologue
    .line 490
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1$2;->this$1:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 492
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1$2;->this$1:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1;

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->setAllItemChecked(Z)V

    .line 493
    return-void
.end method
