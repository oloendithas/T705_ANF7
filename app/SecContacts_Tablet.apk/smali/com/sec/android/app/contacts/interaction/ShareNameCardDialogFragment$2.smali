.class Lcom/sec/android/app/contacts/interaction/ShareNameCardDialogFragment$2;
.super Ljava/lang/Object;
.source "ShareNameCardDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/interaction/ShareNameCardDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/interaction/ShareNameCardDialogFragment;

.field final synthetic val$adapter:Landroid/widget/ArrayAdapter;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/interaction/ShareNameCardDialogFragment;Landroid/widget/ArrayAdapter;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/ShareNameCardDialogFragment$2;->this$0:Lcom/sec/android/app/contacts/interaction/ShareNameCardDialogFragment;

    iput-object p2, p0, Lcom/sec/android/app/contacts/interaction/ShareNameCardDialogFragment$2;->val$adapter:Landroid/widget/ArrayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 82
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/ShareNameCardDialogFragment$2;->val$adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, p2}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 83
    .local v0, "resId":I
    packed-switch v0, :pswitch_data_0

    .line 96
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 97
    return-void

    .line 84
    :pswitch_0
    # getter for: Lcom/sec/android/app/contacts/interaction/ShareNameCardDialogFragment;->mListener:Lcom/sec/android/app/contacts/interaction/ShareNameCardDialogFragment$Listener;
    invoke-static {}, Lcom/sec/android/app/contacts/interaction/ShareNameCardDialogFragment;->access$000()Lcom/sec/android/app/contacts/interaction/ShareNameCardDialogFragment$Listener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 85
    # getter for: Lcom/sec/android/app/contacts/interaction/ShareNameCardDialogFragment;->mListener:Lcom/sec/android/app/contacts/interaction/ShareNameCardDialogFragment$Listener;
    invoke-static {}, Lcom/sec/android/app/contacts/interaction/ShareNameCardDialogFragment;->access$000()Lcom/sec/android/app/contacts/interaction/ShareNameCardDialogFragment$Listener;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/contacts/interaction/ShareNameCardDialogFragment$Listener;->onSingleSelected()V

    goto :goto_0

    .line 90
    :pswitch_1
    # getter for: Lcom/sec/android/app/contacts/interaction/ShareNameCardDialogFragment;->mListener:Lcom/sec/android/app/contacts/interaction/ShareNameCardDialogFragment$Listener;
    invoke-static {}, Lcom/sec/android/app/contacts/interaction/ShareNameCardDialogFragment;->access$000()Lcom/sec/android/app/contacts/interaction/ShareNameCardDialogFragment$Listener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 91
    # getter for: Lcom/sec/android/app/contacts/interaction/ShareNameCardDialogFragment;->mListener:Lcom/sec/android/app/contacts/interaction/ShareNameCardDialogFragment$Listener;
    invoke-static {}, Lcom/sec/android/app/contacts/interaction/ShareNameCardDialogFragment;->access$000()Lcom/sec/android/app/contacts/interaction/ShareNameCardDialogFragment$Listener;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/contacts/interaction/ShareNameCardDialogFragment$Listener;->onMultiSelected()V

    goto :goto_0

    .line 83
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e0497
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
