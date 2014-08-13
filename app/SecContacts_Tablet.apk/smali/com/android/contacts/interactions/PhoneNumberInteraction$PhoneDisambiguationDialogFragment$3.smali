.class Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment$3;
.super Ljava/lang/Object;
.source "PhoneNumberInteraction.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 264
    iput-object p1, p0, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment$3;->this$0:Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;

    iput-object p2, p0, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment$3;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment$3;->val$activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment$3;->val$activity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/android/contacts/CallContactActivity;

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment$3;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 272
    :cond_0
    return-void
.end method
