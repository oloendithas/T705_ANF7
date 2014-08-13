.class Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment$2;
.super Ljava/lang/Object;
.source "DataBrowseDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;

.field final synthetic val$setAsDefaultCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;Lcom/sec/android/touchwiz/widget/TwCheckBox;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment$2;->this$0:Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;

    iput-object p2, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment$2;->val$setAsDefaultCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 147
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment$2;->val$setAsDefaultCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 148
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment$2;->val$setAsDefaultCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 152
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment$2;->this$0:Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment$2;->val$setAsDefaultCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v1

    # setter for: Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->mChecked:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->access$002(Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;Z)Z

    .line 153
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment$2;->this$0:Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment$2;->val$setAsDefaultCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->sendAccessibilityEvent(I)V

    .line 156
    :cond_0
    return-void

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment$2;->val$setAsDefaultCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_0
.end method
