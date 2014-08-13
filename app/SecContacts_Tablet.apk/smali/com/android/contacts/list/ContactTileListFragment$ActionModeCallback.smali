.class Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;
.super Ljava/lang/Object;
.source "ContactTileListFragment.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;
.implements Lcom/sec/android/app/contacts/list/PopupList$OnPopupItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/list/ContactTileListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionModeCallback"
.end annotation


# instance fields
.field private mActionMode:Landroid/view/ActionMode;

.field private mMultiSelectActionBarView:Landroid/view/View;

.field private mSelectionMenu:Lcom/sec/android/app/contacts/list/SelectionMenu;

.field final synthetic this$0:Lcom/android/contacts/list/ContactTileListFragment;


# direct methods
.method private constructor <init>(Lcom/android/contacts/list/ContactTileListFragment;)V
    .locals 0

    .prologue
    .line 1889
    iput-object p1, p0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/list/ContactTileListFragment;Lcom/android/contacts/list/ContactTileListFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/contacts/list/ContactTileListFragment;
    .param p2, "x1"    # Lcom/android/contacts/list/ContactTileListFragment$1;

    .prologue
    .line 1889
    invoke-direct {p0, p1}, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;-><init>(Lcom/android/contacts/list/ContactTileListFragment;)V

    return-void
.end method


# virtual methods
.method public deselectAll()V
    .locals 1

    .prologue
    .line 2058
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # getter for: Lcom/android/contacts/list/ContactTileListFragment;->mSelectedContactIds:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/contacts/list/ContactTileListFragment;->access$000(Lcom/android/contacts/list/ContactTileListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2059
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # getter for: Lcom/android/contacts/list/ContactTileListFragment;->mAdapter:Lcom/android/contacts/list/ContactTileAdapter;
    invoke-static {v0}, Lcom/android/contacts/list/ContactTileListFragment;->access$600(Lcom/android/contacts/list/ContactTileListFragment;)Lcom/android/contacts/list/ContactTileAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactTileAdapter;->clearAllCheckStates()V

    .line 2060
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # getter for: Lcom/android/contacts/list/ContactTileListFragment;->mAdapter:Lcom/android/contacts/list/ContactTileAdapter;
    invoke-static {v0}, Lcom/android/contacts/list/ContactTileListFragment;->access$600(Lcom/android/contacts/list/ContactTileListFragment;)Lcom/android/contacts/list/ContactTileAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/widget/CompositeCursorAdapter;->notifyDataSetChanged()V

    .line 2061
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->refreshActionBarMode()V

    .line 2062
    return-void
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 13
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 1896
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1897
    .local v8, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    .line 1955
    :goto_0
    const/4 v9, 0x1

    return v9

    .line 1899
    :sswitch_0
    new-instance v5, Lcom/android/contacts/list/ContactTileListFragment$RemoveFavoritesTask;

    iget-object v9, p0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    const/4 v10, 0x0

    invoke-direct {v5, v9, v10}, Lcom/android/contacts/list/ContactTileListFragment$RemoveFavoritesTask;-><init>(Lcom/android/contacts/list/ContactTileListFragment;Lcom/android/contacts/list/ContactTileListFragment$1;)V

    .line 1900
    .local v5, "removeTask":Lcom/android/contacts/list/ContactTileListFragment$RemoveFavoritesTask;
    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Void;

    invoke-virtual {v5, v9}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 1903
    .end local v5    # "removeTask":Lcom/android/contacts/list/ContactTileListFragment$RemoveFavoritesTask;
    :sswitch_1
    new-instance v3, Lcom/android/contacts/preference/ContactsPreferences;

    iget-object v9, p0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # getter for: Lcom/android/contacts/list/ContactTileListFragment;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/contacts/list/ContactTileListFragment;->access$1500(Lcom/android/contacts/list/ContactTileListFragment;)Landroid/content/Context;

    move-result-object v9

    invoke-direct {v3, v9}, Lcom/android/contacts/preference/ContactsPreferences;-><init>(Landroid/content/Context;)V

    .line 1904
    .local v3, "contactsPreferences":Lcom/android/contacts/preference/ContactsPreferences;
    invoke-virtual {v3}, Lcom/android/contacts/preference/ContactsPreferences;->getSendContactType()I

    move-result v6

    .line 1906
    .local v6, "sendType":I
    const/4 v0, 0x0

    .line 1908
    .local v0, "bShowWarning":Z
    const/4 v9, 0x1

    if-ne v6, v9, :cond_1

    .line 1909
    iget-object v9, p0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # getter for: Lcom/android/contacts/list/ContactTileListFragment;->mSelectedContactIds:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/android/contacts/list/ContactTileListFragment;->access$000(Lcom/android/contacts/list/ContactTileListFragment;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/16 v10, 0xfa

    if-le v9, v10, :cond_0

    .line 1910
    const/4 v0, 0x1

    .line 1916
    :cond_0
    :goto_1
    if-eqz v0, :cond_3

    .line 1917
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # getter for: Lcom/android/contacts/list/ContactTileListFragment;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/contacts/list/ContactTileListFragment;->access$1500(Lcom/android/contacts/list/ContactTileListFragment;)Landroid/content/Context;

    move-result-object v9

    invoke-direct {v1, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1919
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    const/4 v9, 0x1

    if-ne v6, v9, :cond_2

    .line 1920
    iget-object v9, p0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    invoke-virtual {v9}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0e0511

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const/16 v12, 0xfa

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const/16 v12, 0xfa

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 1930
    .local v7, "toastMessage":Ljava/lang/String;
    :goto_2
    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1931
    const v9, 0x104000a

    new-instance v10, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback$1;

    invoke-direct {v10, p0}, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback$1;-><init>(Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;)V

    invoke-virtual {v1, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1937
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 1912
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v7    # "toastMessage":Ljava/lang/String;
    :cond_1
    iget-object v9, p0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # getter for: Lcom/android/contacts/list/ContactTileListFragment;->mSelectedContactIds:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/android/contacts/list/ContactTileListFragment;->access$000(Lcom/android/contacts/list/ContactTileListFragment;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/16 v10, 0xbb8

    if-le v9, v10, :cond_0

    .line 1913
    const/4 v0, 0x1

    goto :goto_1

    .line 1925
    .restart local v1    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_2
    iget-object v9, p0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    invoke-virtual {v9}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0e0511

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const/16 v12, 0xbb8

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const/16 v12, 0xbb8

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "toastMessage":Ljava/lang/String;
    goto :goto_2

    .line 1939
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v7    # "toastMessage":Ljava/lang/String;
    :cond_3
    iget-object v9, p0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    invoke-virtual {v9}, Lcom/android/contacts/list/ContactTileListFragment;->showShareViaList()V

    goto/16 :goto_0

    .line 1943
    .end local v0    # "bShowWarning":Z
    .end local v3    # "contactsPreferences":Lcom/android/contacts/preference/ContactsPreferences;
    .end local v6    # "sendType":I
    :sswitch_2
    const/4 v2, 0x0

    .line 1944
    .local v2, "contactUri":Landroid/net/Uri;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    iget-object v9, p0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # getter for: Lcom/android/contacts/list/ContactTileListFragment;->mSelectedContactIds:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/android/contacts/list/ContactTileListFragment;->access$000(Lcom/android/contacts/list/ContactTileListFragment;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v4, v9, :cond_4

    .line 1945
    sget-object v10, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-object v9, p0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # getter for: Lcom/android/contacts/list/ContactTileListFragment;->mSelectedContactIds:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/android/contacts/list/ContactTileListFragment;->access$000(Lcom/android/contacts/list/ContactTileListFragment;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-static {v10, v11, v12}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 1944
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1948
    :cond_4
    iget-object v9, p0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # invokes: Lcom/android/contacts/list/ContactTileListFragment;->createLauncherShortcutWithContact(Landroid/net/Uri;)V
    invoke-static {v9, v2}, Lcom/android/contacts/list/ContactTileListFragment;->access$2300(Lcom/android/contacts/list/ContactTileListFragment;Landroid/net/Uri;)V

    .line 1950
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto/16 :goto_0

    .line 1897
    :sswitch_data_0
    .sparse-switch
        0x7f0904f5 -> :sswitch_0
        0x7f09051a -> :sswitch_1
        0x7f09051b -> :sswitch_2
    .end sparse-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 7
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1959
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 1960
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f120015

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1961
    iget-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # getter for: Lcom/android/contacts/list/ContactTileListFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/contacts/list/ContactTileListFragment;->access$1500(Lcom/android/contacts/list/ContactTileListFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040081

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    .line 1964
    iget-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    const v2, 0x7f0901ec

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback$2;

    invoke-direct {v2, p0, p1}, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback$2;-><init>(Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;Landroid/view/ActionMode;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1972
    new-instance v2, Lcom/sec/android/app/contacts/list/SelectionMenu;

    iget-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # getter for: Lcom/android/contacts/list/ContactTileListFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/contacts/list/ContactTileListFragment;->access$1500(Lcom/android/contacts/list/ContactTileListFragment;)Landroid/content/Context;

    move-result-object v3

    iget-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    const v4, 0x7f0901ee

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-direct {v2, v3, v1, p0}, Lcom/sec/android/app/contacts/list/SelectionMenu;-><init>(Landroid/content/Context;Landroid/widget/Button;Lcom/sec/android/app/contacts/list/PopupList$OnPopupItemClickListener;)V

    iput-object v2, p0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->mSelectionMenu:Lcom/sec/android/app/contacts/list/SelectionMenu;

    .line 1974
    iget-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    .line 1975
    iget-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # getter for: Lcom/android/contacts/list/ContactTileListFragment;->mRestoreActionMode:Z
    invoke-static {v1}, Lcom/android/contacts/list/ContactTileListFragment;->access$2400(Lcom/android/contacts/list/ContactTileListFragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1976
    iget-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # setter for: Lcom/android/contacts/list/ContactTileListFragment;->mRestoreActionMode:Z
    invoke-static {v1, v6}, Lcom/android/contacts/list/ContactTileListFragment;->access$2402(Lcom/android/contacts/list/ContactTileListFragment;Z)Z

    .line 1980
    :goto_0
    iget-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # getter for: Lcom/android/contacts/list/ContactTileListFragment;->mAdapter:Lcom/android/contacts/list/ContactTileAdapter;
    invoke-static {v1}, Lcom/android/contacts/list/ContactTileListFragment;->access$600(Lcom/android/contacts/list/ContactTileListFragment;)Lcom/android/contacts/list/ContactTileAdapter;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/contacts/list/ContactTileAdapter;->setSelectionMode(Z)V

    .line 1981
    iget-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # getter for: Lcom/android/contacts/list/ContactTileListFragment;->mAdapter:Lcom/android/contacts/list/ContactTileAdapter;
    invoke-static {v1}, Lcom/android/contacts/list/ContactTileListFragment;->access$600(Lcom/android/contacts/list/ContactTileListFragment;)Lcom/android/contacts/list/ContactTileAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/widget/CompositeCursorAdapter;->notifyDataSetChanged()V

    .line 1982
    iget-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # getter for: Lcom/android/contacts/list/ContactTileListFragment;->mAdapter:Lcom/android/contacts/list/ContactTileAdapter;
    invoke-static {v1}, Lcom/android/contacts/list/ContactTileListFragment;->access$600(Lcom/android/contacts/list/ContactTileListFragment;)Lcom/android/contacts/list/ContactTileAdapter;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/contacts/list/ContactEntryListAdapter;->setMultiSelectionMode(Z)V

    .line 1983
    iget-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # getter for: Lcom/android/contacts/list/ContactTileListFragment;->mAdapter:Lcom/android/contacts/list/ContactTileAdapter;
    invoke-static {v1}, Lcom/android/contacts/list/ContactTileListFragment;->access$600(Lcom/android/contacts/list/ContactTileListFragment;)Lcom/android/contacts/list/ContactTileAdapter;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/contacts/list/ContactEntryListAdapter;->setMultiSelectEnabled(Z)V

    .line 1984
    iget-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # setter for: Lcom/android/contacts/list/ContactTileListFragment;->mIsSelectionMode:Z
    invoke-static {v1, v5}, Lcom/android/contacts/list/ContactTileListFragment;->access$1402(Lcom/android/contacts/list/ContactTileListFragment;Z)Z

    .line 1985
    iput-object p1, p0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->mActionMode:Landroid/view/ActionMode;

    .line 1986
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->updateSelectionMenu()V

    .line 1987
    iget-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    invoke-virtual {v1, v6}, Lcom/android/contacts/list/ContactTileListFragment;->setSweepActionEnabled(Z)V

    .line 1988
    return v5

    .line 1978
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    # setter for: Lcom/android/contacts/list/ContactTileListFragment;->mSelectedContactIds:Ljava/util/ArrayList;
    invoke-static {v1, v2}, Lcom/android/contacts/list/ContactTileListFragment;->access$002(Lcom/android/contacts/list/ContactTileListFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/ActionMode;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1993
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # getter for: Lcom/android/contacts/list/ContactTileListFragment;->mAdapter:Lcom/android/contacts/list/ContactTileAdapter;
    invoke-static {v0}, Lcom/android/contacts/list/ContactTileListFragment;->access$600(Lcom/android/contacts/list/ContactTileListFragment;)Lcom/android/contacts/list/ContactTileAdapter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactTileAdapter;->setSelectionMode(Z)V

    .line 1994
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # getter for: Lcom/android/contacts/list/ContactTileListFragment;->mAdapter:Lcom/android/contacts/list/ContactTileAdapter;
    invoke-static {v0}, Lcom/android/contacts/list/ContactTileListFragment;->access$600(Lcom/android/contacts/list/ContactTileListFragment;)Lcom/android/contacts/list/ContactTileAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactTileAdapter;->clearAllCheckStates()V

    .line 1995
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # getter for: Lcom/android/contacts/list/ContactTileListFragment;->mAdapter:Lcom/android/contacts/list/ContactTileAdapter;
    invoke-static {v0}, Lcom/android/contacts/list/ContactTileListFragment;->access$600(Lcom/android/contacts/list/ContactTileListFragment;)Lcom/android/contacts/list/ContactTileAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/widget/CompositeCursorAdapter;->notifyDataSetChanged()V

    .line 1996
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # getter for: Lcom/android/contacts/list/ContactTileListFragment;->mAdapter:Lcom/android/contacts/list/ContactTileAdapter;
    invoke-static {v0}, Lcom/android/contacts/list/ContactTileListFragment;->access$600(Lcom/android/contacts/list/ContactTileListFragment;)Lcom/android/contacts/list/ContactTileAdapter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setMultiSelectionMode(Z)V

    .line 1997
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # getter for: Lcom/android/contacts/list/ContactTileListFragment;->mAdapter:Lcom/android/contacts/list/ContactTileAdapter;
    invoke-static {v0}, Lcom/android/contacts/list/ContactTileListFragment;->access$600(Lcom/android/contacts/list/ContactTileListFragment;)Lcom/android/contacts/list/ContactTileAdapter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setMultiSelectEnabled(Z)V

    .line 1998
    iput-object v2, p0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->mActionMode:Landroid/view/ActionMode;

    .line 1999
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # setter for: Lcom/android/contacts/list/ContactTileListFragment;->mActionModeCallback:Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;
    invoke-static {v0, v2}, Lcom/android/contacts/list/ContactTileListFragment;->access$102(Lcom/android/contacts/list/ContactTileListFragment;Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;)Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;

    .line 2000
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # setter for: Lcom/android/contacts/list/ContactTileListFragment;->mIsSelectionMode:Z
    invoke-static {v0, v1}, Lcom/android/contacts/list/ContactTileListFragment;->access$1402(Lcom/android/contacts/list/ContactTileListFragment;Z)Z

    .line 2001
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # setter for: Lcom/android/contacts/list/ContactTileListFragment;->mDeleteOnlyMode:Z
    invoke-static {v0, v1}, Lcom/android/contacts/list/ContactTileListFragment;->access$2502(Lcom/android/contacts/list/ContactTileListFragment;Z)Z

    .line 2002
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactTileListFragment;->setSweepActionEnabled()V

    .line 2003
    return-void
.end method

.method public onPopupItemClick(I)Z
    .locals 1
    .param p1, "itemId"    # I

    .prologue
    .line 2032
    const v0, 0x7f09001e

    if-ne p1, v0, :cond_1

    .line 2033
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->selectAll()V

    .line 2037
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->updateSelectionMenu()V

    .line 2038
    const/4 v0, 0x0

    return v0

    .line 2034
    :cond_1
    const v0, 0x7f09001f

    if-ne p1, v0, :cond_0

    .line 2035
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->deselectAll()V

    goto :goto_0
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 5
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2012
    const v1, 0x7f0904f5

    invoke-interface {p2, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 2013
    .local v0, "deleteMenu":Landroid/view/MenuItem;
    iget-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # getter for: Lcom/android/contacts/list/ContactTileListFragment;->mDeleteOnlyMode:Z
    invoke-static {v1}, Lcom/android/contacts/list/ContactTileListFragment;->access$2500(Lcom/android/contacts/list/ContactTileListFragment;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2014
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 2015
    const v1, 0x7f0e0061

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 2016
    const/4 v1, 0x6

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 2018
    iget-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # getter for: Lcom/android/contacts/list/ContactTileListFragment;->mSelectedContactIds:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/contacts/list/ContactTileListFragment;->access$000(Lcom/android/contacts/list/ContactTileListFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    move v1, v2

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2024
    :goto_1
    const v1, 0x7f09051a

    invoke-interface {p2, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # getter for: Lcom/android/contacts/list/ContactTileListFragment;->mDeleteOnlyMode:Z
    invoke-static {v1}, Lcom/android/contacts/list/ContactTileListFragment;->access$2500(Lcom/android/contacts/list/ContactTileListFragment;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # getter for: Lcom/android/contacts/list/ContactTileListFragment;->mSelectedContactIds:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/contacts/list/ContactTileListFragment;->access$000(Lcom/android/contacts/list/ContactTileListFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    move v1, v2

    :goto_2
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2026
    const v1, 0x7f09051b

    invoke-interface {p2, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v4, p0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # getter for: Lcom/android/contacts/list/ContactTileListFragment;->mDeleteOnlyMode:Z
    invoke-static {v4}, Lcom/android/contacts/list/ContactTileListFragment;->access$2500(Lcom/android/contacts/list/ContactTileListFragment;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # getter for: Lcom/android/contacts/list/ContactTileListFragment;->mSelectedContactIds:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/contacts/list/ContactTileListFragment;->access$000(Lcom/android/contacts/list/ContactTileListFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v2, :cond_0

    move v3, v2

    :cond_0
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2028
    return v2

    :cond_1
    move v1, v3

    .line 2018
    goto :goto_0

    .line 2020
    :cond_2
    iget-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # getter for: Lcom/android/contacts/list/ContactTileListFragment;->mSelectedContactIds:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/contacts/list/ContactTileListFragment;->access$000(Lcom/android/contacts/list/ContactTileListFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    move v1, v2

    :goto_3
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_3
    move v1, v3

    goto :goto_3

    :cond_4
    move v1, v3

    .line 2024
    goto :goto_2
.end method

.method public refreshActionBarMode()V
    .locals 1

    .prologue
    .line 2041
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 2042
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    .line 2044
    :cond_0
    return-void
.end method

.method public selectAll()V
    .locals 5

    .prologue
    .line 2047
    iget-object v2, p0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # getter for: Lcom/android/contacts/list/ContactTileListFragment;->mAdapter:Lcom/android/contacts/list/ContactTileAdapter;
    invoke-static {v2}, Lcom/android/contacts/list/ContactTileListFragment;->access$600(Lcom/android/contacts/list/ContactTileListFragment;)Lcom/android/contacts/list/ContactTileAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/widget/CompositeCursorAdapter;->notifyDataSetChanged()V

    .line 2048
    iget-object v2, p0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # getter for: Lcom/android/contacts/list/ContactTileListFragment;->mSelectedContactIds:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/contacts/list/ContactTileListFragment;->access$000(Lcom/android/contacts/list/ContactTileListFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2049
    iget-object v2, p0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # getter for: Lcom/android/contacts/list/ContactTileListFragment;->mAdapter:Lcom/android/contacts/list/ContactTileAdapter;
    invoke-static {v2}, Lcom/android/contacts/list/ContactTileListFragment;->access$600(Lcom/android/contacts/list/ContactTileListFragment;)Lcom/android/contacts/list/ContactTileAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactTileAdapter;->getCursorCount()I

    move-result v1

    .line 2050
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "position":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 2051
    iget-object v2, p0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # getter for: Lcom/android/contacts/list/ContactTileListFragment;->mSelectedContactIds:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/contacts/list/ContactTileListFragment;->access$000(Lcom/android/contacts/list/ContactTileListFragment;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # getter for: Lcom/android/contacts/list/ContactTileListFragment;->mAdapter:Lcom/android/contacts/list/ContactTileAdapter;
    invoke-static {v3}, Lcom/android/contacts/list/ContactTileListFragment;->access$600(Lcom/android/contacts/list/ContactTileListFragment;)Lcom/android/contacts/list/ContactTileAdapter;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/contacts/list/ContactTileAdapter;->getContactId(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2050
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2053
    :cond_0
    iget-object v2, p0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # getter for: Lcom/android/contacts/list/ContactTileListFragment;->mAdapter:Lcom/android/contacts/list/ContactTileAdapter;
    invoke-static {v2}, Lcom/android/contacts/list/ContactTileListFragment;->access$600(Lcom/android/contacts/list/ContactTileListFragment;)Lcom/android/contacts/list/ContactTileAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactTileAdapter;->selectAllCheckStates()V

    .line 2054
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->refreshActionBarMode()V

    .line 2055
    return-void
.end method

.method public setActionContextBarVisibility(ZLandroid/view/ActionMode;)V
    .locals 2
    .param p1, "visible"    # Z
    .param p2, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 2005
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/ActionMode;->getCustomView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2006
    invoke-virtual {p2}, Landroid/view/ActionMode;->getCustomView()Landroid/view/View;

    move-result-object v1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2008
    :cond_0
    return-void

    .line 2006
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public updateSelectionMenu()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2064
    iget-object v4, p0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # getter for: Lcom/android/contacts/list/ContactTileListFragment;->mSelectedContactIds:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/contacts/list/ContactTileListFragment;->access$000(Lcom/android/contacts/list/ContactTileListFragment;)Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->mSelectionMenu:Lcom/sec/android/app/contacts/list/SelectionMenu;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # getter for: Lcom/android/contacts/list/ContactTileListFragment;->mAdapter:Lcom/android/contacts/list/ContactTileAdapter;
    invoke-static {v4}, Lcom/android/contacts/list/ContactTileListFragment;->access$600(Lcom/android/contacts/list/ContactTileListFragment;)Lcom/android/contacts/list/ContactTileAdapter;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 2065
    iget-object v4, p0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # getter for: Lcom/android/contacts/list/ContactTileListFragment;->mSelectedContactIds:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/contacts/list/ContactTileListFragment;->access$000(Lcom/android/contacts/list/ContactTileListFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2067
    .local v0, "count":I
    iget-object v4, p0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # getter for: Lcom/android/contacts/list/ContactTileListFragment;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/contacts/list/ContactTileListFragment;->access$1500(Lcom/android/contacts/list/ContactTileListFragment;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e03e3

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2069
    .local v1, "format":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->mSelectionMenu:Lcom/sec/android/app/contacts/list/SelectionMenu;

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/android/app/contacts/list/SelectionMenu;->setTitle(Ljava/lang/CharSequence;)V

    .line 2070
    iget-object v4, p0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->mSelectionMenu:Lcom/sec/android/app/contacts/list/SelectionMenu;

    iget-object v5, p0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # getter for: Lcom/android/contacts/list/ContactTileListFragment;->mSelectedContactIds:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/contacts/list/ContactTileListFragment;->access$000(Lcom/android/contacts/list/ContactTileListFragment;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    iget-object v6, p0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # getter for: Lcom/android/contacts/list/ContactTileListFragment;->mAdapter:Lcom/android/contacts/list/ContactTileAdapter;
    invoke-static {v6}, Lcom/android/contacts/list/ContactTileListFragment;->access$600(Lcom/android/contacts/list/ContactTileListFragment;)Lcom/android/contacts/list/ContactTileAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/contacts/list/ContactTileAdapter;->getCursorCount()I

    move-result v6

    if-lt v5, v6, :cond_0

    iget-object v5, p0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # getter for: Lcom/android/contacts/list/ContactTileListFragment;->mSelectedContactIds:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/contacts/list/ContactTileListFragment;->access$000(Lcom/android/contacts/list/ContactTileListFragment;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    move v2, v3

    :cond_1
    iget-object v3, p0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # getter for: Lcom/android/contacts/list/ContactTileListFragment;->mSelectedContactIds:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/contacts/list/ContactTileListFragment;->access$000(Lcom/android/contacts/list/ContactTileListFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v4, v2, v3}, Lcom/sec/android/app/contacts/list/SelectionMenu;->updateSelectAllMode(ZI)V

    .line 2073
    .end local v0    # "count":I
    .end local v1    # "format":Ljava/lang/String;
    :cond_2
    return-void
.end method
