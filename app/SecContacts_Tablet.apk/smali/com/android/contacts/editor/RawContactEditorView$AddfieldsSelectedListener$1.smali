.class Lcom/android/contacts/editor/RawContactEditorView$AddfieldsSelectedListener$1;
.super Ljava/lang/Object;
.source "RawContactEditorView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/editor/RawContactEditorView$AddfieldsSelectedListener;->addField(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/contacts/editor/RawContactEditorView$AddfieldsSelectedListener;


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/RawContactEditorView$AddfieldsSelectedListener;)V
    .locals 0

    .prologue
    .line 1198
    iput-object p1, p0, Lcom/android/contacts/editor/RawContactEditorView$AddfieldsSelectedListener$1;->this$1:Lcom/android/contacts/editor/RawContactEditorView$AddfieldsSelectedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1201
    iget-object v3, p0, Lcom/android/contacts/editor/RawContactEditorView$AddfieldsSelectedListener$1;->this$1:Lcom/android/contacts/editor/RawContactEditorView$AddfieldsSelectedListener;

    iget-object v3, v3, Lcom/android/contacts/editor/RawContactEditorView$AddfieldsSelectedListener;->this$0:Lcom/android/contacts/editor/RawContactEditorView;

    # getter for: Lcom/android/contacts/editor/RawContactEditorView;->mPhoneticName:Lcom/android/contacts/editor/PhoneticNameEditorView;
    invoke-static {v3}, Lcom/android/contacts/editor/RawContactEditorView;->access$500(Lcom/android/contacts/editor/RawContactEditorView;)Lcom/android/contacts/editor/PhoneticNameEditorView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    .line 1202
    iget-object v3, p0, Lcom/android/contacts/editor/RawContactEditorView$AddfieldsSelectedListener$1;->this$1:Lcom/android/contacts/editor/RawContactEditorView$AddfieldsSelectedListener;

    iget-object v3, v3, Lcom/android/contacts/editor/RawContactEditorView$AddfieldsSelectedListener;->this$0:Lcom/android/contacts/editor/RawContactEditorView;

    # getter for: Lcom/android/contacts/editor/RawContactEditorView;->mPhoneticName:Lcom/android/contacts/editor/PhoneticNameEditorView;
    invoke-static {v3}, Lcom/android/contacts/editor/RawContactEditorView;->access$500(Lcom/android/contacts/editor/RawContactEditorView;)Lcom/android/contacts/editor/PhoneticNameEditorView;

    move-result-object v3

    const v4, 0x7f09017a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1203
    .local v0, "fields":Landroid/view/ViewGroup;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1204
    .local v2, "v":Landroid/view/View;
    iget-object v3, p0, Lcom/android/contacts/editor/RawContactEditorView$AddfieldsSelectedListener$1;->this$1:Lcom/android/contacts/editor/RawContactEditorView$AddfieldsSelectedListener;

    iget-object v3, v3, Lcom/android/contacts/editor/RawContactEditorView$AddfieldsSelectedListener;->this$0:Lcom/android/contacts/editor/RawContactEditorView;

    # getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/contacts/editor/RawContactEditorView;->access$600(Lcom/android/contacts/editor/RawContactEditorView;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "input_method"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 1205
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 1206
    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 1208
    :cond_0
    return-void
.end method
