.class Lcom/sec/android/app/contacts/interaction/MergeWithGoogleDialogFragment$1;
.super Ljava/lang/Object;
.source "MergeWithGoogleDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/interaction/MergeWithGoogleDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/interaction/MergeWithGoogleDialogFragment;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/interaction/MergeWithGoogleDialogFragment;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/MergeWithGoogleDialogFragment$1;->this$0:Lcom/sec/android/app/contacts/interaction/MergeWithGoogleDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/MergeWithGoogleDialogFragment$1;->this$0:Lcom/sec/android/app/contacts/interaction/MergeWithGoogleDialogFragment;

    # invokes: Lcom/sec/android/app/contacts/interaction/MergeWithGoogleDialogFragment;->createAccountSelectionDialog()V
    invoke-static {v0}, Lcom/sec/android/app/contacts/interaction/MergeWithGoogleDialogFragment;->access$000(Lcom/sec/android/app/contacts/interaction/MergeWithGoogleDialogFragment;)V

    .line 75
    return-void
.end method
