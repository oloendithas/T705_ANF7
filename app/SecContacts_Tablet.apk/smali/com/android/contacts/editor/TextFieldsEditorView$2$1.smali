.class Lcom/android/contacts/editor/TextFieldsEditorView$2$1;
.super Ljava/lang/Object;
.source "TextFieldsEditorView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/editor/TextFieldsEditorView$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/contacts/editor/TextFieldsEditorView$2;


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/TextFieldsEditorView$2;)V
    .locals 0

    .prologue
    .line 244
    iput-object p1, p0, Lcom/android/contacts/editor/TextFieldsEditorView$2$1;->this$1:Lcom/android/contacts/editor/TextFieldsEditorView$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 246
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 247
    iget-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView$2$1;->this$1:Lcom/android/contacts/editor/TextFieldsEditorView$2;

    iget-object v0, v0, Lcom/android/contacts/editor/TextFieldsEditorView$2;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    # getter for: Lcom/android/contacts/editor/TextFieldsEditorView;->mpostalDlg:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/contacts/editor/TextFieldsEditorView;->access$300(Lcom/android/contacts/editor/TextFieldsEditorView;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 248
    iget-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView$2$1;->this$1:Lcom/android/contacts/editor/TextFieldsEditorView$2;

    iget-object v0, v0, Lcom/android/contacts/editor/TextFieldsEditorView$2;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    const/4 v1, 0x0

    # setter for: Lcom/android/contacts/editor/TextFieldsEditorView;->mpostalDlg:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/contacts/editor/TextFieldsEditorView;->access$302(Lcom/android/contacts/editor/TextFieldsEditorView;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 249
    return-void
.end method
