.class Lcom/android/contacts/list/ContactPickerFragment$5;
.super Ljava/lang/Object;
.source "ContactPickerFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/list/ContactPickerFragment;->showTutorialPopup(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/list/ContactPickerFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/list/ContactPickerFragment;)V
    .locals 0

    .prologue
    .line 725
    iput-object p1, p0, Lcom/android/contacts/list/ContactPickerFragment$5;->this$0:Lcom/android/contacts/list/ContactPickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 727
    iget-object v0, p0, Lcom/android/contacts/list/ContactPickerFragment$5;->this$0:Lcom/android/contacts/list/ContactPickerFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 728
    iget-object v0, p0, Lcom/android/contacts/list/ContactPickerFragment$5;->this$0:Lcom/android/contacts/list/ContactPickerFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 731
    :cond_0
    return-void
.end method
