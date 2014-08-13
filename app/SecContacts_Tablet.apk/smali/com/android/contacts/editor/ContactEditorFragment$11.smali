.class Lcom/android/contacts/editor/ContactEditorFragment$11;
.super Ljava/lang/Object;
.source "ContactEditorFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/editor/ContactEditorFragment;->addAccountSwitcher(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/editor/BaseRawContactEditorView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/editor/ContactEditorFragment;

.field final synthetic val$accountSpinner:Landroid/view/View;

.field final synthetic val$anchorView:Landroid/view/View;

.field final synthetic val$currentAccount:Lcom/android/contacts/model/AccountWithDataSet;

.field final synthetic val$currentState:Lcom/android/contacts/model/EntityDelta;


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/ContactEditorFragment;Lcom/android/contacts/model/AccountWithDataSet;Landroid/view/View;Landroid/view/View;Lcom/android/contacts/model/EntityDelta;)V
    .locals 0

    .prologue
    .line 1961
    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment$11;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    iput-object p2, p0, Lcom/android/contacts/editor/ContactEditorFragment$11;->val$currentAccount:Lcom/android/contacts/model/AccountWithDataSet;

    iput-object p3, p0, Lcom/android/contacts/editor/ContactEditorFragment$11;->val$accountSpinner:Landroid/view/View;

    iput-object p4, p0, Lcom/android/contacts/editor/ContactEditorFragment$11;->val$anchorView:Landroid/view/View;

    iput-object p5, p0, Lcom/android/contacts/editor/ContactEditorFragment$11;->val$currentState:Lcom/android/contacts/model/EntityDelta;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v8, 0x101006b

    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 1964
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment$11;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    # getter for: Lcom/android/contacts/editor/ContactEditorFragment;->mAccountSwitcherlistpopup:Landroid/widget/ListPopupWindow;
    invoke-static {v3}, Lcom/android/contacts/editor/ContactEditorFragment;->access$1000(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/widget/ListPopupWindow;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1965
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment$11;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    # getter for: Lcom/android/contacts/editor/ContactEditorFragment;->mAccountSwitcherlistpopup:Landroid/widget/ListPopupWindow;
    invoke-static {v3}, Lcom/android/contacts/editor/ContactEditorFragment;->access$1000(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/widget/ListPopupWindow;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1967
    :try_start_0
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment$11;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    # getter for: Lcom/android/contacts/editor/ContactEditorFragment;->mAccountSwitcherlistpopup:Landroid/widget/ListPopupWindow;
    invoke-static {v3}, Lcom/android/contacts/editor/ContactEditorFragment;->access$1000(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/widget/ListPopupWindow;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListPopupWindow;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1972
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment$11;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    # setter for: Lcom/android/contacts/editor/ContactEditorFragment;->mAccountSwitcherlistpopup:Landroid/widget/ListPopupWindow;
    invoke-static {v3, v7}, Lcom/android/contacts/editor/ContactEditorFragment;->access$1002(Lcom/android/contacts/editor/ContactEditorFragment;Landroid/widget/ListPopupWindow;)Landroid/widget/ListPopupWindow;

    .line 1974
    :cond_1
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment$11;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-virtual {v3}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "DEFAULT"

    const-string v5, "PHONE_WHITE"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1977
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment$11;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    new-instance v5, Landroid/widget/ListPopupWindow;

    iget-object v6, p0, Lcom/android/contacts/editor/ContactEditorFragment$11;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    # getter for: Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/contacts/editor/ContactEditorFragment;->access$1100(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6, v7, v8}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    # setter for: Lcom/android/contacts/editor/ContactEditorFragment;->mAccountSwitcherlistpopup:Landroid/widget/ListPopupWindow;
    invoke-static {v3, v5}, Lcom/android/contacts/editor/ContactEditorFragment;->access$1002(Lcom/android/contacts/editor/ContactEditorFragment;Landroid/widget/ListPopupWindow;)Landroid/widget/ListPopupWindow;

    .line 2011
    :goto_1
    new-instance v0, Lcom/android/contacts/util/AccountsListAdapter;

    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment$11;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    # getter for: Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/contacts/editor/ContactEditorFragment;->access$1100(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/content/Context;

    move-result-object v5

    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment$11;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    # getter for: Lcom/android/contacts/editor/ContactEditorFragment;->mIsCreatedWithPhoto:Z
    invoke-static {v3}, Lcom/android/contacts/editor/ContactEditorFragment;->access$1200(Lcom/android/contacts/editor/ContactEditorFragment;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment$11;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    # getter for: Lcom/android/contacts/editor/ContactEditorFragment;->mAutoAddToICEGroup:Z
    invoke-static {v3}, Lcom/android/contacts/editor/ContactEditorFragment;->access$1300(Lcom/android/contacts/editor/ContactEditorFragment;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment$11;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    # getter for: Lcom/android/contacts/editor/ContactEditorFragment;->mIsCreatedWithRingtone:Z
    invoke-static {v3}, Lcom/android/contacts/editor/ContactEditorFragment;->access$1400(Lcom/android/contacts/editor/ContactEditorFragment;)Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_2
    sget-object v3, Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;->ACCOUNTS_CONTACT_WRITABLE_WITHOUT_SIM:Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;

    :goto_2
    iget-object v6, p0, Lcom/android/contacts/editor/ContactEditorFragment$11;->val$currentAccount:Lcom/android/contacts/model/AccountWithDataSet;

    invoke-direct {v0, v5, v3, v6}, Lcom/android/contacts/util/AccountsListAdapter;-><init>(Landroid/content/Context;Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;Lcom/android/contacts/model/AccountWithDataSet;)V

    .line 2015
    .local v0, "adapter":Lcom/android/contacts/util/AccountsListAdapter;
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment$11;->val$accountSpinner:Landroid/view/View;

    if-nez v3, :cond_9

    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment$11;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-virtual {v3}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0c0065

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 2017
    .local v2, "offset":I
    :goto_3
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment$11;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    # getter for: Lcom/android/contacts/editor/ContactEditorFragment;->mAccountSwitcherlistpopup:Landroid/widget/ListPopupWindow;
    invoke-static {v3}, Lcom/android/contacts/editor/ContactEditorFragment;->access$1000(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/widget/ListPopupWindow;

    move-result-object v3

    iget-object v5, p0, Lcom/android/contacts/editor/ContactEditorFragment$11;->val$anchorView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-virtual {v3, v5}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    .line 2018
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment$11;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    # getter for: Lcom/android/contacts/editor/ContactEditorFragment;->mAccountSwitcherlistpopup:Landroid/widget/ListPopupWindow;
    invoke-static {v3}, Lcom/android/contacts/editor/ContactEditorFragment;->access$1000(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/widget/ListPopupWindow;

    move-result-object v3

    if-lez v2, :cond_3

    div-int/lit8 v4, v2, 0x2

    :cond_3
    invoke-virtual {v3, v4}, Landroid/widget/ListPopupWindow;->setHorizontalOffset(I)V

    .line 2019
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment$11;->val$accountSpinner:Landroid/view/View;

    if-eqz v3, :cond_4

    .line 2020
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment$11;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    # getter for: Lcom/android/contacts/editor/ContactEditorFragment;->mAccountSwitcherlistpopup:Landroid/widget/ListPopupWindow;
    invoke-static {v3}, Lcom/android/contacts/editor/ContactEditorFragment;->access$1000(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/widget/ListPopupWindow;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/editor/ContactEditorFragment$11;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-virtual {v4}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0071

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ListPopupWindow;->setVerticalOffset(I)V

    .line 2023
    :cond_4
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment$11;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    # getter for: Lcom/android/contacts/editor/ContactEditorFragment;->mAccountSwitcherlistpopup:Landroid/widget/ListPopupWindow;
    invoke-static {v3}, Lcom/android/contacts/editor/ContactEditorFragment;->access$1000(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/widget/ListPopupWindow;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/editor/ContactEditorFragment$11;->val$anchorView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 2024
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment$11;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    # getter for: Lcom/android/contacts/editor/ContactEditorFragment;->mAccountSwitcherlistpopup:Landroid/widget/ListPopupWindow;
    invoke-static {v3}, Lcom/android/contacts/editor/ContactEditorFragment;->access$1000(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/widget/ListPopupWindow;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2025
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment$11;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    # getter for: Lcom/android/contacts/editor/ContactEditorFragment;->mAccountSwitcherlistpopup:Landroid/widget/ListPopupWindow;
    invoke-static {v3}, Lcom/android/contacts/editor/ContactEditorFragment;->access$1000(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/widget/ListPopupWindow;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    .line 2026
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment$11;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    # getter for: Lcom/android/contacts/editor/ContactEditorFragment;->mAccountSwitcherlistpopup:Landroid/widget/ListPopupWindow;
    invoke-static {v3}, Lcom/android/contacts/editor/ContactEditorFragment;->access$1000(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/widget/ListPopupWindow;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/widget/ListPopupWindow;->setInputMethodMode(I)V

    .line 2027
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment$11;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    # getter for: Lcom/android/contacts/editor/ContactEditorFragment;->mAccountSwitcherlistpopup:Landroid/widget/ListPopupWindow;
    invoke-static {v3}, Lcom/android/contacts/editor/ContactEditorFragment;->access$1000(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/widget/ListPopupWindow;

    move-result-object v3

    new-instance v4, Lcom/android/contacts/editor/ContactEditorFragment$11$1;

    invoke-direct {v4, p0, v0}, Lcom/android/contacts/editor/ContactEditorFragment$11$1;-><init>(Lcom/android/contacts/editor/ContactEditorFragment$11;Lcom/android/contacts/util/AccountsListAdapter;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 2053
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment$11;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    # getter for: Lcom/android/contacts/editor/ContactEditorFragment;->mEnabled:Z
    invoke-static {v3}, Lcom/android/contacts/editor/ContactEditorFragment;->access$1600(Lcom/android/contacts/editor/ContactEditorFragment;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2054
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment$11;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    # getter for: Lcom/android/contacts/editor/ContactEditorFragment;->mAccountSwitcherlistpopup:Landroid/widget/ListPopupWindow;
    invoke-static {v3}, Lcom/android/contacts/editor/ContactEditorFragment;->access$1000(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/widget/ListPopupWindow;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListPopupWindow;->show()V

    .line 2055
    :cond_5
    return-void

    .line 1968
    .end local v0    # "adapter":Lcom/android/contacts/util/AccountsListAdapter;
    .end local v2    # "offset":I
    :catch_0
    move-exception v1

    .line 1969
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 1978
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :cond_6
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment$11;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-virtual {v3}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1979
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment$11;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    new-instance v5, Landroid/widget/ListPopupWindow;

    iget-object v6, p0, Lcom/android/contacts/editor/ContactEditorFragment$11;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    # getter for: Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/contacts/editor/ContactEditorFragment;->access$1100(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6, v7, v8}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    # setter for: Lcom/android/contacts/editor/ContactEditorFragment;->mAccountSwitcherlistpopup:Landroid/widget/ListPopupWindow;
    invoke-static {v3, v5}, Lcom/android/contacts/editor/ContactEditorFragment;->access$1002(Lcom/android/contacts/editor/ContactEditorFragment;Landroid/widget/ListPopupWindow;)Landroid/widget/ListPopupWindow;

    goto/16 :goto_1

    .line 1981
    :cond_7
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment$11;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    new-instance v5, Landroid/widget/ListPopupWindow;

    iget-object v6, p0, Lcom/android/contacts/editor/ContactEditorFragment$11;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    # getter for: Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/contacts/editor/ContactEditorFragment;->access$1100(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6, v7}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    # setter for: Lcom/android/contacts/editor/ContactEditorFragment;->mAccountSwitcherlistpopup:Landroid/widget/ListPopupWindow;
    invoke-static {v3, v5}, Lcom/android/contacts/editor/ContactEditorFragment;->access$1002(Lcom/android/contacts/editor/ContactEditorFragment;Landroid/widget/ListPopupWindow;)Landroid/widget/ListPopupWindow;

    goto/16 :goto_1

    .line 2011
    :cond_8
    sget-object v3, Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;->ACCOUNTS_CONTACT_WRITABLE:Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;

    goto/16 :goto_2

    .restart local v0    # "adapter":Lcom/android/contacts/util/AccountsListAdapter;
    :cond_9
    move v2, v4

    .line 2015
    goto/16 :goto_3
.end method
