.class Lcom/sec/android/app/contacts/editor/AttentionForSelectAccountDialogFragment$1;
.super Ljava/lang/Object;
.source "AttentionForSelectAccountDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/editor/AttentionForSelectAccountDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/editor/AttentionForSelectAccountDialogFragment;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/editor/AttentionForSelectAccountDialogFragment;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/sec/android/app/contacts/editor/AttentionForSelectAccountDialogFragment$1;->this$0:Lcom/sec/android/app/contacts/editor/AttentionForSelectAccountDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 144
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/AttentionForSelectAccountDialogFragment$1;->this$0:Lcom/sec/android/app/contacts/editor/AttentionForSelectAccountDialogFragment;

    # getter for: Lcom/sec/android/app/contacts/editor/AttentionForSelectAccountDialogFragment;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v0}, Lcom/sec/android/app/contacts/editor/AttentionForSelectAccountDialogFragment;->access$000(Lcom/sec/android/app/contacts/editor/AttentionForSelectAccountDialogFragment;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v2

    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/AttentionForSelectAccountDialogFragment$1;->this$0:Lcom/sec/android/app/contacts/editor/AttentionForSelectAccountDialogFragment;

    # getter for: Lcom/sec/android/app/contacts/editor/AttentionForSelectAccountDialogFragment;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v0}, Lcom/sec/android/app/contacts/editor/AttentionForSelectAccountDialogFragment;->access$000(Lcom/sec/android/app/contacts/editor/AttentionForSelectAccountDialogFragment;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 145
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/AttentionForSelectAccountDialogFragment$1;->this$0:Lcom/sec/android/app/contacts/editor/AttentionForSelectAccountDialogFragment;

    # getter for: Lcom/sec/android/app/contacts/editor/AttentionForSelectAccountDialogFragment;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/app/contacts/editor/AttentionForSelectAccountDialogFragment;->access$100(Lcom/sec/android/app/contacts/editor/AttentionForSelectAccountDialogFragment;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/AttentionForSelectAccountDialogFragment$1;->this$0:Lcom/sec/android/app/contacts/editor/AttentionForSelectAccountDialogFragment;

    # getter for: Lcom/sec/android/app/contacts/editor/AttentionForSelectAccountDialogFragment;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/app/contacts/editor/AttentionForSelectAccountDialogFragment;->access$100(Lcom/sec/android/app/contacts/editor/AttentionForSelectAccountDialogFragment;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/contacts/editor/AttentionForSelectAccountDialogFragment$1;->this$0:Lcom/sec/android/app/contacts/editor/AttentionForSelectAccountDialogFragment;

    # getter for: Lcom/sec/android/app/contacts/editor/AttentionForSelectAccountDialogFragment;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v2}, Lcom/sec/android/app/contacts/editor/AttentionForSelectAccountDialogFragment;->access$000(Lcom/sec/android/app/contacts/editor/AttentionForSelectAccountDialogFragment;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v2

    invoke-static {v0, v2}, Lcom/sec/android/app/contacts/editor/AttentionForSelectAccountDialogFragment;->storeCheckedState(Landroid/content/Context;Z)V

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/AttentionForSelectAccountDialogFragment$1;->this$0:Lcom/sec/android/app/contacts/editor/AttentionForSelectAccountDialogFragment;

    # getter for: Lcom/sec/android/app/contacts/editor/AttentionForSelectAccountDialogFragment;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v0}, Lcom/sec/android/app/contacts/editor/AttentionForSelectAccountDialogFragment;->access$000(Lcom/sec/android/app/contacts/editor/AttentionForSelectAccountDialogFragment;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->sendAccessibilityEvent(I)V

    .line 149
    return-void

    .line 144
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
