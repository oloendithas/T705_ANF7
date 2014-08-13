.class public Lcom/android/contacts/util/NoGlobalSearchAlertDialog;
.super Landroid/app/AlertDialog;
.source "NoGlobalSearchAlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/util/NoGlobalSearchAlertDialog$1;,
        Lcom/android/contacts/util/NoGlobalSearchAlertDialog$MyOnKeyListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NoGlobalSearchAlertDialog"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 28
    new-instance v0, Lcom/android/contacts/util/NoGlobalSearchAlertDialog$MyOnKeyListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/util/NoGlobalSearchAlertDialog$MyOnKeyListener;-><init>(Lcom/android/contacts/util/NoGlobalSearchAlertDialog;Lcom/android/contacts/util/NoGlobalSearchAlertDialog$1;)V

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 23
    new-instance v0, Lcom/android/contacts/util/NoGlobalSearchAlertDialog$MyOnKeyListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/util/NoGlobalSearchAlertDialog$MyOnKeyListener;-><init>(Lcom/android/contacts/util/NoGlobalSearchAlertDialog;Lcom/android/contacts/util/NoGlobalSearchAlertDialog$1;)V

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cancelable"    # Z
    .param p3, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 17
    invoke-direct {p0, p1, p2, p3}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 18
    new-instance v0, Lcom/android/contacts/util/NoGlobalSearchAlertDialog$MyOnKeyListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/util/NoGlobalSearchAlertDialog$MyOnKeyListener;-><init>(Lcom/android/contacts/util/NoGlobalSearchAlertDialog;Lcom/android/contacts/util/NoGlobalSearchAlertDialog$1;)V

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 19
    return-void
.end method
