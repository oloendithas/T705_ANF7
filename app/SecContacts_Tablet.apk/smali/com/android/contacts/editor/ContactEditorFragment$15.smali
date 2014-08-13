.class Lcom/android/contacts/editor/ContactEditorFragment$15;
.super Ljava/lang/Object;
.source "ContactEditorFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/editor/ContactEditorFragment;->onSaveCompleted(ZIZLandroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/editor/ContactEditorFragment;

.field final synthetic val$contactLookupUri:Landroid/net/Uri;

.field final synthetic val$hadChanges:Z

.field final synthetic val$saveMode:I

.field final synthetic val$saveSucceeded:Z


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/ContactEditorFragment;ZIZLandroid/net/Uri;)V
    .locals 0

    .prologue
    .line 2973
    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment$15;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    iput-boolean p2, p0, Lcom/android/contacts/editor/ContactEditorFragment$15;->val$hadChanges:Z

    iput p3, p0, Lcom/android/contacts/editor/ContactEditorFragment$15;->val$saveMode:I

    iput-boolean p4, p0, Lcom/android/contacts/editor/ContactEditorFragment$15;->val$saveSucceeded:Z

    iput-object p5, p0, Lcom/android/contacts/editor/ContactEditorFragment$15;->val$contactLookupUri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 2977
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment$15;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    iget-boolean v2, p0, Lcom/android/contacts/editor/ContactEditorFragment$15;->val$hadChanges:Z

    iget v3, p0, Lcom/android/contacts/editor/ContactEditorFragment$15;->val$saveMode:I

    iget-boolean v4, p0, Lcom/android/contacts/editor/ContactEditorFragment$15;->val$saveSucceeded:Z

    iget-object v5, p0, Lcom/android/contacts/editor/ContactEditorFragment$15;->val$contactLookupUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/contacts/editor/ContactEditorFragment;->onSaveAction(ZIZLandroid/net/Uri;)V

    .line 2978
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment$15;->val$contactLookupUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    .line 2979
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.contacts.action.SET_DEFAULT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2980
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "contactUri"

    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment$15;->val$contactLookupUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2981
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment$15;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-virtual {v1, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 2983
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method
