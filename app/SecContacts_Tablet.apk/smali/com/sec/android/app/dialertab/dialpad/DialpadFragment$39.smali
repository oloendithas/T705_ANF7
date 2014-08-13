.class Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$39;
.super Ljava/lang/Object;
.source "DialpadFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->onCreateSimSelectDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)V
    .locals 0

    .prologue
    .line 11410
    iput-object p1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$39;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v1, 0x1

    .line 11412
    if-nez p2, :cond_1

    .line 11413
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$39;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    const/4 v1, 0x0

    # setter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->simId:I
    invoke-static {v0, v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$8202(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;I)I

    .line 11414
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$39;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->dialButtonPressed()V

    .line 11419
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$39;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    const/4 v1, -0x1

    # setter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->simId:I
    invoke-static {v0, v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$8202(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;I)I

    .line 11420
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 11421
    return-void

    .line 11415
    :cond_1
    if-ne p2, v1, :cond_0

    .line 11416
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$39;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # setter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->simId:I
    invoke-static {v0, v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$8202(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;I)I

    .line 11417
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$39;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->dialButtonPressed()V

    goto :goto_0
.end method
