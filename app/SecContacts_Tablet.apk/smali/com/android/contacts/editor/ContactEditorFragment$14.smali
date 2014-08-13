.class Lcom/android/contacts/editor/ContactEditorFragment$14;
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
    .line 2985
    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment$14;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    iput-boolean p2, p0, Lcom/android/contacts/editor/ContactEditorFragment$14;->val$hadChanges:Z

    iput p3, p0, Lcom/android/contacts/editor/ContactEditorFragment$14;->val$saveMode:I

    iput-boolean p4, p0, Lcom/android/contacts/editor/ContactEditorFragment$14;->val$saveSucceeded:Z

    iput-object p5, p0, Lcom/android/contacts/editor/ContactEditorFragment$14;->val$contactLookupUri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 2988
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$14;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    iget-boolean v1, p0, Lcom/android/contacts/editor/ContactEditorFragment$14;->val$hadChanges:Z

    iget v2, p0, Lcom/android/contacts/editor/ContactEditorFragment$14;->val$saveMode:I

    iget-boolean v3, p0, Lcom/android/contacts/editor/ContactEditorFragment$14;->val$saveSucceeded:Z

    iget-object v4, p0, Lcom/android/contacts/editor/ContactEditorFragment$14;->val$contactLookupUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/contacts/editor/ContactEditorFragment;->onSaveAction(ZIZLandroid/net/Uri;)V

    .line 2989
    return-void
.end method
