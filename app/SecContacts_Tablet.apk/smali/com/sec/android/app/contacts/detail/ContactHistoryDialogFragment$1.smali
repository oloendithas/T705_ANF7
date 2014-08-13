.class Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment$1;
.super Ljava/lang/Object;
.source "ContactHistoryDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment;

.field final synthetic val$checkBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment;Lcom/sec/android/touchwiz/widget/TwCheckBox;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment$1;->this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment;

    iput-object p2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment$1;->val$checkBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment$1;->val$checkBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment$1;->val$checkBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 130
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment$1;->this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment;

    iget-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment$1;->val$checkBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v1

    # setter for: Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment;->mChecked:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment;->access$002(Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment;Z)Z

    .line 131
    return-void

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment$1;->val$checkBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_0
.end method
