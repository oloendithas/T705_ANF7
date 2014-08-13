.class Lcom/sec/android/app/contacts/interaction/AddToRejectListTipsDialogFragment$1;
.super Ljava/lang/Object;
.source "AddToRejectListTipsDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/interaction/AddToRejectListTipsDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/interaction/AddToRejectListTipsDialogFragment;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/interaction/AddToRejectListTipsDialogFragment;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/AddToRejectListTipsDialogFragment$1;->this$0:Lcom/sec/android/app/contacts/interaction/AddToRejectListTipsDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 91
    const/16 v0, 0x54

    if-eq p2, v0, :cond_0

    const/16 v0, 0x52

    if-ne p2, v0, :cond_1

    .line 92
    :cond_0
    const/4 v0, 0x1

    .line 94
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
