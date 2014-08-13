.class Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$16;
.super Ljava/lang/Object;
.source "DialpadFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->showAddToContact()V
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
    .line 4595
    iput-object p1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$16;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/DialogInterface;

    .prologue
    .line 4597
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$16;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    const/4 v1, 0x0

    # setter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mAddContactsDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$4702(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 4598
    return-void
.end method
