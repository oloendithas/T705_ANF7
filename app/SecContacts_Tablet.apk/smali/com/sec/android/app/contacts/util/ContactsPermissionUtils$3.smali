.class final Lcom/sec/android/app/contacts/util/ContactsPermissionUtils$3;
.super Ljava/lang/Object;
.source "ContactsPermissionUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/util/ContactsPermissionUtils;->createPermissionPopup(Landroid/content/Context;)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$dialogType:I


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/sec/android/app/contacts/util/ContactsPermissionUtils$3;->val$context:Landroid/content/Context;

    iput p2, p0, Lcom/sec/android/app/contacts/util/ContactsPermissionUtils$3;->val$dialogType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 169
    # getter for: Lcom/sec/android/app/contacts/util/ContactsPermissionUtils;->mChecked:Z
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsPermissionUtils;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/sec/android/app/contacts/util/ContactsPermissionUtils$3;->val$context:Landroid/content/Context;

    iget v1, p0, Lcom/sec/android/app/contacts/util/ContactsPermissionUtils$3;->val$dialogType:I

    # invokes: Lcom/sec/android/app/contacts/util/ContactsPermissionUtils;->setAllowPemission(Landroid/content/Context;IZ)V
    invoke-static {v0, v1, v2}, Lcom/sec/android/app/contacts/util/ContactsPermissionUtils;->access$100(Landroid/content/Context;IZ)V

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/util/ContactsPermissionUtils$3;->val$context:Landroid/content/Context;

    # invokes: Lcom/sec/android/app/contacts/util/ContactsPermissionUtils;->getAllowPermission(Landroid/content/Context;I)Z
    invoke-static {v0, v3}, Lcom/sec/android/app/contacts/util/ContactsPermissionUtils;->access$200(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/sec/android/app/contacts/util/ContactsPermissionUtils$3;->val$dialogType:I

    if-ne v0, v2, :cond_1

    .line 175
    const/4 v0, 0x0

    # setter for: Lcom/sec/android/app/contacts/util/ContactsPermissionUtils;->mChecked:Z
    invoke-static {v0}, Lcom/sec/android/app/contacts/util/ContactsPermissionUtils;->access$002(Z)Z

    .line 176
    # invokes: Lcom/sec/android/app/contacts/util/ContactsPermissionUtils;->setDialogType(I)V
    invoke-static {v3}, Lcom/sec/android/app/contacts/util/ContactsPermissionUtils;->access$300(I)V

    .line 177
    iget-object v0, p0, Lcom/sec/android/app/contacts/util/ContactsPermissionUtils$3;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/contacts/util/ContactsPermissionUtils;->createPermissionPopup(Landroid/content/Context;)Landroid/app/AlertDialog;

    .line 181
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 182
    return-void

    .line 179
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/util/ContactsPermissionUtils$3;->val$context:Landroid/content/Context;

    # getter for: Lcom/sec/android/app/contacts/util/ContactsPermissionUtils;->mIntent:Landroid/content/Intent;
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsPermissionUtils;->access$400()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
