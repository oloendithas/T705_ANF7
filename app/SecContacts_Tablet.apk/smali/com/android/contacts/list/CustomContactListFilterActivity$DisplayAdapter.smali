.class public final Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "CustomContactListFilterActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/list/CustomContactListFilterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "DisplayAdapter"
.end annotation


# instance fields
.field private mAccountTypes:Lcom/android/contacts/model/AccountTypeManager;

.field private mAccounts:Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;

.field private mChildWithPhones:Z

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/contacts/list/CustomContactListFilterActivity;


# direct methods
.method public constructor <init>(Lcom/android/contacts/list/CustomContactListFilterActivity;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 727
    iput-object p1, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->this$0:Lcom/android/contacts/list/CustomContactListFilterActivity;

    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 725
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mChildWithPhones:Z

    .line 728
    iput-object p2, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mContext:Landroid/content/Context;

    .line 729
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 730
    invoke-static {p2}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mAccountTypes:Lcom/android/contacts/model/AccountTypeManager;

    .line 731
    return-void
.end method

.method static synthetic access$300(Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;

    .prologue
    .line 719
    iget-object v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;)Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;

    .prologue
    .line 719
    iget-object v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mAccounts:Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;

    return-object v0
.end method


# virtual methods
.method public getChild(II)Ljava/lang/Object;
    .locals 3
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 964
    iget-object v2, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mAccounts:Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;

    invoke-virtual {v2, p1}, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;

    .line 965
    .local v0, "account":Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;
    if-ltz p2, :cond_0

    iget-object v2, v0, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;->mSyncedGroups:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p2, v2, :cond_0

    const/4 v1, 0x1

    .line 967
    .local v1, "validChild":Z
    :goto_0
    if-eqz v1, :cond_1

    .line 968
    iget-object v2, v0, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;->mSyncedGroups:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 970
    :goto_1
    return-object v2

    .line 965
    .end local v1    # "validChild":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 970
    .restart local v1    # "validChild":Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getChildId(II)J
    .locals 4
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    const-wide/high16 v2, -0x8000000000000000L

    .line 976
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;

    .line 977
    .local v0, "child":Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;
    if-eqz v0, :cond_0

    .line 978
    invoke-virtual {v0}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->getId()Ljava/lang/Long;

    move-result-object v1

    .line 979
    .local v1, "childId":Ljava/lang/Long;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 981
    .end local v1    # "childId":Ljava/lang/Long;
    :cond_0
    return-wide v2
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I
    .param p3, "isLastChild"    # Z
    .param p4, "convertView"    # Landroid/view/View;
    .param p5, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 883
    if-nez p4, :cond_0

    .line 884
    iget-object v9, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v10, 0x7f040087

    const/4 v11, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v9, v10, v0, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p4

    .line 888
    :cond_0
    const v9, 0x1020014

    move-object/from16 v0, p4

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 889
    .local v7, "text1":Landroid/widget/TextView;
    const v9, 0x1020015

    move-object/from16 v0, p4

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 890
    .local v8, "text2":Landroid/widget/TextView;
    const v9, 0x1020001

    move-object/from16 v0, p4

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 892
    .local v1, "checkbox":Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;

    .line 893
    .local v2, "child":Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;
    if-eqz v2, :cond_9

    .line 895
    invoke-virtual {v2}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->getVisible()Z

    move-result v4

    .line 896
    .local v4, "groupVisible":Z
    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    .line 897
    invoke-virtual {v1, v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 900
    invoke-virtual {v2}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->getSystemId()Ljava/lang/String;

    move-result-object v6

    .line 901
    .local v6, "systemId":Ljava/lang/String;
    if-nez v6, :cond_7

    .line 902
    const-string v9, "My Contacts"

    iget-object v10, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v10}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 903
    iget-object v9, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v10}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getSystemTitleRes(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 923
    .local v3, "groupTitle":Ljava/lang/CharSequence;
    :goto_0
    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 924
    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 935
    .end local v3    # "groupTitle":Ljava/lang/CharSequence;
    .end local v4    # "groupVisible":Z
    .end local v6    # "systemId":Ljava/lang/String;
    :goto_1
    const v9, 0x7f0901f2

    move-object/from16 v0, p4

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 936
    .local v5, "selectableView":Landroid/view/View;
    if-eqz v5, :cond_1

    .line 937
    new-instance v9, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter$1;

    invoke-direct {v9, p0}, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter$1;-><init>(Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;)V

    invoke-virtual {v5, v9}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 944
    new-instance v9, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter$2;

    invoke-direct {v9, p0, v2, v1}, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter$2;-><init>(Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;Lcom/sec/android/touchwiz/widget/TwCheckBox;)V

    invoke-virtual {v5, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 959
    :cond_1
    return-object p4

    .line 904
    .end local v5    # "selectableView":Landroid/view/View;
    .restart local v4    # "groupVisible":Z
    .restart local v6    # "systemId":Ljava/lang/String;
    :cond_2
    const-string v9, "ICE"

    iget-object v10, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v10}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 905
    iget-object v9, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v10}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getSystemTitleRes(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "groupTitle":Ljava/lang/CharSequence;
    goto :goto_0

    .line 906
    .end local v3    # "groupTitle":Ljava/lang/CharSequence;
    :cond_3
    const-string v9, "Friends"

    iget-object v10, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v10}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 907
    iget-object v9, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v10}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getSystemTitleRes(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "groupTitle":Ljava/lang/CharSequence;
    goto :goto_0

    .line 908
    .end local v3    # "groupTitle":Ljava/lang/CharSequence;
    :cond_4
    const-string v9, "Family"

    iget-object v10, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v10}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 909
    iget-object v9, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v10}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getSystemTitleRes(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "groupTitle":Ljava/lang/CharSequence;
    goto/16 :goto_0

    .line 910
    .end local v3    # "groupTitle":Ljava/lang/CharSequence;
    :cond_5
    const-string v9, "Coworkers"

    iget-object v10, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v10}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 911
    iget-object v9, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v10}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getSystemTitleRes(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "groupTitle":Ljava/lang/CharSequence;
    goto/16 :goto_0

    .line 913
    .end local v3    # "groupTitle":Ljava/lang/CharSequence;
    :cond_6
    iget-object v9, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v9}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v3

    .restart local v3    # "groupTitle":Ljava/lang/CharSequence;
    goto/16 :goto_0

    .line 917
    .end local v3    # "groupTitle":Ljava/lang/CharSequence;
    :cond_7
    const-string v9, "PersonalGroup"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 918
    iget-object v9, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v9}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v3

    .restart local v3    # "groupTitle":Ljava/lang/CharSequence;
    goto/16 :goto_0

    .line 920
    .end local v3    # "groupTitle":Ljava/lang/CharSequence;
    :cond_8
    iget-object v9, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getSystemTitleRes(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "groupTitle":Ljava/lang/CharSequence;
    goto/16 :goto_0

    .line 927
    .end local v3    # "groupTitle":Ljava/lang/CharSequence;
    .end local v4    # "groupVisible":Z
    .end local v6    # "systemId":Ljava/lang/String;
    :cond_9
    const/16 v9, 0x8

    invoke-virtual {v1, v9}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    .line 928
    const v9, 0x7f0e012b

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(I)V

    .line 929
    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method public getChildrenCount(I)I
    .locals 5
    .param p1, "groupPosition"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 988
    iget-object v4, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mAccounts:Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;

    invoke-virtual {v4, p1}, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;

    .line 989
    .local v0, "account":Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;
    iget-object v4, v0, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;->mUnsyncedGroups:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    move v1, v2

    .line 990
    .local v1, "anyHidden":Z
    :goto_0
    iget-object v4, v0, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;->mSyncedGroups:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v1, :cond_1

    :goto_1
    add-int/2addr v2, v4

    return v2

    .end local v1    # "anyHidden":Z
    :cond_0
    move v1, v3

    .line 989
    goto :goto_0

    .restart local v1    # "anyHidden":Z
    :cond_1
    move v2, v3

    .line 990
    goto :goto_1
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 995
    iget-object v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mAccounts:Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;

    invoke-virtual {v0, p1}, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 1000
    iget-object v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mAccounts:Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;

    if-nez v0, :cond_0

    .line 1001
    const/4 v0, 0x0

    .line 1003
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mAccounts:Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;

    invoke-virtual {v0}, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getGroupId(I)J
    .locals 2
    .param p1, "groupPosition"    # I

    .prologue
    .line 1008
    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 14
    .param p1, "groupPosition"    # I
    .param p2, "isExpanded"    # Z
    .param p3, "convertView"    # Landroid/view/View;
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 749
    if-nez p3, :cond_0

    .line 750
    iget-object v9, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v10, 0x7f040086

    const/4 v11, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v9, v10, v0, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 754
    :cond_0
    const v9, 0x1020014

    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 755
    .local v7, "text1":Landroid/widget/TextView;
    const v9, 0x1020015

    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 757
    .local v8, "text2":Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;

    .line 759
    .local v1, "account":Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;
    iget-object v9, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mAccountTypes:Lcom/android/contacts/model/AccountTypeManager;

    iget-object v10, v1, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;->mType:Ljava/lang/String;

    iget-object v11, v1, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;->mDataSet:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/AccountType;

    move-result-object v2

    .line 763
    .local v2, "accountType":Lcom/android/contacts/model/AccountType;
    const v9, 0x7f0901f1

    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 764
    .local v4, "iv":Landroid/widget/ImageView;
    iget-object v9, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isKnoxMode(Landroid/content/Context;)Z

    move-result v3

    .line 766
    .local v3, "isKnoxMode":Z
    if-eqz v4, :cond_2

    .line 767
    move-object/from16 v0, p4

    instance-of v9, v0, Landroid/widget/ExpandableListView;

    if-eqz v9, :cond_2

    move-object/from16 v5, p4

    .line 768
    check-cast v5, Landroid/widget/ExpandableListView;

    .line 770
    .local v5, "listView":Landroid/widget/ExpandableListView;
    if-eqz v5, :cond_1

    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Landroid/widget/ExpandableListView;->setGroupIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 779
    :cond_1
    if-eqz p2, :cond_4

    .line 780
    iget-object v9, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_3

    const v9, 0x7f020050

    :goto_0
    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 793
    .end local v5    # "listView":Landroid/widget/ExpandableListView;
    :cond_2
    :goto_1
    const-string v9, "vnd.sec.contact.phone"

    iget-object v10, v1, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;->mType:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 794
    if-eqz v3, :cond_7

    .line 795
    sget-object v9, Lcom/android/contacts/ContactsApplication$Knox;->which:Lcom/android/contacts/ContactsApplication$Knox$MODE;

    sget-object v10, Lcom/android/contacts/ContactsApplication$Knox$MODE;->KNOX1:Lcom/android/contacts/ContactsApplication$Knox$MODE;

    if-ne v9, v10, :cond_6

    .line 796
    iget-object v9, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mContext:Landroid/content/Context;

    const v10, 0x7f0e0133

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string v13, "KNOX"

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 840
    :goto_2
    iget-object v9, v1, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;->mName:Ljava/lang/String;

    if-nez v9, :cond_10

    const/16 v9, 0x8

    :goto_3
    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 853
    const-string v9, "vnd.sec.contact.phone"

    iget-object v10, v1, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;->mType:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_15

    .line 854
    if-eqz v3, :cond_12

    .line 855
    sget-object v9, Lcom/android/contacts/ContactsApplication$Knox;->which:Lcom/android/contacts/ContactsApplication$Knox$MODE;

    sget-object v10, Lcom/android/contacts/ContactsApplication$Knox$MODE;->KNOX1:Lcom/android/contacts/ContactsApplication$Knox$MODE;

    if-ne v9, v10, :cond_11

    .line 856
    iget-object v9, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mContext:Landroid/content/Context;

    const v10, 0x7f0e0133

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string v13, "KNOX"

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 877
    :goto_4
    return-object p3

    .line 780
    .restart local v5    # "listView":Landroid/widget/ExpandableListView;
    :cond_3
    const v9, 0x7f02005c

    goto :goto_0

    .line 784
    :cond_4
    iget-object v9, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_5

    const v9, 0x7f020051

    :goto_5
    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_5
    const v9, 0x7f02005d

    goto :goto_5

    .line 798
    .end local v5    # "listView":Landroid/widget/ExpandableListView;
    :cond_6
    iget-object v9, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mContext:Landroid/content/Context;

    const v10, 0x7f0e0133

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string v13, "KNOX II"

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 801
    :cond_7
    iget-object v9, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 802
    .local v6, "prefs":Landroid/content/SharedPreferences;
    const-string v9, "2wayflag"

    const/4 v10, 0x0

    invoke-interface {v6, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-nez v9, :cond_8

    const-string v9, "2wayflag2"

    const/4 v10, 0x0

    invoke-interface {v6, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 804
    :cond_8
    iget-object v9, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mContext:Landroid/content/Context;

    const v10, 0x7f0e0130

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 806
    :cond_9
    iget-object v9, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mContext:Landroid/content/Context;

    const v10, 0x7f0e012f

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 809
    .end local v6    # "prefs":Landroid/content/SharedPreferences;
    :cond_a
    const-string v9, "vnd.sec.contact.phone_personal"

    iget-object v10, v1, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;->mType:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 810
    iget-object v9, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mContext:Landroid/content/Context;

    const v10, 0x7f0e0130

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 811
    :cond_b
    const-string v9, "vnd.sec.contact.phone_knox"

    iget-object v10, v1, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;->mType:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 812
    iget-object v9, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mContext:Landroid/content/Context;

    const v10, 0x7f0e0133

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string v13, "KNOX"

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 813
    :cond_c
    const-string v9, "vnd.sec.contact.phone_knox2"

    iget-object v10, v1, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;->mType:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 814
    iget-object v9, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mContext:Landroid/content/Context;

    const v10, 0x7f0e0133

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string v13, "KNOX II"

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 815
    :cond_d
    const-string v9, "vnd.sec.contact.sim"

    iget-object v10, v1, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;->mType:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 820
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v9

    const-string v10, "CscFeature_Contact_ReplaceLabelDualModeSim"

    invoke-virtual {v9, v10}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_e

    iget-object v9, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isUIMCard()Z

    move-result v9

    if-eqz v9, :cond_e

    .line 823
    iget-object v9, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mContext:Landroid/content/Context;

    const v10, 0x7f0e0282

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 825
    :cond_e
    iget-object v9, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mContext:Landroid/content/Context;

    const v10, 0x7f0e0281

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 837
    :cond_f
    iget-object v9, v1, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;->mName:Ljava/lang/String;

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 840
    :cond_10
    const/4 v9, 0x0

    goto/16 :goto_3

    .line 858
    :cond_11
    iget-object v9, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mContext:Landroid/content/Context;

    const v10, 0x7f0e0133

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string v13, "KNOX II"

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 861
    :cond_12
    iget-object v9, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 862
    .restart local v6    # "prefs":Landroid/content/SharedPreferences;
    const-string v9, "2wayflag"

    const/4 v10, 0x0

    invoke-interface {v6, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-nez v9, :cond_13

    const-string v9, "2wayflag2"

    const/4 v10, 0x0

    invoke-interface {v6, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_14

    .line 864
    :cond_13
    iget-object v9, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mContext:Landroid/content/Context;

    const v10, 0x7f0e0130

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 866
    :cond_14
    iget-object v9, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mContext:Landroid/content/Context;

    const v10, 0x7f0e012f

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 869
    .end local v6    # "prefs":Landroid/content/SharedPreferences;
    :cond_15
    const-string v9, "vnd.sec.contact.phone_personal"

    iget-object v10, v1, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;->mType:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_16

    .line 870
    iget-object v9, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mContext:Landroid/content/Context;

    const v10, 0x7f0e0130

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 871
    :cond_16
    const-string v9, "vnd.sec.contact.phone_knox"

    iget-object v10, v1, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;->mType:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_17

    .line 872
    iget-object v9, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mContext:Landroid/content/Context;

    const v10, 0x7f0e0131

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 874
    :cond_17
    iget-object v9, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v9}, Lcom/android/contacts/model/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 1013
    const/4 v0, 0x1

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 1018
    const/4 v0, 0x1

    return v0
.end method

.method public setAccounts(Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;)V
    .locals 0
    .param p1, "accounts"    # Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;

    .prologue
    .line 734
    iput-object p1, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mAccounts:Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;

    .line 735
    invoke-virtual {p0}, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->notifyDataSetChanged()V

    .line 736
    return-void
.end method

.method public setChildDescripWithPhones(Z)V
    .locals 0
    .param p1, "withPhones"    # Z

    .prologue
    .line 743
    iput-boolean p1, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mChildWithPhones:Z

    .line 744
    return-void
.end method
