.class Lcom/android/contacts/editor/ContactEditorFragment$4;
.super Ljava/lang/Object;
.source "ContactEditorFragment.java"

# interfaces
.implements Lcom/android/contacts/editor/Editor$EditorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/editor/ContactEditorFragment;->bindEditors()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/editor/ContactEditorFragment;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$rawContactEditor:Lcom/android/contacts/editor/RawContactEditorView;


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/ContactEditorFragment;Landroid/app/Activity;Lcom/android/contacts/editor/RawContactEditorView;)V
    .locals 0

    .prologue
    .line 1638
    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment$4;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    iput-object p2, p0, Lcom/android/contacts/editor/ContactEditorFragment$4;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/android/contacts/editor/ContactEditorFragment$4;->val$rawContactEditor:Lcom/android/contacts/editor/RawContactEditorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeleteRequested(Lcom/android/contacts/editor/Editor;)V
    .locals 0
    .param p1, "removedEditor"    # Lcom/android/contacts/editor/Editor;

    .prologue
    .line 1669
    return-void
.end method

.method public onRequest(I)V
    .locals 5
    .param p1, "request"    # I

    .prologue
    .line 1642
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment$4;->val$activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1665
    :cond_0
    :goto_0
    return-void

    .line 1645
    :cond_1
    const/4 v2, 0x2

    if-ne p1, v2, :cond_3

    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment$4;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-virtual {v2}, Lcom/android/contacts/editor/ContactEditorFragment;->isEditingUserProfile()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1646
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment$4;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1647
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isFullscreenMode()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment$4;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1650
    :cond_2
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment$4;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    # getter for: Lcom/android/contacts/editor/ContactEditorFragment;->mTutorialMode:I
    invoke-static {v2}, Lcom/android/contacts/editor/ContactEditorFragment;->access$800(Lcom/android/contacts/editor/ContactEditorFragment;)I

    move-result v2

    if-nez v2, :cond_3

    .line 1651
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment$4;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment$4;->val$activity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/android/contacts/editor/ContactEditorFragment$4;->val$rawContactEditor:Lcom/android/contacts/editor/RawContactEditorView;

    # invokes: Lcom/android/contacts/editor/ContactEditorFragment;->acquireAggregationSuggestions(Landroid/content/Context;Lcom/android/contacts/editor/RawContactEditorView;)V
    invoke-static {v2, v3, v4}, Lcom/android/contacts/editor/ContactEditorFragment;->access$900(Lcom/android/contacts/editor/ContactEditorFragment;Landroid/content/Context;Lcom/android/contacts/editor/RawContactEditorView;)V

    .line 1656
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_3
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Contact_EnableAutoGenerationPhoneticName"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1659
    const/4 v2, 0x6

    if-ne p1, v2, :cond_0

    .line 1660
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment$4;->val$rawContactEditor:Lcom/android/contacts/editor/RawContactEditorView;

    invoke-virtual {v2}, Lcom/android/contacts/editor/RawContactEditorView;->getPhoneticNameEditor()Lcom/android/contacts/editor/TextFieldsEditorView;

    move-result-object v1

    .line 1661
    .local v1, "phoneticEditor":Lcom/android/contacts/editor/LabeledEditorView;
    invoke-virtual {v1}, Lcom/android/contacts/editor/LabeledEditorView;->rebuildValues()V

    .line 1662
    check-cast v1, Lcom/android/contacts/editor/PhoneticNameEditorView;

    .end local v1    # "phoneticEditor":Lcom/android/contacts/editor/LabeledEditorView;
    invoke-virtual {v1}, Lcom/android/contacts/editor/LabeledEditorView;->rebuildValues()V

    goto :goto_0
.end method
