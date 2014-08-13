.class public Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$ActionModeCallBack;
.super Ljava/lang/Object;
.source "CallDetailDeleteActivity.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;
.implements Lcom/sec/android/app/contacts/list/PopupList$OnPopupItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ActionModeCallBack"
.end annotation


# instance fields
.field private mMultiSelectActionBarView:Landroid/view/View;

.field private mSelectionMenu:Lcom/sec/android/app/contacts/list/SelectionMenu;

.field final synthetic this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)V
    .locals 0

    .prologue
    .line 1864
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$ActionModeCallBack;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addSelectedLog(IZ)V
    .locals 4
    .param p1, "position"    # I
    .param p2, "value"    # Z

    .prologue
    .line 2030
    const/4 v0, 0x1

    .line 2032
    .local v0, "startIndex":I
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$ActionModeCallBack;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mAllLogsDeleteAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$400(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2033
    const/4 v0, 0x0

    .line 2036
    :cond_0
    if-lt p1, v0, :cond_1

    .line 2037
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$ActionModeCallBack;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    iget-object v1, v1, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mSelection:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2039
    :cond_1
    const-string v1, "CallDetailDeleteActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addSelectedLog mSelection.size() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$ActionModeCallBack;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    iget-object v3, v3, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mSelection:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2040
    return-void
.end method

.method private onSelectedInfoChanged()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2044
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$ActionModeCallBack;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mSelection:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 2045
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$ActionModeCallBack;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mMenuDone:Landroid/view/MenuItem;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$2500(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2046
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$ActionModeCallBack;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mMenuDone:Landroid/view/MenuItem;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$2500(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2048
    :cond_0
    # setter for: Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mDoneEable:Z
    invoke-static {v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$2602(Z)Z

    .line 2055
    :goto_0
    return-void

    .line 2050
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$ActionModeCallBack;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mMenuDone:Landroid/view/MenuItem;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$2500(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2051
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$ActionModeCallBack;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mMenuDone:Landroid/view/MenuItem;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$2500(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2053
    :cond_2
    # setter for: Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mDoneEable:Z
    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$2602(Z)Z

    goto :goto_0
.end method

.method private removeLog(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 2016
    const/4 v0, 0x1

    .line 2018
    .local v0, "startIndex":I
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$ActionModeCallBack;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mAllLogsDeleteAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$400(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2019
    const/4 v0, 0x0

    .line 2022
    :cond_0
    if-lt p1, v0, :cond_1

    .line 2023
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$ActionModeCallBack;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    iget-object v1, v1, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mSelection:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2025
    :cond_1
    const-string v1, "CallDetailDeleteActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeLog mSelection.size() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$ActionModeCallBack;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    iget-object v3, v3, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mSelection:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2026
    return-void
.end method

.method private setSelectAllChecked(Z)V
    .locals 4
    .param p1, "flag"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1989
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$ActionModeCallBack;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$300(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1990
    const/4 v0, 0x0

    .local v0, "position":I
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$ActionModeCallBack;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$300(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 1991
    if-eqz p1, :cond_0

    .line 1992
    invoke-direct {p0, v0, v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$ActionModeCallBack;->addSelectedLog(IZ)V

    .line 1993
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$ActionModeCallBack;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$2100(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 1990
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1995
    :cond_0
    invoke-direct {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$ActionModeCallBack;->removeLog(I)V

    .line 1996
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$ActionModeCallBack;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$2100(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    goto :goto_1

    .line 1999
    .end local v0    # "position":I
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$ActionModeCallBack;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mAllLogsDeleteAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$400(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 2000
    const/4 v0, 0x0

    .restart local v0    # "position":I
    :goto_2
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$ActionModeCallBack;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mAllLogsDeleteAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$400(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/widget/GroupingListAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 2001
    if-eqz p1, :cond_2

    .line 2002
    invoke-direct {p0, v0, v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$ActionModeCallBack;->addSelectedLog(IZ)V

    .line 2003
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$ActionModeCallBack;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$2100(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 2000
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2005
    :cond_2
    invoke-direct {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$ActionModeCallBack;->removeLog(I)V

    .line 2006
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$ActionModeCallBack;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$2100(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    goto :goto_3

    .line 2010
    .end local v0    # "position":I
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$ActionModeCallBack;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    iget-object v1, v1, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v1}, Landroid/view/ActionMode;->invalidate()V

    .line 2012
    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 1873
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$ActionModeCallBack;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    invoke-virtual {v0, p2}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 6
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v3, 0x0

    const v5, 0x7f0901ee

    const/4 v4, 0x1

    .line 1879
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$ActionModeCallBack;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 1880
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f12000f

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1882
    const-string v1, "feature_tablet_selection_mode"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1883
    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$1300()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040083

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$ActionModeCallBack;->mMultiSelectActionBarView:Landroid/view/View;

    .line 1889
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$ActionModeCallBack;->mMultiSelectActionBarView:Landroid/view/View;

    const v2, 0x7f0901ed

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$ActionModeCallBack$1;

    invoke-direct {v2, p0, p1}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$ActionModeCallBack$1;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$ActionModeCallBack;Landroid/view/ActionMode;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1898
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$ActionModeCallBack;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$ActionModeCallBack;->mMultiSelectActionBarView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    # setter for: Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mSelectedTextView:Landroid/widget/TextView;
    invoke-static {v2, v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$2302(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 1900
    new-instance v2, Lcom/sec/android/app/contacts/list/SelectionMenu;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$1300()Landroid/content/Context;

    move-result-object v3

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$ActionModeCallBack;->mMultiSelectActionBarView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-direct {v2, v3, v1, p0}, Lcom/sec/android/app/contacts/list/SelectionMenu;-><init>(Landroid/content/Context;Landroid/widget/Button;Lcom/sec/android/app/contacts/list/PopupList$OnPopupItemClickListener;)V

    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$ActionModeCallBack;->mSelectionMenu:Lcom/sec/android/app/contacts/list/SelectionMenu;

    .line 1903
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$ActionModeCallBack;->updateSelectionMenu()V

    .line 1904
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$ActionModeCallBack;->mMultiSelectActionBarView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    .line 1906
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$ActionModeCallBack;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    iput-object p1, v1, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mActionMode:Landroid/view/ActionMode;

    .line 1907
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$ActionModeCallBack;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    # setter for: Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mMultiSelectEnabled:Z
    invoke-static {v1, v4}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$2402(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;Z)Z

    .line 1909
    return v4

    .line 1886
    :cond_0
    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$1300()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040082

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$ActionModeCallBack;->mMultiSelectActionBarView:Landroid/view/View;

    goto :goto_0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 3
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1915
    invoke-direct {p0, v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$ActionModeCallBack;->setSelectAllChecked(Z)V

    .line 1916
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$ActionModeCallBack;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    iput-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mActionMode:Landroid/view/ActionMode;

    .line 1917
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$ActionModeCallBack;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    iput-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mActionModeCallback:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$ActionModeCallBack;

    .line 1918
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$ActionModeCallBack;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    # setter for: Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mMultiSelectEnabled:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$2402(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;Z)Z

    .line 1920
    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$1300()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 1921
    return-void
.end method

.method public onPopupItemClick(I)Z
    .locals 2
    .param p1, "itemId"    # I

    .prologue
    const/4 v1, 0x0

    .line 1953
    const v0, 0x7f09001e

    if-ne p1, v0, :cond_1

    .line 1954
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$ActionModeCallBack;->setSelectAllChecked(Z)V

    .line 1958
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$ActionModeCallBack;->updateSelectionMenu()V

    .line 1959
    return v1

    .line 1955
    :cond_1
    const v0, 0x7f09001f

    if-ne p1, v0, :cond_0

    .line 1956
    invoke-direct {p0, v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$ActionModeCallBack;->setSelectAllChecked(Z)V

    goto :goto_0
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1925
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$ActionModeCallBack;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    const v1, 0x7f0904db

    invoke-interface {p2, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    # setter for: Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mMenuDone:Landroid/view/MenuItem;
    invoke-static {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$2502(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;Landroid/view/MenuItem;)Landroid/view/MenuItem;

    .line 1926
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$ActionModeCallBack;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mMenuDone:Landroid/view/MenuItem;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$2500(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Landroid/view/MenuItem;

    move-result-object v0

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mDoneEable:Z
    invoke-static {}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$2600()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1928
    const v0, 0x7f0904f6

    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1929
    const/4 v0, 0x1

    return v0
.end method

.method public toggleSelection(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 1933
    if-gez p1, :cond_0

    .line 1934
    const-string v0, "CallDetailDeleteActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "toggleSelection invalid position : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1948
    :goto_0
    return-void

    .line 1938
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$ActionModeCallBack;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$2100(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView;->isItemChecked(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1939
    const-string v0, "CallDetailDeleteActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addSelection - position : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1940
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$ActionModeCallBack;->addSelectedLog(IZ)V

    .line 1945
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$ActionModeCallBack;->updateSelectionMenu()V

    .line 1947
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$ActionModeCallBack;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    goto :goto_0

    .line 1942
    :cond_1
    const-string v0, "CallDetailDeleteActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeSelection - position : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1943
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$ActionModeCallBack;->removeLog(I)V

    goto :goto_1
.end method

.method public updateSelectionMenu()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1964
    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$1300()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0e03e3

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1965
    .local v1, "format":Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$ActionModeCallBack;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    iget-object v4, v4, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mSelection:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v0

    .line 1967
    .local v0, "count":I
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$ActionModeCallBack;->onSelectedInfoChanged()V

    .line 1969
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$ActionModeCallBack;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mSelectedTextView:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$2300(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Landroid/widget/TextView;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1970
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$ActionModeCallBack;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mSelectedTextView:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$2300(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Landroid/widget/TextView;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1972
    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$ActionModeCallBack;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;
    invoke-static {v4}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$300(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 1973
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$ActionModeCallBack;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;
    invoke-static {v4}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$300(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->getCount()I

    move-result v4

    if-lez v4, :cond_3

    .line 1974
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$ActionModeCallBack;->mSelectionMenu:Lcom/sec/android/app/contacts/list/SelectionMenu;

    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$ActionModeCallBack;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;
    invoke-static {v5}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$300(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->getCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v0, v5, :cond_2

    :goto_0
    invoke-virtual {v4, v2, v0}, Lcom/sec/android/app/contacts/list/SelectionMenu;->updateSelectAllMode(ZI)V

    .line 1985
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v2, v3

    .line 1974
    goto :goto_0

    .line 1976
    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$ActionModeCallBack;->mSelectionMenu:Lcom/sec/android/app/contacts/list/SelectionMenu;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/list/SelectionMenu;->clearPopupList()V

    goto :goto_1

    .line 1978
    :cond_4
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$ActionModeCallBack;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mAllLogsDeleteAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;
    invoke-static {v4}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$400(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1979
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$ActionModeCallBack;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mAllLogsDeleteAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;
    invoke-static {v4}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$400(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/common/widget/GroupingListAdapter;->getCount()I

    move-result v4

    if-lez v4, :cond_6

    .line 1980
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$ActionModeCallBack;->mSelectionMenu:Lcom/sec/android/app/contacts/list/SelectionMenu;

    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$ActionModeCallBack;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mAllLogsDeleteAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;
    invoke-static {v5}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$400(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/common/widget/GroupingListAdapter;->getCount()I

    move-result v5

    if-ge v0, v5, :cond_5

    :goto_2
    invoke-virtual {v4, v2, v0}, Lcom/sec/android/app/contacts/list/SelectionMenu;->updateSelectAllMode(ZI)V

    goto :goto_1

    :cond_5
    move v2, v3

    goto :goto_2

    .line 1982
    :cond_6
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$ActionModeCallBack;->mSelectionMenu:Lcom/sec/android/app/contacts/list/SelectionMenu;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/list/SelectionMenu;->clearPopupList()V

    goto :goto_1
.end method
