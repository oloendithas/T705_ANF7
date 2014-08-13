.class public Lcom/android/contacts/list/CustomContactListFilterActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "CustomContactListFilterActivity.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/ExpandableListView$OnChildClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/list/CustomContactListFilterActivity$UpdateTask;,
        Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;,
        Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;,
        Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;,
        Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;,
        Lcom/android/contacts/list/CustomContactListFilterActivity$CustomFilterConfigurationLoader;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/contacts/ContactsActivity;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/widget/ExpandableListView$OnChildClickListener;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;",
        ">;"
    }
.end annotation


# static fields
.field private static final ACCOUNT_SET_LOADER_ID:I = 0x1

.field private static final DEFAULT_SHOULD_SYNC:I = 0x1

.field private static final DEFAULT_VISIBLE:I = 0x0

.field private static final SIM_ONE:I = 0x1

.field private static final SIM_ZERO:I = 0x0

.field private static final STATE_EXPANDED:[I

.field private static final SYNC_MODE_EVERYTHING:I = 0x2

.field private static final SYNC_MODE_UNGROUPED:I = 0x1

.field private static final SYNC_MODE_UNSUPPORTED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "CustomContactListFilterActivity"

.field private static mSim1Name:Ljava/lang/String;

.field private static mSim2Name:Ljava/lang/String;

.field private static mSimName:Ljava/lang/String;

.field private static sIdComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAdapter:Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;

.field private mList:Landroid/widget/ExpandableListView;

.field private mPrefs:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 119
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a8

    aput v2, v0, v1

    sput-object v0, Lcom/android/contacts/list/CustomContactListFilterActivity;->STATE_EXPANDED:[I

    .line 560
    new-instance v0, Lcom/android/contacts/list/CustomContactListFilterActivity$1;

    invoke-direct {v0}, Lcom/android/contacts/list/CustomContactListFilterActivity$1;-><init>()V

    sput-object v0, Lcom/android/contacts/list/CustomContactListFilterActivity;->sIdComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    .line 1199
    return-void
.end method

.method static synthetic access$100(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Landroid/net/Uri;

    .prologue
    .line 112
    invoke-static {p0}, Lcom/android/contacts/list/CustomContactListFilterActivity;->addCallerIsSyncAdapterParameter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 112
    sget-object v0, Lcom/android/contacts/list/CustomContactListFilterActivity;->sIdComparator:Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/contacts/list/CustomContactListFilterActivity;)Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/CustomContactListFilterActivity;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity;->mAdapter:Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;

    return-object v0
.end method

.method private static addCallerIsSyncAdapterParameter(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 552
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "caller_is_syncadapter"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private doSaveAction()V
    .locals 4

    .prologue
    .line 1179
    iget-object v1, p0, Lcom/android/contacts/list/CustomContactListFilterActivity;->mAdapter:Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/list/CustomContactListFilterActivity;->mAdapter:Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;

    # getter for: Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mAccounts:Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;
    invoke-static {v1}, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->access$600(Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;)Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1180
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/list/CustomContactListFilterActivity;->finish()V

    .line 1193
    :goto_0
    return-void

    .line 1184
    :cond_1
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/contacts/list/CustomContactListFilterActivity;->setResult(I)V

    .line 1186
    iget-object v1, p0, Lcom/android/contacts/list/CustomContactListFilterActivity;->mAdapter:Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;

    # getter for: Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mAccounts:Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;
    invoke-static {v1}, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->access$600(Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;)Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;->buildDiff()Ljava/util/ArrayList;

    move-result-object v0

    .line 1187
    .local v0, "diff":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1188
    invoke-virtual {p0}, Lcom/android/contacts/list/CustomContactListFilterActivity;->finish()V

    goto :goto_0

    .line 1192
    :cond_2
    new-instance v1, Lcom/android/contacts/list/CustomContactListFilterActivity$UpdateTask;

    invoke-direct {v1, p0}, Lcom/android/contacts/list/CustomContactListFilterActivity$UpdateTask;-><init>(Landroid/app/Activity;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/util/ArrayList;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/CustomContactListFilterActivity$UpdateTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private setActionBar()V
    .locals 3

    .prologue
    const/16 v1, 0xe

    const/16 v2, 0x8

    .line 174
    invoke-virtual {p0}, Lcom/android/contacts/list/CustomContactListFilterActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 175
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 176
    invoke-virtual {v0, v1, v1}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 180
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getSetTitleOnActionBar()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 181
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 186
    :goto_0
    const v1, 0x7f090127

    invoke-virtual {p0, v1}, Lcom/android/contacts/list/CustomContactListFilterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 187
    const v1, 0x7f090195

    invoke-virtual {p0, v1}, Lcom/android/contacts/list/CustomContactListFilterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 189
    :cond_0
    return-void

    .line 183
    :cond_1
    const v1, 0x7f0e01bc

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    goto :goto_0
.end method


# virtual methods
.method protected getSyncMode(Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;)I
    .locals 2
    .param p1, "account"    # Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;

    .prologue
    .line 1064
    const-string v0, "com.google"

    iget-object v1, p1, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;->mDataSet:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1065
    const/4 v0, 0x2

    .line 1067
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected handleRemoveSync(Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;ILjava/lang/CharSequence;)V
    .locals 6
    .param p1, "account"    # Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;
    .param p2, "child"    # Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;
    .param p3, "syncMode"    # I
    .param p4, "title"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v5, 0x0

    .line 1128
    iget-object v3, p1, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;->mUngrouped:Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;

    invoke-virtual {v3}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->getShouldSync()Z

    move-result v2

    .line 1129
    .local v2, "shouldSyncUngrouped":Z
    const/4 v3, 0x2

    if-ne p3, v3, :cond_0

    if-eqz v2, :cond_0

    iget-object v3, p1, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;->mUngrouped:Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;

    invoke-virtual {p2, v3}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1132
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1133
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v3, 0x7f0e012e

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p4, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/android/contacts/list/CustomContactListFilterActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1135
    .local v1, "removeMessage":Ljava/lang/CharSequence;
    const v3, 0x7f0e0129

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1136
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1137
    const/high16 v3, 0x1040000

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1138
    const v3, 0x104000a

    new-instance v4, Lcom/android/contacts/list/CustomContactListFilterActivity$3;

    invoke-direct {v4, p0, p1, p2}, Lcom/android/contacts/list/CustomContactListFilterActivity$3;-><init>(Lcom/android/contacts/list/CustomContactListFilterActivity;Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1146
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1152
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v1    # "removeMessage":Ljava/lang/CharSequence;
    :goto_0
    return-void

    .line 1149
    :cond_0
    invoke-virtual {p1, p2, v5}, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;->setShouldSync(Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;Z)V

    .line 1150
    iget-object v3, p0, Lcom/android/contacts/list/CustomContactListFilterActivity;->mAdapter:Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;

    invoke-virtual {v3}, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 3
    .param p1, "parent"    # Landroid/widget/ExpandableListView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "groupPosition"    # I
    .param p4, "childPosition"    # I
    .param p5, "id"    # J

    .prologue
    .line 1043
    const v2, 0x1020001

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 1045
    .local v0, "checkbox":Lcom/sec/android/touchwiz/widget/TwCheckBox;
    iget-object v2, p0, Lcom/android/contacts/list/CustomContactListFilterActivity;->mAdapter:Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;

    invoke-virtual {v2, p3, p4}, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;

    .line 1046
    .local v1, "child":Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;
    if-eqz v1, :cond_0

    .line 1047
    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->toggle()V

    .line 1048
    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->putVisible(Z)V

    .line 1053
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 1051
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/contacts/list/CustomContactListFilterActivity;->openContextMenu(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1024
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 1034
    :goto_0
    return-void

    .line 1026
    :sswitch_0
    invoke-direct {p0}, Lcom/android/contacts/list/CustomContactListFilterActivity;->doSaveAction()V

    goto :goto_0

    .line 1030
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/contacts/list/CustomContactListFilterActivity;->finish()V

    goto :goto_0

    .line 1024
    :sswitch_data_0
    .sparse-switch
        0x7f090127 -> :sswitch_0
        0x7f090195 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/16 v3, 0x400

    const/4 v2, 0x1

    .line 135
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 136
    const v0, 0x7f04006b

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/CustomContactListFilterActivity;->setContentView(I)V

    .line 138
    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/CustomContactListFilterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    iput-object v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity;->mList:Landroid/widget/ExpandableListView;

    .line 139
    iget-object v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, p0}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 140
    iget-object v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, v2}, Landroid/widget/ExpandableListView;->setHeaderDividersEnabled(Z)V

    .line 141
    iget-object v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, v2}, Landroid/widget/ExpandableListView;->setItemsCanFocus(Z)V

    .line 142
    iget-object v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity;->mList:Landroid/widget/ExpandableListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setDividerHeight(I)V

    .line 143
    iget-object v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity;->mList:Landroid/widget/ExpandableListView;

    const/high16 v1, 0x2000000

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setScrollBarStyle(I)V

    .line 144
    iget-object v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, v2}, Landroid/widget/ExpandableListView;->setVerticalScrollBarPadding(Z)V

    .line 145
    iget-object v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity;->mList:Landroid/widget/ExpandableListView;

    iget-object v1, p0, Lcom/android/contacts/list/CustomContactListFilterActivity;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v1}, Landroid/widget/ExpandableListView;->getPaddingRight()I

    move-result v1

    div-int/lit8 v1, v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setVerticalScrollBarPaddingPosition(I)V

    .line 146
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity;->mPrefs:Landroid/content/SharedPreferences;

    .line 147
    new-instance v0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;

    invoke-direct {v0, p0, p0}, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;-><init>(Lcom/android/contacts/list/CustomContactListFilterActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity;->mAdapter:Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;

    .line 149
    const v0, 0x7f090127

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/CustomContactListFilterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    const v0, 0x7f090195

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/CustomContactListFilterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    iget-object v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, p0}, Landroid/widget/ExpandableListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 154
    iget-object v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity;->mList:Landroid/widget/ExpandableListView;

    iget-object v1, p0, Lcom/android/contacts/list/CustomContactListFilterActivity;->mAdapter:Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 164
    invoke-virtual {p0}, Lcom/android/contacts/list/CustomContactListFilterActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 165
    invoke-virtual {p0}, Lcom/android/contacts/list/CustomContactListFilterActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addPrivateFlags(I)V

    .line 167
    invoke-direct {p0}, Lcom/android/contacts/list/CustomContactListFilterActivity;->setActionBar()V

    .line 168
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 8
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 1074
    invoke-super {p0, p1, p2, p3}, Lcom/android/contacts/ContactsActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 1077
    instance-of v6, p3, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;

    if-nez v6, :cond_1

    .line 1098
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v4, p3

    .line 1079
    check-cast v4, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;

    .line 1080
    .local v4, "info":Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;
    iget-wide v6, v4, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;->packedPosition:J

    invoke-static {v6, v7}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v3

    .line 1081
    .local v3, "groupPosition":I
    iget-wide v6, v4, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;->packedPosition:J

    invoke-static {v6, v7}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v2

    .line 1084
    .local v2, "childPosition":I
    const/4 v6, -0x1

    if-eq v2, v6, :cond_0

    .line 1086
    iget-object v6, p0, Lcom/android/contacts/list/CustomContactListFilterActivity;->mAdapter:Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;

    invoke-virtual {v6, v3}, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;

    .line 1087
    .local v0, "account":Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;
    iget-object v6, p0, Lcom/android/contacts/list/CustomContactListFilterActivity;->mAdapter:Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;

    invoke-virtual {v6, v3, v2}, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;

    .line 1090
    .local v1, "child":Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;
    invoke-virtual {p0, v0}, Lcom/android/contacts/list/CustomContactListFilterActivity;->getSyncMode(Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;)I

    move-result v5

    .line 1091
    .local v5, "syncMode":I
    if-eqz v5, :cond_0

    .line 1093
    if-eqz v1, :cond_2

    .line 1094
    invoke-virtual {p0, p1, v0, v1, v5}, Lcom/android/contacts/list/CustomContactListFilterActivity;->showRemoveSync(Landroid/view/ContextMenu;Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;I)V

    goto :goto_0

    .line 1096
    :cond_2
    invoke-virtual {p0, p1, v0, v5}, Lcom/android/contacts/list/CustomContactListFilterActivity;->showAddSync(Landroid/view/ContextMenu;Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;I)V

    goto :goto_0
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 1
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 352
    new-instance v0, Lcom/android/contacts/list/CustomContactListFilterActivity$CustomFilterConfigurationLoader;

    invoke-direct {v0, p0}, Lcom/android/contacts/list/CustomContactListFilterActivity$CustomFilterConfigurationLoader;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1259
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 1260
    invoke-virtual {p0}, Lcom/android/contacts/list/CustomContactListFilterActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 1261
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f12000f

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1262
    const/4 v1, 0x1

    return v1
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;)V
    .locals 1
    .param p2, "data"    # Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;",
            ">;",
            "Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;",
            ")V"
        }
    .end annotation

    .prologue
    .line 357
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;>;"
    iget-object v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity;->mAdapter:Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;

    invoke-virtual {v0, p2}, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->setAccounts(Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;)V

    .line 358
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 112
    check-cast p2, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/list/CustomContactListFilterActivity;->onLoadFinished(Landroid/content/Loader;Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 362
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;>;"
    iget-object v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity;->mAdapter:Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->setAccounts(Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;)V

    .line 363
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 1273
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 1288
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 1276
    :sswitch_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/contacts/list/CustomContactListFilterActivity;->setResult(I)V

    .line 1277
    invoke-virtual {p0}, Lcom/android/contacts/list/CustomContactListFilterActivity;->finish()V

    goto :goto_0

    .line 1280
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/contacts/list/CustomContactListFilterActivity;->finish()V

    goto :goto_0

    .line 1283
    :sswitch_2
    invoke-direct {p0}, Lcom/android/contacts/list/CustomContactListFilterActivity;->doSaveAction()V

    goto :goto_0

    .line 1273
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0904db -> :sswitch_2
        0x7f0904f6 -> :sswitch_1
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1267
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 346
    invoke-virtual {p0}, Lcom/android/contacts/list/CustomContactListFilterActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 347
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onStart()V

    .line 348
    return-void
.end method

.method protected showAddSync(Landroid/view/ContextMenu;Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;I)V
    .locals 5
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "account"    # Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;
    .param p3, "syncMode"    # I

    .prologue
    .line 1155
    const v3, 0x7f0e012a

    invoke-interface {p1, v3}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    .line 1158
    iget-object v3, p2, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;->mUnsyncedGroups:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;

    .line 1159
    .local v0, "child":Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;
    invoke-virtual {v0}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->getShouldSync()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1160
    invoke-virtual {v0, p0}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1161
    .local v2, "title":Ljava/lang/CharSequence;
    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v3

    new-instance v4, Lcom/android/contacts/list/CustomContactListFilterActivity$4;

    invoke-direct {v4, p0, v0, p3, p2}, Lcom/android/contacts/list/CustomContactListFilterActivity$4;-><init>(Lcom/android/contacts/list/CustomContactListFilterActivity;Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;ILcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;)V

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_0

    .line 1175
    .end local v0    # "child":Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;
    .end local v2    # "title":Ljava/lang/CharSequence;
    :cond_1
    return-void
.end method

.method protected showRemoveSync(Landroid/view/ContextMenu;Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;I)V
    .locals 8
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "account"    # Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;
    .param p3, "child"    # Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;
    .param p4, "syncMode"    # I

    .prologue
    .line 1103
    invoke-virtual {p3}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->getSystemId()Ljava/lang/String;

    move-result-object v6

    .line 1104
    .local v6, "systemId":Ljava/lang/String;
    if-nez v6, :cond_2

    .line 1105
    const-string v0, "My Contacts"

    invoke-virtual {p3, p0}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1106
    invoke-virtual {p3, p0}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getSystemTitleRes(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/CustomContactListFilterActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1116
    .local v5, "title":Ljava/lang/CharSequence;
    :goto_0
    invoke-interface {p1, v5}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 1117
    const v0, 0x7f0e0129

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->add(I)Landroid/view/MenuItem;

    move-result-object v7

    new-instance v0, Lcom/android/contacts/list/CustomContactListFilterActivity$2;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/list/CustomContactListFilterActivity$2;-><init>(Lcom/android/contacts/list/CustomContactListFilterActivity;Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;ILjava/lang/CharSequence;)V

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1124
    return-void

    .line 1107
    .end local v5    # "title":Ljava/lang/CharSequence;
    :cond_0
    const-string v0, "ICE"

    invoke-virtual {p3, p0}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1108
    invoke-virtual {p3, p0}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getSystemTitleRes(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/CustomContactListFilterActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "title":Ljava/lang/CharSequence;
    goto :goto_0

    .line 1110
    .end local v5    # "title":Ljava/lang/CharSequence;
    :cond_1
    invoke-virtual {p3, p0}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v5

    .restart local v5    # "title":Ljava/lang/CharSequence;
    goto :goto_0

    .line 1113
    .end local v5    # "title":Ljava/lang/CharSequence;
    :cond_2
    invoke-static {v6}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getSystemTitleRes(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/CustomContactListFilterActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "title":Ljava/lang/CharSequence;
    goto :goto_0
.end method
