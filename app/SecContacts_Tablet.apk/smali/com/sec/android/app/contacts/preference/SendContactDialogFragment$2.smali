.class Lcom/sec/android/app/contacts/preference/SendContactDialogFragment$2;
.super Ljava/lang/Object;
.source "SendContactDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/preference/SendContactDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/preference/SendContactDialogFragment;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/preference/SendContactDialogFragment;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/sec/android/app/contacts/preference/SendContactDialogFragment$2;->this$0:Lcom/sec/android/app/contacts/preference/SendContactDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 91
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 92
    return-void
.end method
