.class Lcom/sec/android/app/contacts/editor/AttentionForSelectAccountDialogFragment$2;
.super Ljava/lang/Object;
.source "AttentionForSelectAccountDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


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
    .line 166
    iput-object p1, p0, Lcom/sec/android/app/contacts/editor/AttentionForSelectAccountDialogFragment$2;->this$0:Lcom/sec/android/app/contacts/editor/AttentionForSelectAccountDialogFragment;

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
    .line 168
    const/16 v0, 0x54

    if-eq p2, v0, :cond_0

    const/16 v0, 0x52

    if-ne p2, v0, :cond_1

    .line 169
    :cond_0
    const/4 v0, 0x1

    .line 171
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
