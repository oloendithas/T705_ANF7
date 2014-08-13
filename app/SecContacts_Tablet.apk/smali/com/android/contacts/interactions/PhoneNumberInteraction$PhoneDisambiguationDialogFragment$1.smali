.class Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment$1;
.super Ljava/lang/Object;
.source "PhoneNumberInteraction.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;

.field final synthetic val$checkBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;


# direct methods
.method constructor <init>(Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;Lcom/sec/android/touchwiz/widget/TwCheckBox;)V
    .locals 0

    .prologue
    .line 245
    iput-object p1, p0, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment$1;->this$0:Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;

    iput-object p2, p0, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment$1;->val$checkBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 248
    iget-object v0, p0, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment$1;->val$checkBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 249
    iget-object v0, p0, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment$1;->val$checkBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 253
    :goto_0
    iget-object v0, p0, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment$1;->this$0:Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;

    invoke-virtual {v0}, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment$1;->val$checkBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->sendAccessibilityEvent(I)V

    .line 256
    :cond_0
    return-void

    .line 251
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment$1;->val$checkBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_0
.end method
