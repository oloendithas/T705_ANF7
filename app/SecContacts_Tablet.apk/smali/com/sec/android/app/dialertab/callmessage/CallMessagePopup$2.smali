.class final Lcom/sec/android/app/dialertab/callmessage/CallMessagePopup$2;
.super Ljava/lang/Object;
.source "CallMessagePopup.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dialertab/callmessage/CallMessagePopup;->showHelpDialog(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$checkbox:Landroid/widget/CheckBox;

.field final synthetic val$pref:Lcom/sec/android/app/dialertab/callmessage/CallMessagePreference;


# direct methods
.method constructor <init>(Landroid/widget/CheckBox;Lcom/sec/android/app/dialertab/callmessage/CallMessagePreference;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessagePopup$2;->val$checkbox:Landroid/widget/CheckBox;

    iput-object p2, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessagePopup$2;->val$pref:Lcom/sec/android/app/dialertab/callmessage/CallMessagePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 125
    iget-object v0, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessagePopup$2;->val$checkbox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessagePopup$2;->val$pref:Lcom/sec/android/app/dialertab/callmessage/CallMessagePreference;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/callmessage/CallMessagePreference;->setDoNotShowHelpMsg()V

    .line 128
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 129
    return-void
.end method
