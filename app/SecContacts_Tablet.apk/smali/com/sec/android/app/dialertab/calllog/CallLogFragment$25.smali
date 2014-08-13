.class Lcom/sec/android/app/dialertab/calllog/CallLogFragment$25;
.super Ljava/lang/Object;
.source "CallLogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->openSelectSimDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)V
    .locals 0

    .prologue
    .line 3216
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$25;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 3220
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$25;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    iput p2, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWhichSelectSimId:I

    .line 3221
    const-string v0, "CallLogFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$25;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    iget v2, v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWhichSelectSimId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 3222
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$25;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$25;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    iget v1, v1, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWhichSelectSimId:I

    # invokes: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->openViewByDialog(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$2200(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;I)V

    .line 3223
    return-void
.end method
