.class Lcom/android/contacts/detail/ContactDetailFragment$40;
.super Ljava/lang/Object;
.source "ContactDetailFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/detail/ContactDetailFragment;->createSelectSimDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/detail/ContactDetailFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/detail/ContactDetailFragment;)V
    .locals 0

    .prologue
    .line 3584
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragment$40;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v0, 0x0

    .line 3587
    # setter for: Lcom/android/contacts/detail/ContactDetailFragment;->callPressed:Z
    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1902(Z)Z

    .line 3588
    # setter for: Lcom/android/contacts/detail/ContactDetailFragment;->sipAddressPressed:Z
    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailFragment;->access$2002(Z)Z

    .line 3589
    # setter for: Lcom/android/contacts/detail/ContactDetailFragment;->imAddressPressed:Z
    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailFragment;->access$2102(Z)Z

    .line 3590
    return-void
.end method
