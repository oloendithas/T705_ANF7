.class public Lcom/android/contacts/editor/RawContactEditorView;
.super Lcom/android/contacts/editor/BaseRawContactEditorView;
.source "RawContactEditorView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/editor/RawContactEditorView$FocusOrderChangeListener;,
        Lcom/android/contacts/editor/RawContactEditorView$AddfieldsSelectedListener;,
        Lcom/android/contacts/editor/RawContactEditorView$CancelListener;
    }
.end annotation


# static fields
.field private static final EASY_MODE_SWITCH:Ljava/lang/String; = "easy_mode_switch"

.field protected static final FLAGS_GENERIC_NAME:I = 0x2001

.field private static final THREEG:Ljava/lang/String; = "2"

.field public static mAAB_profile:Z


# instance fields
.field private final SIM_ONE:I

.field private final SIM_ZERO:I

.field private isMMSAvailable:Z

.field private mAccountIcon:Landroid/widget/ImageView;

.field private mAccountNameTextView:Landroid/widget/TextView;

.field mAccountType:Lcom/android/contacts/model/AccountType;

.field private mAccountTypeTextView:Landroid/widget/TextView;

.field private mAddFieldButton:Landroid/widget/Button;

.field private mAlerttoneEditorView:Lcom/sec/android/app/contacts/editor/MessageAlertEditorView;

.field private mAlerttoneKind:Lcom/android/contacts/model/DataKind;

.field private mAlerttoneVisible:Z

.field private mAutoAddToDefaultGroup:Z

.field private mAutoAddToICEGroup:Z

.field private mEventSectionView:Lcom/android/contacts/editor/KindSectionView;

.field private mFields:Landroid/view/ViewGroup;

.field private mFocusOrderChangeListener:Lcom/android/contacts/editor/KindSectionView$FocusOrderChangeListener;

.field private mGroupMembershipKind:Lcom/android/contacts/model/DataKind;

.field private mGroupMembershipView:Lcom/android/contacts/editor/GroupMembershipView;

.field private mGroupMetaData:Landroid/database/Cursor;

.field private mGroupVisible:Z

.field private mHasPhone:Z

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsVibrator:Z

.field private mName:Lcom/android/contacts/editor/StructuredNameEditorView;

.field private mPhoneticName:Lcom/android/contacts/editor/PhoneticNameEditorView;

.field private mPhoneticNameAdded:Z

.field private mRawContactId:J

.field private mRelationVisible:Z

.field private mRingtoneEditorView:Lcom/sec/android/app/contacts/editor/RingtoneEditorView;

.field private mRingtoneKind:Lcom/android/contacts/model/DataKind;

.field private mRingtoneVisible:Z

.field private final mRunWhenWindowFocused:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mState:Lcom/android/contacts/model/EntityDelta;

.field private mVibrationEditorView:Lcom/sec/android/app/contacts/editor/VibrationEditorView;

.field private mVibrationKind:Lcom/android/contacts/model/DataKind;

.field private mVibrationVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/contacts/editor/RawContactEditorView;->mAAB_profile:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 177
    invoke-direct {p0, p1}, Lcom/android/contacts/editor/BaseRawContactEditorView;-><init>(Landroid/content/Context;)V

    .line 131
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mRawContactId:J

    .line 132
    iput-boolean v2, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAutoAddToDefaultGroup:Z

    .line 133
    iput-boolean v3, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAutoAddToICEGroup:Z

    .line 141
    iput-boolean v3, p0, Lcom/android/contacts/editor/RawContactEditorView;->mPhoneticNameAdded:Z

    .line 144
    iput-boolean v2, p0, Lcom/android/contacts/editor/RawContactEditorView;->mRingtoneVisible:Z

    .line 145
    iput-boolean v2, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAlerttoneVisible:Z

    .line 146
    iput-boolean v2, p0, Lcom/android/contacts/editor/RawContactEditorView;->mVibrationVisible:Z

    .line 148
    iput-boolean v2, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupVisible:Z

    .line 150
    iput-boolean v2, p0, Lcom/android/contacts/editor/RawContactEditorView;->mRelationVisible:Z

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mRunWhenWindowFocused:Ljava/util/ArrayList;

    .line 162
    iput v3, p0, Lcom/android/contacts/editor/RawContactEditorView;->SIM_ZERO:I

    .line 163
    iput v2, p0, Lcom/android/contacts/editor/RawContactEditorView;->SIM_ONE:I

    .line 178
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 181
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/editor/BaseRawContactEditorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 131
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mRawContactId:J

    .line 132
    iput-boolean v2, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAutoAddToDefaultGroup:Z

    .line 133
    iput-boolean v3, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAutoAddToICEGroup:Z

    .line 141
    iput-boolean v3, p0, Lcom/android/contacts/editor/RawContactEditorView;->mPhoneticNameAdded:Z

    .line 144
    iput-boolean v2, p0, Lcom/android/contacts/editor/RawContactEditorView;->mRingtoneVisible:Z

    .line 145
    iput-boolean v2, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAlerttoneVisible:Z

    .line 146
    iput-boolean v2, p0, Lcom/android/contacts/editor/RawContactEditorView;->mVibrationVisible:Z

    .line 148
    iput-boolean v2, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupVisible:Z

    .line 150
    iput-boolean v2, p0, Lcom/android/contacts/editor/RawContactEditorView;->mRelationVisible:Z

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mRunWhenWindowFocused:Ljava/util/ArrayList;

    .line 162
    iput v3, p0, Lcom/android/contacts/editor/RawContactEditorView;->SIM_ZERO:I

    .line 163
    iput v2, p0, Lcom/android/contacts/editor/RawContactEditorView;->SIM_ONE:I

    .line 182
    return-void
.end method

.method private IsNeedlessAddFieldButton()Z
    .locals 7

    .prologue
    .line 1361
    const/4 v3, 0x0

    .line 1362
    .local v3, "remainedFieldCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v5, p0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v1, v5, :cond_8

    .line 1363
    iget-object v5, p0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1364
    .local v0, "child":Landroid/view/View;
    instance-of v5, v0, Lcom/android/contacts/editor/KindSectionView;

    if-eqz v5, :cond_7

    move-object v4, v0

    .line 1365
    check-cast v4, Lcom/android/contacts/editor/KindSectionView;

    .line 1368
    .local v4, "sectionView":Lcom/android/contacts/editor/KindSectionView;
    invoke-virtual {v4}, Lcom/android/contacts/editor/KindSectionView;->getEditorCount()I

    move-result v5

    if-lez v5, :cond_1

    .line 1362
    .end local v4    # "sectionView":Lcom/android/contacts/editor/KindSectionView;
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1371
    .restart local v4    # "sectionView":Lcom/android/contacts/editor/KindSectionView;
    :cond_1
    invoke-virtual {v4}, Lcom/android/contacts/editor/KindSectionView;->getKind()Lcom/android/contacts/model/DataKind;

    move-result-object v2

    .line 1373
    .local v2, "kind":Lcom/android/contacts/model/DataKind;
    iget-boolean v5, v2, Lcom/android/contacts/model/DataKind;->isList:Z

    if-nez v5, :cond_2

    invoke-virtual {v4}, Lcom/android/contacts/editor/KindSectionView;->getEditorCount()I

    move-result v5

    if-nez v5, :cond_0

    .line 1376
    :cond_2
    const-string v5, "#displayName"

    iget-object v6, v2, Lcom/android/contacts/model/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1380
    const-string v5, "#phoneticName"

    iget-object v6, v2, Lcom/android/contacts/model/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/contacts/editor/RawContactEditorView;->mPhoneticName:Lcom/android/contacts/editor/PhoneticNameEditorView;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_0

    .line 1385
    :cond_3
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_0

    .line 1391
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Contact_UseUniNameField"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1393
    const-string v5, "#phoneticName"

    iget-object v6, v2, Lcom/android/contacts/model/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1398
    :cond_4
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Contact_DisableTriggerInternetCall"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1400
    const-string v5, "vnd.android.cursor.item/sip_address"

    iget-object v6, v2, Lcom/android/contacts/model/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1406
    :cond_5
    sget-boolean v5, Lcom/android/contacts/editor/RawContactEditorView;->mAAB_profile:Z

    if-eqz v5, :cond_6

    const-string v5, "vnd.android.cursor.item/phone_v2"

    iget-object v6, v2, Lcom/android/contacts/model/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1410
    :cond_6
    add-int/lit8 v3, v3, 0x1

    .line 1411
    goto :goto_1

    .end local v2    # "kind":Lcom/android/contacts/model/DataKind;
    .end local v4    # "sectionView":Lcom/android/contacts/editor/KindSectionView;
    :cond_7
    instance-of v5, v0, Lcom/sec/android/app/contacts/editor/AdditiveSectionView;

    if-eqz v5, :cond_0

    move-object v4, v0

    .line 1412
    check-cast v4, Lcom/sec/android/app/contacts/editor/AdditiveSectionView;

    .line 1414
    .local v4, "sectionView":Lcom/sec/android/app/contacts/editor/AdditiveSectionView;
    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Lcom/sec/android/app/contacts/editor/AdditiveSectionView;->isReadyToShow()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1418
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 1421
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "sectionView":Lcom/sec/android/app/contacts/editor/AdditiveSectionView;
    :cond_8
    if-nez v3, :cond_9

    const/4 v5, 0x1

    :goto_2
    return v5

    :cond_9
    const/4 v5, 0x0

    goto :goto_2
.end method

.method static synthetic access$000(Lcom/android/contacts/editor/RawContactEditorView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/editor/RawContactEditorView;

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/android/contacts/editor/RawContactEditorView;->showAddInformationPopupWindow()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/contacts/editor/RawContactEditorView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/editor/RawContactEditorView;

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/android/contacts/editor/RawContactEditorView;->setFocusOrder()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/contacts/editor/RawContactEditorView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/editor/RawContactEditorView;

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mPhoneticNameAdded:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/contacts/editor/RawContactEditorView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/editor/RawContactEditorView;
    .param p1, "x1"    # Z

    .prologue
    .line 111
    iput-boolean p1, p0, Lcom/android/contacts/editor/RawContactEditorView;->mPhoneticNameAdded:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/contacts/editor/RawContactEditorView;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/editor/RawContactEditorView;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAddFieldButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/contacts/editor/RawContactEditorView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/editor/RawContactEditorView;

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/android/contacts/editor/RawContactEditorView;->updatePhoneticNameVisibility()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/contacts/editor/RawContactEditorView;)Lcom/android/contacts/editor/PhoneticNameEditorView;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/editor/RawContactEditorView;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mPhoneticName:Lcom/android/contacts/editor/PhoneticNameEditorView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/contacts/editor/RawContactEditorView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/editor/RawContactEditorView;

    .prologue
    .line 111
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/contacts/editor/RawContactEditorView;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/editor/RawContactEditorView;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/android/contacts/editor/RawContactEditorView;->postWhenWindowFocused(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/contacts/editor/RawContactEditorView;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/editor/RawContactEditorView;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/android/contacts/editor/RawContactEditorView;->runWhenWindowFocused(Ljava/lang/Runnable;)V

    return-void
.end method

.method private addToDefaultGroupIfNeeded()V
    .locals 12

    .prologue
    .line 926
    iget-boolean v8, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAutoAddToDefaultGroup:Z

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMetaData:Landroid/database/Cursor;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMetaData:Landroid/database/Cursor;

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/android/contacts/editor/RawContactEditorView;->mState:Lcom/android/contacts/model/EntityDelta;

    if-nez v8, :cond_1

    .line 953
    :cond_0
    :goto_0
    return-void

    .line 931
    :cond_1
    const/4 v4, 0x0

    .line 932
    .local v4, "hasGroupMembership":Z
    iget-object v8, p0, Lcom/android/contacts/editor/RawContactEditorView;->mState:Lcom/android/contacts/model/EntityDelta;

    const-string v9, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v8, v9}, Lcom/android/contacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 933
    .local v2, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    if-eqz v2, :cond_3

    .line 934
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 935
    .local v7, "values":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    const-string v8, "data1"

    invoke-virtual {v7, v8}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    .line 936
    .local v6, "id":Ljava/lang/Long;
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_2

    .line 937
    const/4 v4, 0x1

    .line 943
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "id":Ljava/lang/Long;
    .end local v7    # "values":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    :cond_3
    if-nez v4, :cond_0

    .line 944
    invoke-direct {p0}, Lcom/android/contacts/editor/RawContactEditorView;->getDefaultGroupId()J

    move-result-wide v0

    .line 945
    .local v0, "defaultGroupId":J
    const-wide/16 v8, -0x1

    cmp-long v8, v0, v8

    if-eqz v8, :cond_0

    .line 946
    iget-object v8, p0, Lcom/android/contacts/editor/RawContactEditorView;->mState:Lcom/android/contacts/model/EntityDelta;

    iget-object v9, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMembershipKind:Lcom/android/contacts/model/DataKind;

    invoke-static {v8, v9}, Lcom/android/contacts/model/EntityModifier;->insertChild(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v3

    .line 948
    .local v3, "entry":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    if-eqz v3, :cond_0

    .line 949
    const-string v8, "data1"

    invoke-virtual {v3, v8, v0, v1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;J)V

    goto :goto_0
.end method

.method private addToICEGroupIfNeeded()V
    .locals 8

    .prologue
    .line 957
    iget-boolean v6, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAutoAddToICEGroup:Z

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMetaData:Landroid/database/Cursor;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMetaData:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/contacts/editor/RawContactEditorView;->mState:Lcom/android/contacts/model/EntityDelta;

    if-nez v6, :cond_1

    .line 982
    :cond_0
    :goto_0
    return-void

    .line 962
    :cond_1
    iget-object v6, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMetaData:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 964
    :cond_2
    iget-object v6, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMetaData:Landroid/database/Cursor;

    const/4 v7, 0x2

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 965
    .local v1, "groupId":J
    iget-object v6, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMetaData:Landroid/database/Cursor;

    const/4 v7, 0x3

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 966
    .local v3, "groupTitle":Ljava/lang/String;
    if-eqz v3, :cond_3

    const-string v6, "ICE"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 967
    iget-object v6, p0, Lcom/android/contacts/editor/RawContactEditorView;->mState:Lcom/android/contacts/model/EntityDelta;

    iget-object v7, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMembershipKind:Lcom/android/contacts/model/DataKind;

    invoke-static {v6, v7}, Lcom/android/contacts/model/EntityModifier;->insertChild(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v0

    .line 968
    .local v0, "entry":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    if-eqz v0, :cond_3

    .line 969
    const-string v6, "data1"

    invoke-virtual {v0, v6, v1, v2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;J)V

    .line 971
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 972
    .local v4, "selectedGroupIdArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 973
    .local v5, "selectedGroupTitleArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 974
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 975
    invoke-virtual {p0, v4, v5}, Lcom/android/contacts/editor/RawContactEditorView;->updateSelectedGroup(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 981
    .end local v0    # "entry":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .end local v4    # "selectedGroupIdArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v5    # "selectedGroupTitleArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAutoAddToICEGroup:Z

    goto :goto_0

    .line 979
    :cond_3
    iget-object v6, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMetaData:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_1
.end method

.method private getDefaultGroupId()J
    .locals 11

    .prologue
    const/4 v10, 0x5

    .line 989
    iget-object v8, p0, Lcom/android/contacts/editor/RawContactEditorView;->mState:Lcom/android/contacts/model/EntityDelta;

    invoke-virtual {v8}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v8

    const-string v9, "account_type"

    invoke-virtual {v8, v9}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 990
    .local v2, "accountType":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/contacts/editor/RawContactEditorView;->mState:Lcom/android/contacts/model/EntityDelta;

    invoke-virtual {v8}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v8

    const-string v9, "account_name"

    invoke-virtual {v8, v9}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 991
    .local v1, "accountName":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/contacts/editor/RawContactEditorView;->mState:Lcom/android/contacts/model/EntityDelta;

    invoke-virtual {v8}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v8

    const-string v9, "data_set"

    invoke-virtual {v8, v9}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 992
    .local v0, "accountDataSet":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMetaData:Landroid/database/Cursor;

    const/4 v9, -0x1

    invoke-interface {v8, v9}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 993
    :cond_0
    iget-object v8, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMetaData:Landroid/database/Cursor;

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 994
    iget-object v8, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMetaData:Landroid/database/Cursor;

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 995
    .local v6, "name":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMetaData:Landroid/database/Cursor;

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 996
    .local v7, "type":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMetaData:Landroid/database/Cursor;

    const/4 v9, 0x2

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 997
    .local v3, "dataSet":Ljava/lang/String;
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-static {v3, v0}, Lcom/android/internal/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 999
    iget-object v8, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMetaData:Landroid/database/Cursor;

    const/4 v9, 0x3

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 1000
    .local v4, "groupId":J
    iget-object v8, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMetaData:Landroid/database/Cursor;

    invoke-interface {v8, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMetaData:Landroid/database/Cursor;

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-eqz v8, :cond_0

    .line 1006
    .end local v3    # "dataSet":Ljava/lang/String;
    .end local v4    # "groupId":J
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "type":Ljava/lang/String;
    :goto_0
    return-wide v4

    :cond_1
    const-wide/16 v4, -0x1

    goto :goto_0
.end method

.method private postWhenWindowFocused(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 1344
    new-instance v0, Lcom/android/contacts/editor/RawContactEditorView$2;

    invoke-direct {v0, p0, p1}, Lcom/android/contacts/editor/RawContactEditorView$2;-><init>(Lcom/android/contacts/editor/RawContactEditorView;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1350
    return-void
.end method

.method private runWhenWindowFocused(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 1332
    invoke-virtual {p0}, Landroid/view/View;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1333
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 1337
    :goto_0
    return-void

    .line 1335
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mRunWhenWindowFocused:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private setFocusOrder()V
    .locals 15

    .prologue
    const v14, 0x7f09017a

    .line 1466
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1469
    .local v4, "focusViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    iget-object v12, p0, Lcom/android/contacts/editor/RawContactEditorView;->mName:Lcom/android/contacts/editor/StructuredNameEditorView;

    invoke-virtual {v12}, Landroid/view/View;->isEnabled()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 1470
    iget-object v12, p0, Lcom/android/contacts/editor/RawContactEditorView;->mName:Lcom/android/contacts/editor/StructuredNameEditorView;

    invoke-virtual {v12, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    .line 1472
    .local v8, "nameField":Landroid/view/ViewGroup;
    if-eqz v8, :cond_1

    .line 1473
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-virtual {v8}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v12

    if-ge v5, v12, :cond_1

    .line 1474
    invoke-virtual {v8, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 1475
    .local v9, "nameView":Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v12

    if-nez v12, :cond_0

    .line 1476
    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1473
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1482
    .end local v5    # "i":I
    .end local v8    # "nameField":Landroid/view/ViewGroup;
    .end local v9    # "nameView":Landroid/view/View;
    :cond_1
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_1
    iget-object v12, p0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    invoke-virtual {v12}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v12

    if-ge v5, v12, :cond_a

    .line 1483
    iget-object v12, p0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    invoke-virtual {v12, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1484
    .local v0, "child":Landroid/view/View;
    instance-of v12, v0, Lcom/android/contacts/editor/KindSectionView;

    if-eqz v12, :cond_2

    move-object v10, v0

    .line 1485
    check-cast v10, Lcom/android/contacts/editor/KindSectionView;

    .line 1486
    .local v10, "sectionView":Lcom/android/contacts/editor/KindSectionView;
    invoke-virtual {v10}, Lcom/android/contacts/editor/KindSectionView;->getKind()Lcom/android/contacts/model/DataKind;

    move-result-object v7

    .line 1489
    .local v7, "kind":Lcom/android/contacts/model/DataKind;
    const-string v12, "#displayName"

    iget-object v13, v7, Lcom/android/contacts/model/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 1482
    .end local v7    # "kind":Lcom/android/contacts/model/DataKind;
    .end local v10    # "sectionView":Lcom/android/contacts/editor/KindSectionView;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1494
    .restart local v7    # "kind":Lcom/android/contacts/model/DataKind;
    .restart local v10    # "sectionView":Lcom/android/contacts/editor/KindSectionView;
    :cond_3
    const-string v12, "vnd.android.cursor.item/relation"

    iget-object v13, v7, Lcom/android/contacts/model/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 1499
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v12

    const-string v13, "CscFeature_Contact_UseUniNameField"

    invoke-virtual {v12, v13}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 1501
    const-string v12, "#phoneticName"

    iget-object v13, v7, Lcom/android/contacts/model/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 1506
    :cond_4
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v12

    const-string v13, "CscFeature_Contact_EnableAAB"

    invoke-virtual {v12, v13}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    sget-boolean v12, Lcom/android/contacts/editor/RawContactEditorView;->mAAB_profile:Z

    if-eqz v12, :cond_5

    const-string v12, "vnd.android.cursor.item/phone_v2"

    iget-object v13, v7, Lcom/android/contacts/model/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 1512
    :cond_5
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v12

    const-string v13, "CscFeature_Contact_DisableTriggerInternetCall"

    invoke-virtual {v12, v13}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 1514
    const-string v12, "vnd.android.cursor.item/sip_address"

    iget-object v13, v7, Lcom/android/contacts/model/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 1519
    :cond_6
    const-string v12, "vnd.android.cursor.item/organization"

    iget-object v13, v7, Lcom/android/contacts/model/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 1520
    iget-object v12, p0, Lcom/android/contacts/editor/RawContactEditorView;->mFocusOrderChangeListener:Lcom/android/contacts/editor/KindSectionView$FocusOrderChangeListener;

    invoke-virtual {v10, v12}, Lcom/android/contacts/editor/KindSectionView;->setFocusOrderChangeListener(Lcom/android/contacts/editor/KindSectionView$FocusOrderChangeListener;)V

    .line 1521
    invoke-virtual {v10, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 1522
    .local v3, "fields":Landroid/view/ViewGroup;
    if-eqz v3, :cond_2

    .line 1523
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_2
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v12

    if-ge v6, v12, :cond_2

    .line 1524
    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1525
    .local v1, "childView":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v12

    if-nez v12, :cond_7

    .line 1526
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1523
    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1533
    .end local v1    # "childView":Landroid/view/View;
    .end local v3    # "fields":Landroid/view/ViewGroup;
    .end local v6    # "j":I
    :cond_8
    iget-object v12, p0, Lcom/android/contacts/editor/RawContactEditorView;->mFocusOrderChangeListener:Lcom/android/contacts/editor/KindSectionView$FocusOrderChangeListener;

    invoke-virtual {v10, v12}, Lcom/android/contacts/editor/KindSectionView;->setFocusOrderChangeListener(Lcom/android/contacts/editor/KindSectionView$FocusOrderChangeListener;)V

    .line 1534
    const v12, 0x7f090367

    invoke-virtual {v10, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 1535
    .local v2, "editors":Landroid/view/ViewGroup;
    if-eqz v2, :cond_2

    .line 1536
    const/4 v6, 0x0

    .restart local v6    # "j":I
    :goto_3
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v12

    if-ge v6, v12, :cond_2

    .line 1537
    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1538
    .restart local v1    # "childView":Landroid/view/View;
    invoke-virtual {v1, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 1539
    .restart local v3    # "fields":Landroid/view/ViewGroup;
    if-eqz v3, :cond_9

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v12

    if-nez v12, :cond_9

    .line 1540
    const/4 v12, 0x0

    invoke-virtual {v3, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 1541
    .local v11, "v":Landroid/view/View;
    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1536
    .end local v11    # "v":Landroid/view/View;
    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 1548
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childView":Landroid/view/View;
    .end local v2    # "editors":Landroid/view/ViewGroup;
    .end local v3    # "fields":Landroid/view/ViewGroup;
    .end local v6    # "j":I
    .end local v7    # "kind":Lcom/android/contacts/model/DataKind;
    .end local v10    # "sectionView":Lcom/android/contacts/editor/KindSectionView;
    :cond_a
    const/4 v5, 0x0

    :goto_4
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v12

    if-ge v5, v12, :cond_d

    .line 1549
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    if-ge v5, v12, :cond_b

    .line 1550
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    add-int/lit8 v13, v5, 0x1

    invoke-interface {v4, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getId()I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/view/View;->setNextFocusDownId(I)V

    .line 1553
    :cond_b
    if-lez v5, :cond_c

    .line 1554
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    add-int/lit8 v13, v5, -0x1

    invoke-interface {v4, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getId()I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/view/View;->setNextFocusUpId(I)V

    .line 1548
    :cond_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 1557
    :cond_d
    return-void
.end method

.method private setOneNameFieldLayout()V
    .locals 2

    .prologue
    .line 889
    const v1, 0x7f09047c

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 891
    .local v0, "expansiondelete_containser":Landroid/view/View;
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 892
    return-void
.end method

.method private setSIMLayout(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType;)V
    .locals 7
    .param p1, "state"    # Lcom/android/contacts/model/EntityDelta;
    .param p2, "type"    # Lcom/android/contacts/model/AccountType;

    .prologue
    const/16 v6, 0x8

    .line 801
    const v4, 0x7f0902dc

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 802
    .local v2, "namelabel":Landroid/widget/TextView;
    const v4, 0x7f09047c

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 803
    .local v0, "expansiondelete_containser":Landroid/view/View;
    const v4, 0x7f090407

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 805
    .local v3, "stubphoto":Landroid/view/View;
    iget-object v4, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAddFieldButton:Landroid/widget/Button;

    if-eqz v4, :cond_0

    .line 807
    iget-object v4, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAddFieldButton:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 810
    :cond_0
    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v1

    .line 812
    .local v1, "manageSim":Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 813
    iget-object v4, p2, Lcom/android/contacts/model/AccountType;->accountType:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getAnrConfigValue()I

    move-result v4

    if-lez v4, :cond_2

    .line 814
    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v5, "vnd.android.cursor.item/phone_v2"

    invoke-static {v4, p1, p2, v5}, Lcom/android/contacts/model/EntityModifier;->ensureKindExistsSIMPhone(Landroid/content/Context;Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType;Ljava/lang/String;)V

    .line 821
    :goto_0
    iget-object v4, p2, Lcom/android/contacts/model/AccountType;->accountType:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isEmailFull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p2, Lcom/android/contacts/model/AccountType;->accountType:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 823
    const-string v4, "vnd.android.cursor.item/email_v2"

    invoke-static {p1, p2, v4}, Lcom/android/contacts/model/EntityModifier;->ensureKindExists(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType;Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 843
    :cond_1
    :goto_1
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 844
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 845
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 846
    return-void

    .line 816
    :cond_2
    const-string v4, "vnd.android.cursor.item/phone_v2"

    invoke-static {p1, p2, v4}, Lcom/android/contacts/model/EntityModifier;->ensureKindExists(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType;Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    goto :goto_0

    .line 828
    :cond_3
    invoke-virtual {v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getAnrConfigValue()I

    move-result v4

    if-lez v4, :cond_4

    .line 829
    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v5, "vnd.android.cursor.item/phone_v2"

    invoke-static {v4, p1, p2, v5}, Lcom/android/contacts/model/EntityModifier;->ensureKindExistsSIMPhone(Landroid/content/Context;Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType;Ljava/lang/String;)V

    .line 836
    :goto_2
    invoke-virtual {v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isEmailFull()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 838
    const-string v4, "vnd.android.cursor.item/email_v2"

    invoke-static {p1, p2, v4}, Lcom/android/contacts/model/EntityModifier;->ensureKindExists(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType;Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    goto :goto_1

    .line 831
    :cond_4
    const-string v4, "vnd.android.cursor.item/phone_v2"

    invoke-static {p1, p2, v4}, Lcom/android/contacts/model/EntityModifier;->ensureKindExists(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType;Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    goto :goto_2
.end method

.method private setSIMLayout2(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType;)V
    .locals 8
    .param p1, "state"    # Lcom/android/contacts/model/EntityDelta;
    .param p2, "type"    # Lcom/android/contacts/model/AccountType;

    .prologue
    const/4 v6, 0x1

    const/16 v7, 0x8

    .line 849
    const v5, 0x7f0902dc

    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 850
    .local v2, "namelabel":Landroid/widget/TextView;
    const v5, 0x7f09047c

    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 851
    .local v0, "expansiondelete_containser":Landroid/view/View;
    const v5, 0x7f090407

    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 853
    .local v4, "stubphoto":Landroid/view/View;
    iget-object v5, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAddFieldButton:Landroid/widget/Button;

    if-eqz v5, :cond_0

    .line 855
    iget-object v5, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAddFieldButton:Landroid/widget/Button;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 858
    :cond_0
    iget-object v5, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v1

    .line 860
    .local v1, "manageSim":Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;
    const/4 v3, 0x1

    .line 868
    .local v3, "slot2":I
    const-string v5, "vnd.android.cursor.item/phone_v2"

    invoke-static {p1, p2, v5}, Lcom/android/contacts/model/EntityModifier;->ensureKindExists(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType;Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 875
    invoke-virtual {v1, v6}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isEmailFull(I)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v1, v6}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimType(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "2"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 877
    const-string v5, "vnd.android.cursor.item/email_v2"

    invoke-static {p1, p2, v5}, Lcom/android/contacts/model/EntityModifier;->ensureKindExists(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType;Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 881
    :cond_1
    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 882
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 883
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 884
    return-void
.end method

.method private showAddInformationPopupWindow()V
    .locals 13

    .prologue
    const/4 v10, 0x0

    .line 1225
    new-instance v3, Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    invoke-virtual {v11}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v11

    invoke-direct {v3, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 1228
    .local v3, "fields":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1230
    .local v5, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v11, p0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    invoke-virtual {v11}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v11

    if-ge v4, v11, :cond_8

    .line 1231
    iget-object v11, p0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    invoke-virtual {v11, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1232
    .local v2, "child":Landroid/view/View;
    instance-of v11, v2, Lcom/android/contacts/editor/KindSectionView;

    if-eqz v11, :cond_7

    move-object v9, v2

    .line 1233
    check-cast v9, Lcom/android/contacts/editor/KindSectionView;

    .line 1236
    .local v9, "sectionView":Lcom/android/contacts/editor/KindSectionView;
    invoke-virtual {v9}, Lcom/android/contacts/editor/KindSectionView;->getEditorCount()I

    move-result v11

    if-lez v11, :cond_1

    .line 1230
    .end local v9    # "sectionView":Lcom/android/contacts/editor/KindSectionView;
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1239
    .restart local v9    # "sectionView":Lcom/android/contacts/editor/KindSectionView;
    :cond_1
    invoke-virtual {v9}, Lcom/android/contacts/editor/KindSectionView;->getKind()Lcom/android/contacts/model/DataKind;

    move-result-object v6

    .line 1241
    .local v6, "kind":Lcom/android/contacts/model/DataKind;
    iget-boolean v11, v6, Lcom/android/contacts/model/DataKind;->isList:Z

    if-nez v11, :cond_2

    invoke-virtual {v9}, Lcom/android/contacts/editor/KindSectionView;->getEditorCount()I

    move-result v11

    if-nez v11, :cond_0

    .line 1244
    :cond_2
    const-string v11, "#displayName"

    iget-object v12, v6, Lcom/android/contacts/model/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 1248
    const-string v11, "#phoneticName"

    iget-object v12, v6, Lcom/android/contacts/model/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    iget-object v11, p0, Lcom/android/contacts/editor/RawContactEditorView;->mPhoneticName:Lcom/android/contacts/editor/PhoneticNameEditorView;

    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v11

    if-eqz v11, :cond_0

    .line 1252
    :cond_3
    invoke-virtual {v9}, Landroid/view/View;->isShown()Z

    move-result v11

    if-nez v11, :cond_0

    .line 1258
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v11

    const-string v12, "CscFeature_Contact_UseUniNameField"

    invoke-virtual {v11, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 1260
    const-string v11, "#phoneticName"

    iget-object v12, v6, Lcom/android/contacts/model/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 1265
    :cond_4
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v11

    const-string v12, "CscFeature_Contact_EnableAAB"

    invoke-virtual {v11, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    sget-boolean v11, Lcom/android/contacts/editor/RawContactEditorView;->mAAB_profile:Z

    if-eqz v11, :cond_5

    const-string v11, "vnd.android.cursor.item/phone_v2"

    iget-object v12, v6, Lcom/android/contacts/model/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 1271
    :cond_5
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v11

    const-string v12, "CscFeature_Contact_DisableTriggerInternetCall"

    invoke-virtual {v11, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 1273
    const-string v11, "vnd.android.cursor.item/sip_address"

    iget-object v12, v6, Lcom/android/contacts/model/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 1278
    :cond_6
    invoke-virtual {v9}, Lcom/android/contacts/editor/KindSectionView;->getTitle()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1280
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1281
    .end local v6    # "kind":Lcom/android/contacts/model/DataKind;
    .end local v9    # "sectionView":Lcom/android/contacts/editor/KindSectionView;
    :cond_7
    instance-of v11, v2, Lcom/sec/android/app/contacts/editor/AdditiveSectionView;

    if-eqz v11, :cond_0

    move-object v9, v2

    .line 1282
    check-cast v9, Lcom/sec/android/app/contacts/editor/AdditiveSectionView;

    .line 1284
    .local v9, "sectionView":Lcom/sec/android/app/contacts/editor/AdditiveSectionView;
    invoke-virtual {v2}, Landroid/view/View;->isShown()Z

    move-result v11

    if-nez v11, :cond_0

    invoke-interface {v9}, Lcom/sec/android/app/contacts/editor/AdditiveSectionView;->isReadyToShow()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 1288
    invoke-interface {v9}, Lcom/sec/android/app/contacts/editor/AdditiveSectionView;->getTitle()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1290
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1294
    .end local v2    # "child":Landroid/view/View;
    .end local v9    # "sectionView":Lcom/sec/android/app/contacts/editor/AdditiveSectionView;
    :cond_8
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v12, 0x1

    if-ge v11, v12, :cond_9

    .line 1309
    :goto_2
    return-void

    .line 1298
    :cond_9
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v11, v11, [Ljava/lang/CharSequence;

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/CharSequence;

    .line 1299
    .local v8, "newItems":[Ljava/lang/CharSequence;
    new-instance v7, Lcom/android/contacts/editor/RawContactEditorView$AddfieldsSelectedListener;

    invoke-direct {v7, p0, v3}, Lcom/android/contacts/editor/RawContactEditorView$AddfieldsSelectedListener;-><init>(Lcom/android/contacts/editor/RawContactEditorView;Ljava/util/ArrayList;)V

    .line 1300
    .local v7, "listener":Lcom/android/contacts/editor/RawContactEditorView$AddfieldsSelectedListener;
    new-instance v1, Lcom/android/contacts/editor/RawContactEditorView$CancelListener;

    invoke-direct {v1, p0, v10}, Lcom/android/contacts/editor/RawContactEditorView$CancelListener;-><init>(Lcom/android/contacts/editor/RawContactEditorView;Lcom/android/contacts/editor/RawContactEditorView$1;)V

    .line 1301
    .local v1, "cancelListener":Lcom/android/contacts/editor/RawContactEditorView$CancelListener;
    new-instance v11, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v11, v12}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v12, 0x7f0e01a3

    invoke-virtual {v11, v12}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    check-cast v10, [Z

    invoke-virtual {v11, v8, v10, v7}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const v11, 0x104000a

    invoke-virtual {v10, v11, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const/high16 v11, 0x1040000

    invoke-virtual {v10, v11, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1308
    .local v0, "addFieldDlg":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_2
.end method

.method private updatePhoneticNameVisibility()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 1101
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0016

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 1104
    .local v0, "showByDefault":Z
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_UseUniNameField"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1106
    iget-object v1, p0, Lcom/android/contacts/editor/RawContactEditorView;->mPhoneticName:Lcom/android/contacts/editor/PhoneticNameEditorView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1115
    :goto_0
    return-void

    .line 1109
    :cond_0
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/contacts/editor/RawContactEditorView;->mPhoneticName:Lcom/android/contacts/editor/PhoneticNameEditorView;

    invoke-virtual {v1}, Lcom/android/contacts/editor/PhoneticNameEditorView;->hasData()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/contacts/editor/RawContactEditorView;->mPhoneticNameAdded:Z

    if-eqz v1, :cond_2

    .line 1110
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/editor/RawContactEditorView;->mPhoneticName:Lcom/android/contacts/editor/PhoneticNameEditorView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1112
    :cond_2
    iget-object v1, p0, Lcom/android/contacts/editor/RawContactEditorView;->mPhoneticName:Lcom/android/contacts/editor/PhoneticNameEditorView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 792
    new-instance v0, Lcom/android/contacts/model/AccountType$EditType;

    invoke-static {p1}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabelResource(I)I

    move-result v1

    invoke-direct {v0, p1, v1}, Lcom/android/contacts/model/AccountType$EditType;-><init>(II)V

    return-object v0
.end method

.method public getAlerttoneEditor()Lcom/sec/android/app/contacts/editor/MessageAlertEditorView;
    .locals 1

    .prologue
    .line 1038
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAlerttoneEditorView:Lcom/sec/android/app/contacts/editor/MessageAlertEditorView;

    return-object v0
.end method

.method public getAlerttoneVisibility()Z
    .locals 1

    .prologue
    .line 1048
    iget-boolean v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAlerttoneVisible:Z

    return v0
.end method

.method public getNameEditor()Lcom/android/contacts/editor/TextFieldsEditorView;
    .locals 1

    .prologue
    .line 1010
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mName:Lcom/android/contacts/editor/StructuredNameEditorView;

    return-object v0
.end method

.method public getPhoneticNameEditor()Lcom/android/contacts/editor/TextFieldsEditorView;
    .locals 1

    .prologue
    .line 1014
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mPhoneticName:Lcom/android/contacts/editor/PhoneticNameEditorView;

    return-object v0
.end method

.method public getRawContactId()J
    .locals 2

    .prologue
    .line 1119
    iget-wide v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mRawContactId:J

    return-wide v0
.end method

.method public getRingtoneEditor()Lcom/sec/android/app/contacts/editor/RingtoneEditorView;
    .locals 1

    .prologue
    .line 1019
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mRingtoneEditorView:Lcom/sec/android/app/contacts/editor/RingtoneEditorView;

    return-object v0
.end method

.method public getSelectedGroupNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1428
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMembershipView:Lcom/android/contacts/editor/GroupMembershipView;

    if-eqz v0, :cond_0

    .line 1429
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMembershipView:Lcom/android/contacts/editor/GroupMembershipView;

    invoke-virtual {v0}, Lcom/android/contacts/editor/GroupMembershipView;->getSelectedGroupNames()Ljava/util/List;

    move-result-object v0

    .line 1431
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVibrationEditor()Lcom/sec/android/app/contacts/editor/VibrationEditorView;
    .locals 1

    .prologue
    .line 1061
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mVibrationEditorView:Lcom/sec/android/app/contacts/editor/VibrationEditorView;

    return-object v0
.end method

.method public getVibrationVisibility()Z
    .locals 1

    .prologue
    .line 1071
    iget-boolean v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mVibrationVisible:Z

    return v0
.end method

.method public isPhoneticNameAdded()Z
    .locals 1

    .prologue
    .line 1354
    iget-boolean v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mPhoneticNameAdded:Z

    return v0
.end method

.method public mAutoAddToICEGroup(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 916
    iput-boolean p1, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAutoAddToICEGroup:Z

    .line 917
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 236
    invoke-super {p0}, Lcom/android/contacts/editor/BaseRawContactEditorView;->onFinishInflate()V

    .line 238
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mInflater:Landroid/view/LayoutInflater;

    .line 240
    const v0, 0x7f09040a

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/editor/StructuredNameEditorView;

    iput-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mName:Lcom/android/contacts/editor/StructuredNameEditorView;

    .line 241
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mName:Lcom/android/contacts/editor/StructuredNameEditorView;

    invoke-virtual {v0, v2}, Lcom/android/contacts/editor/LabeledEditorView;->setDeletable(Z)V

    .line 243
    const v0, 0x7f09040b

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/editor/PhoneticNameEditorView;

    iput-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mPhoneticName:Lcom/android/contacts/editor/PhoneticNameEditorView;

    .line 244
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mPhoneticName:Lcom/android/contacts/editor/PhoneticNameEditorView;

    invoke-virtual {v0, v2}, Lcom/android/contacts/editor/LabeledEditorView;->setDeletable(Z)V

    .line 246
    const v0, 0x7f09040c

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    .line 248
    const v0, 0x7f09019b

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountIcon:Landroid/widget/ImageView;

    .line 249
    const v0, 0x7f0902d9

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountTypeTextView:Landroid/widget/TextView;

    .line 250
    const v0, 0x7f0902da

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountNameTextView:Landroid/widget/TextView;

    .line 252
    const v0, 0x7f09040d

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAddFieldButton:Landroid/widget/Button;

    .line 254
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAddFieldButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/contacts/editor/RawContactEditorView$1;

    invoke-direct {v1, p0}, Lcom/android/contacts/editor/RawContactEditorView$1;-><init>(Lcom/android/contacts/editor/RawContactEditorView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 263
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mHasPhone:Z

    .line 265
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isVibrator(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mIsVibrator:Z

    .line 267
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isMMSAvailable(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->isMMSAvailable:Z

    .line 269
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isMMSAvailable(Landroid/content/Context;I)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/RawContactEditorView;->setAlerttoneVisibility(Z)V

    .line 274
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 1318
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowFocusChanged(Z)V

    .line 1319
    if-eqz p1, :cond_1

    .line 1320
    iget-object v2, p0, Lcom/android/contacts/editor/RawContactEditorView;->mRunWhenWindowFocused:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 1321
    .local v1, "r":Ljava/lang/Runnable;
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 1323
    .end local v1    # "r":Ljava/lang/Runnable;
    :cond_0
    iget-object v2, p0, Lcom/android/contacts/editor/RawContactEditorView;->mRunWhenWindowFocused:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1325
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public requestFocusForFirstEditField_byoutside()V
    .locals 1

    .prologue
    .line 796
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mName:Lcom/android/contacts/editor/StructuredNameEditorView;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 797
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mName:Lcom/android/contacts/editor/StructuredNameEditorView;

    invoke-virtual {v0}, Lcom/android/contacts/editor/TextFieldsEditorView;->requestFocusForFirstEditField()V

    .line 798
    :cond_0
    return-void
.end method

.method public setAccountInfo(Lcom/android/contacts/model/AccountType;I)V
    .locals 0
    .param p1, "accountType"    # Lcom/android/contacts/model/AccountType;
    .param p2, "simId"    # I

    .prologue
    .line 1453
    return-void
.end method

.method public setAccountInfo(Lcom/android/contacts/model/AccountType;Ljava/lang/String;)V
    .locals 2
    .param p1, "type"    # Lcom/android/contacts/model/AccountType;
    .param p2, "accountType"    # Ljava/lang/String;

    .prologue
    .line 1456
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountType:Lcom/android/contacts/model/AccountType;

    if-eqz v0, :cond_0

    .line 1457
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountType:Lcom/android/contacts/model/AccountType;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1458
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/android/contacts/model/AccountType;->getDisplayIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1459
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountTypeTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1460
    iput-object p1, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountType:Lcom/android/contacts/model/AccountType;

    .line 1463
    :cond_0
    return-void
.end method

.method public setAlerttone(Ljava/lang/String;)V
    .locals 1
    .param p1, "alerttone"    # Ljava/lang/String;

    .prologue
    .line 1054
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAlerttoneEditorView:Lcom/sec/android/app/contacts/editor/MessageAlertEditorView;

    if-eqz v0, :cond_0

    .line 1055
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAlerttoneEditorView:Lcom/sec/android/app/contacts/editor/MessageAlertEditorView;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/contacts/editor/MessageAlertEditorView;->setAlerttone(Ljava/lang/String;)V

    .line 1057
    :cond_0
    return-void
.end method

.method public setAlerttoneVisibility(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 1044
    iput-boolean p1, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAlerttoneVisible:Z

    .line 1045
    return-void
.end method

.method public setAutoAddToDefaultGroup(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 911
    iput-boolean p1, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAutoAddToDefaultGroup:Z

    .line 912
    return-void
.end method

.method public setDateFormat()V
    .locals 1

    .prologue
    .line 1085
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mEventSectionView:Lcom/android/contacts/editor/KindSectionView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mEventSectionView:Lcom/android/contacts/editor/KindSectionView;

    invoke-virtual {v0}, Lcom/android/contacts/editor/KindSectionView;->isDatePickerDialogShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1086
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mEventSectionView:Lcom/android/contacts/editor/KindSectionView;

    invoke-virtual {v0}, Lcom/android/contacts/editor/KindSectionView;->rebuildFromState()V

    .line 1088
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 186
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 188
    invoke-virtual {p0}, Lcom/android/contacts/editor/BaseRawContactEditorView;->getPhotoEditor()Lcom/android/contacts/editor/PhotoEditorView;

    move-result-object v2

    .line 189
    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 190
    invoke-virtual {v2, p1}, Lcom/android/contacts/editor/PhotoEditorView;->setEnabled(Z)V

    .line 193
    :cond_0
    iget-object v3, p0, Lcom/android/contacts/editor/RawContactEditorView;->mName:Lcom/android/contacts/editor/StructuredNameEditorView;

    if-eqz v3, :cond_1

    .line 194
    iget-object v3, p0, Lcom/android/contacts/editor/RawContactEditorView;->mName:Lcom/android/contacts/editor/StructuredNameEditorView;

    invoke-virtual {v3, p1}, Lcom/android/contacts/editor/TextFieldsEditorView;->setEnabled(Z)V

    .line 197
    :cond_1
    iget-object v3, p0, Lcom/android/contacts/editor/RawContactEditorView;->mPhoneticName:Lcom/android/contacts/editor/PhoneticNameEditorView;

    if-eqz v3, :cond_2

    .line 198
    iget-object v3, p0, Lcom/android/contacts/editor/RawContactEditorView;->mPhoneticName:Lcom/android/contacts/editor/PhoneticNameEditorView;

    invoke-virtual {v3, p1}, Lcom/android/contacts/editor/TextFieldsEditorView;->setEnabled(Z)V

    .line 201
    :cond_2
    iget-object v3, p0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    if-eqz v3, :cond_3

    .line 202
    iget-object v3, p0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 203
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 204
    iget-object v3, p0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 203
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 208
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_3
    iget-object v3, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMembershipView:Lcom/android/contacts/editor/GroupMembershipView;

    if-eqz v3, :cond_4

    .line 209
    iget-object v3, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMembershipView:Lcom/android/contacts/editor/GroupMembershipView;

    invoke-virtual {v3, p1}, Lcom/android/contacts/editor/GroupMembershipView;->setEnabled(Z)V

    .line 213
    :cond_4
    iget-object v3, p0, Lcom/android/contacts/editor/RawContactEditorView;->mRingtoneEditorView:Lcom/sec/android/app/contacts/editor/RingtoneEditorView;

    if-eqz v3, :cond_5

    .line 214
    iget-object v3, p0, Lcom/android/contacts/editor/RawContactEditorView;->mRingtoneEditorView:Lcom/sec/android/app/contacts/editor/RingtoneEditorView;

    invoke-virtual {v3, p1}, Lcom/sec/android/app/contacts/editor/RingtoneEditorView;->setEnabled(Z)V

    .line 218
    :cond_5
    iget-object v3, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAlerttoneEditorView:Lcom/sec/android/app/contacts/editor/MessageAlertEditorView;

    if-eqz v3, :cond_6

    .line 219
    iget-object v3, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAlerttoneEditorView:Lcom/sec/android/app/contacts/editor/MessageAlertEditorView;

    invoke-virtual {v3, p1}, Lcom/sec/android/app/contacts/editor/MessageAlertEditorView;->setEnabled(Z)V

    .line 223
    :cond_6
    iget-object v3, p0, Lcom/android/contacts/editor/RawContactEditorView;->mVibrationEditorView:Lcom/sec/android/app/contacts/editor/VibrationEditorView;

    if-eqz v3, :cond_7

    .line 224
    iget-object v3, p0, Lcom/android/contacts/editor/RawContactEditorView;->mVibrationEditorView:Lcom/sec/android/app/contacts/editor/VibrationEditorView;

    invoke-virtual {v3, p1}, Lcom/sec/android/app/contacts/editor/VibrationEditorView;->setEnabled(Z)V

    .line 227
    :cond_7
    iget-object v3, p0, Lcom/android/contacts/editor/RawContactEditorView;->mEventSectionView:Lcom/android/contacts/editor/KindSectionView;

    if-eqz v3, :cond_8

    .line 228
    iget-object v3, p0, Lcom/android/contacts/editor/RawContactEditorView;->mEventSectionView:Lcom/android/contacts/editor/KindSectionView;

    invoke-virtual {v3, p1}, Lcom/android/contacts/editor/KindSectionView;->setEnabled(Z)V

    .line 231
    :cond_8
    iget-object v3, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAddFieldButton:Landroid/widget/Button;

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 232
    return-void
.end method

.method public setGroupMetaData(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "groupMetaData"    # Landroid/database/Cursor;

    .prologue
    .line 897
    iput-object p1, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMetaData:Landroid/database/Cursor;

    .line 898
    invoke-direct {p0}, Lcom/android/contacts/editor/RawContactEditorView;->addToDefaultGroupIfNeeded()V

    .line 899
    invoke-direct {p0}, Lcom/android/contacts/editor/RawContactEditorView;->addToICEGroupIfNeeded()V

    .line 900
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMembershipView:Lcom/android/contacts/editor/GroupMembershipView;

    if-eqz v0, :cond_0

    .line 901
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMembershipView:Lcom/android/contacts/editor/GroupMembershipView;

    invoke-virtual {v0, p1}, Lcom/android/contacts/editor/GroupMembershipView;->setGroupMetaData(Landroid/database/Cursor;)V

    .line 902
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isEasyMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAddFieldButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/contacts/editor/RawContactEditorView;->IsNeedlessAddFieldButton()Z

    move-result v0

    if-nez v0, :cond_0

    .line 905
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAddFieldButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 908
    :cond_0
    return-void
.end method

.method public setGroupVisibility(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 1092
    iput-boolean p1, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupVisible:Z

    .line 1093
    return-void
.end method

.method public setPhoneticNameAdded(Z)V
    .locals 0
    .param p1, "phoneticNameAdded"    # Z

    .prologue
    .line 1358
    iput-boolean p1, p0, Lcom/android/contacts/editor/RawContactEditorView;->mPhoneticNameAdded:Z

    .line 1359
    return-void
.end method

.method public setRelationVisibility(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 1097
    iput-boolean p1, p0, Lcom/android/contacts/editor/RawContactEditorView;->mRelationVisible:Z

    .line 1098
    return-void
.end method

.method public setRingtone(Ljava/lang/String;)V
    .locals 1
    .param p1, "ringtone"    # Ljava/lang/String;

    .prologue
    .line 1031
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mRingtoneEditorView:Lcom/sec/android/app/contacts/editor/RingtoneEditorView;

    if-eqz v0, :cond_0

    .line 1032
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mRingtoneEditorView:Lcom/sec/android/app/contacts/editor/RingtoneEditorView;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/contacts/editor/RingtoneEditorView;->setRingtone(Ljava/lang/String;)V

    .line 1034
    :cond_0
    return-void
.end method

.method public setRintoneVisibility(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 1025
    iput-boolean p1, p0, Lcom/android/contacts/editor/RawContactEditorView;->mRingtoneVisible:Z

    .line 1026
    return-void
.end method

.method public setSelectedGroupNames(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1435
    .local p1, "selectedGroupNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMembershipView:Lcom/android/contacts/editor/GroupMembershipView;

    if-eqz v0, :cond_0

    .line 1436
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMembershipView:Lcom/android/contacts/editor/GroupMembershipView;

    invoke-virtual {v0, p1}, Lcom/android/contacts/editor/GroupMembershipView;->setSelectedGroupNames(Ljava/util/ArrayList;)V

    .line 1438
    :cond_0
    return-void
.end method

.method public setState(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType;Lcom/android/contacts/editor/ViewIdGenerator;Z)V
    .locals 29
    .param p1, "state"    # Lcom/android/contacts/model/EntityDelta;
    .param p2, "type"    # Lcom/android/contacts/model/AccountType;
    .param p3, "vig"    # Lcom/android/contacts/editor/ViewIdGenerator;
    .param p4, "isProfile"    # Z

    .prologue
    .line 285
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/editor/RawContactEditorView;->mState:Lcom/android/contacts/model/EntityDelta;

    .line 288
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 291
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 788
    :cond_0
    :goto_0
    return-void

    .line 293
    :cond_1
    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3, v6, v7}, Lcom/android/contacts/editor/ViewIdGenerator;->getId(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;Lcom/android/contacts/model/EntityDelta$ValuesDelta;I)I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/View;->setId(I)V

    .line 296
    const-string v3, "vnd.android.cursor.item/name"

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v3}, Lcom/android/contacts/model/EntityModifier;->ensureKindExists(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType;Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 300
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v25

    .line 301
    .local v25, "values":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    const-string v3, "_id"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/android/contacts/editor/RawContactEditorView;->mRawContactId:J

    .line 302
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/editor/RawContactEditorView;->mAccountType:Lcom/android/contacts/model/AccountType;

    .line 305
    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/contacts/editor/RawContactEditorView;->mAAB_profile:Z

    .line 308
    if-eqz p4, :cond_f

    .line 310
    const-string v3, "account_name"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 311
    .local v9, "accountName":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "vnd.sec.contact.phone"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 313
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountNameTextView:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 314
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountTypeTextView:Landroid/widget/TextView;

    const v6, 0x7f0e0206

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(I)V

    .line 321
    :goto_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v6, "CscFeature_Contact_BlockFormatMyProfile"

    invoke-virtual {v3, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 323
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/contacts/editor/RawContactEditorView;->mAAB_profile:Z

    .line 400
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountIcon:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Lcom/android/contacts/model/AccountType;->getDisplayIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 403
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v6, "CscFeature_Contact_UseUniNameField"

    invoke-virtual {v3, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 405
    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/editor/RawContactEditorView;->setOneNameFieldLayout()V

    .line 408
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimSupport()Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "vnd.sec.contact.sim"

    const-string v6, "account_type"

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "vnd.sec.contact.sim2"

    const-string v6, "account_type"

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 412
    :cond_5
    invoke-direct/range {p0 .. p2}, Lcom/android/contacts/editor/RawContactEditorView;->setSIMLayout(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType;)V

    .line 425
    :cond_6
    const-string v3, "vnd.android.cursor.item/photo"

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v3}, Lcom/android/contacts/model/EntityModifier;->ensureKindExists(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType;Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 427
    const-string v3, "vnd.android.cursor.item/photo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/android/contacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v3

    if-eqz v3, :cond_1d

    const/4 v3, 0x1

    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/contacts/editor/BaseRawContactEditorView;->setHasPhotoEditor(Z)V

    .line 429
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/BaseRawContactEditorView;->getPhotoEditor()Lcom/android/contacts/editor/PhotoEditorView;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isEnabled()Z

    move-result v6

    invoke-virtual {v3, v6}, Lcom/android/contacts/editor/PhotoEditorView;->setEnabled(Z)V

    .line 431
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mName:Lcom/android/contacts/editor/StructuredNameEditorView;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isEnabled()Z

    move-result v6

    invoke-virtual {v3, v6}, Lcom/android/contacts/editor/TextFieldsEditorView;->setEnabled(Z)V

    .line 433
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mPhoneticName:Lcom/android/contacts/editor/PhoneticNameEditorView;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isEnabled()Z

    move-result v6

    invoke-virtual {v3, v6}, Lcom/android/contacts/editor/TextFieldsEditorView;->setEnabled(Z)V

    .line 437
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 439
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mName:Lcom/android/contacts/editor/StructuredNameEditorView;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 441
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mPhoneticName:Lcom/android/contacts/editor/PhoneticNameEditorView;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 444
    const-string v3, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v3}, Lcom/android/contacts/model/EntityModifier;->ensureKindExists(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType;Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 446
    const-string v3, "vnd.sec.contact.sim"

    const-string v6, "account_type"

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "vnd.sec.contact.sim2"

    const-string v6, "account_type"

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 448
    const-string v3, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v3}, Lcom/android/contacts/model/EntityModifier;->ensureKindExists(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType;Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 450
    :cond_7
    const-string v3, "vnd.android.cursor.item/group_membership"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/android/contacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMembershipKind:Lcom/android/contacts/model/DataKind;

    .line 452
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMembershipKind:Lcom/android/contacts/model/DataKind;

    if-eqz v3, :cond_8

    .line 454
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f040174

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    const/4 v8, 0x0

    invoke-virtual {v3, v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/editor/GroupMembershipView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMembershipView:Lcom/android/contacts/editor/GroupMembershipView;

    .line 458
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMembershipView:Lcom/android/contacts/editor/GroupMembershipView;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMembershipKind:Lcom/android/contacts/model/DataKind;

    invoke-virtual {v3, v6}, Lcom/android/contacts/editor/GroupMembershipView;->setKind(Lcom/android/contacts/model/DataKind;)V

    .line 460
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMembershipView:Lcom/android/contacts/editor/GroupMembershipView;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isEnabled()Z

    move-result v6

    invoke-virtual {v3, v6}, Lcom/android/contacts/editor/GroupMembershipView;->setEnabled(Z)V

    .line 465
    :cond_8
    const-string v3, "vnd.android.cursor.item/ringtone"

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v3}, Lcom/android/contacts/model/EntityModifier;->ensureKindExists(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType;Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 466
    const-string v3, "vnd.android.cursor.item/ringtone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/android/contacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mRingtoneKind:Lcom/android/contacts/model/DataKind;

    .line 467
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mRingtoneKind:Lcom/android/contacts/model/DataKind;

    if-eqz v3, :cond_9

    .line 468
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f040179

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    const/4 v8, 0x0

    invoke-virtual {v3, v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/contacts/editor/RingtoneEditorView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mRingtoneEditorView:Lcom/sec/android/app/contacts/editor/RingtoneEditorView;

    .line 471
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mRingtoneEditorView:Lcom/sec/android/app/contacts/editor/RingtoneEditorView;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isEnabled()Z

    move-result v6

    invoke-virtual {v3, v6}, Lcom/sec/android/app/contacts/editor/RingtoneEditorView;->setEnabled(Z)V

    .line 475
    :cond_9
    const-string v3, "vnd.android.cursor.item/alerttone"

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v3}, Lcom/android/contacts/model/EntityModifier;->ensureKindExists(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType;Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 476
    const-string v3, "vnd.android.cursor.item/alerttone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/android/contacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mAlerttoneKind:Lcom/android/contacts/model/DataKind;

    .line 477
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mAlerttoneKind:Lcom/android/contacts/model/DataKind;

    if-eqz v3, :cond_a

    .line 478
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f040173

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    const/4 v8, 0x0

    invoke-virtual {v3, v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/contacts/editor/MessageAlertEditorView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mAlerttoneEditorView:Lcom/sec/android/app/contacts/editor/MessageAlertEditorView;

    .line 481
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mAlerttoneEditorView:Lcom/sec/android/app/contacts/editor/MessageAlertEditorView;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isEnabled()Z

    move-result v6

    invoke-virtual {v3, v6}, Lcom/sec/android/app/contacts/editor/MessageAlertEditorView;->setEnabled(Z)V

    .line 485
    :cond_a
    const-string v3, "vnd.android.cursor.item/vibration"

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v3}, Lcom/android/contacts/model/EntityModifier;->ensureKindExists(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType;Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 486
    const-string v3, "vnd.android.cursor.item/vibration"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/android/contacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mVibrationKind:Lcom/android/contacts/model/DataKind;

    .line 487
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mVibrationKind:Lcom/android/contacts/model/DataKind;

    if-eqz v3, :cond_b

    .line 488
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f04017a

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    const/4 v8, 0x0

    invoke-virtual {v3, v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/contacts/editor/VibrationEditorView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mVibrationEditorView:Lcom/sec/android/app/contacts/editor/VibrationEditorView;

    .line 491
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mVibrationEditorView:Lcom/sec/android/app/contacts/editor/VibrationEditorView;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isEnabled()Z

    move-result v6

    invoke-virtual {v3, v6}, Lcom/sec/android/app/contacts/editor/VibrationEditorView;->setEnabled(Z)V

    .line 496
    :cond_b
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "easy_mode_switch"

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v3, v6, :cond_1e

    .line 497
    const/16 v16, 0x0

    .line 507
    .local v16, "isEasyMode":Z
    :goto_4
    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/model/AccountType;->getSortedDataKinds()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :cond_c
    :goto_5
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_52

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/model/DataKind;

    .line 509
    .local v4, "kind":Lcom/android/contacts/model/DataKind;
    iget-boolean v3, v4, Lcom/android/contacts/model/DataKind;->editable:Z

    if-eqz v3, :cond_c

    .line 511
    iget-object v0, v4, Lcom/android/contacts/model/DataKind;->mimeType:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 513
    .local v22, "mimeType":Ljava/lang/String;
    if-eqz v16, :cond_d

    .line 514
    const-string v3, "vnd.android.cursor.item/nickname"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    const-string v3, "vnd.android.cursor.item/website"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    const-string v3, "vnd.android.cursor.item/vibration"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    const-string v3, "vnd.android.cursor.item/relation"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    const-string v3, "vnd.android.cursor.item/note"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 523
    :cond_d
    const-string v3, "vnd.android.cursor.item/name"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 525
    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/EntityDelta;->getPrimaryEntry(Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v5

    .line 526
    .local v5, "primary":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mName:Lcom/android/contacts/editor/StructuredNameEditorView;

    const-string v6, "#displayName"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Lcom/android/contacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v4

    .end local v4    # "kind":Lcom/android/contacts/model/DataKind;
    const/4 v7, 0x0

    move-object/from16 v6, p1

    move-object/from16 v8, p3

    invoke-virtual/range {v3 .. v8}, Lcom/android/contacts/editor/StructuredNameEditorView;->setValues(Lcom/android/contacts/model/DataKind;Lcom/android/contacts/model/EntityDelta$ValuesDelta;Lcom/android/contacts/model/EntityDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V

    .line 529
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mPhoneticName:Lcom/android/contacts/editor/PhoneticNameEditorView;

    const-string v6, "#phoneticName"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Lcom/android/contacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v4

    const/4 v7, 0x0

    move-object/from16 v6, p1

    move-object/from16 v8, p3

    invoke-virtual/range {v3 .. v8}, Lcom/android/contacts/editor/PhoneticNameEditorView;->setValues(Lcom/android/contacts/model/DataKind;Lcom/android/contacts/model/EntityDelta$ValuesDelta;Lcom/android/contacts/model/EntityDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V

    goto/16 :goto_5

    .line 316
    .end local v5    # "primary":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v16    # "isEasyMode":Z
    .end local v22    # "mimeType":Ljava/lang/String;
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/android/contacts/model/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v10

    .line 317
    .local v10, "accountType":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountTypeTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v7, 0x7f0e0207

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/16 v26, 0x0

    aput-object v10, v8, v26

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountNameTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 327
    .end local v9    # "accountName":Ljava/lang/String;
    .end local v10    # "accountType":Ljava/lang/CharSequence;
    :cond_f
    const-string v3, "account_name"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 328
    .restart local v9    # "accountName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/android/contacts/model/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v10

    .line 329
    .restart local v10    # "accountType":Ljava/lang/CharSequence;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 330
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v6, 0x7f0e012f

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 332
    :cond_10
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_16

    .line 333
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountNameTextView:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 335
    const-string v3, "vnd.sec.contact.phone"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 336
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountNameTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v7, 0x7f0e0285

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/16 v26, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x7f0e0286

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v27

    aput-object v27, v8, v26

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 338
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountNameTextView:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 368
    :goto_6
    const-string v3, "vnd.sec.contact.phone"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 369
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountTypeTextView:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0e012f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 370
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isKnoxMode(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 371
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountTypeTextView:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0e0131

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 339
    :cond_11
    const-string v3, "vnd.sec.contact.phone_personal"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 340
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountNameTextView:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    .line 341
    :cond_12
    const-string v3, "vnd.sec.contact.sim"

    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v6

    const-string v7, "account_type"

    invoke-virtual {v6, v7}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 342
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountNameTextView:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    .line 343
    :cond_13
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v3

    if-eqz v3, :cond_14

    const-string v3, "vnd.sec.contact.sim2"

    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v6

    const-string v7, "account_type"

    invoke-virtual {v6, v7}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 345
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountNameTextView:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6

    .line 346
    :cond_14
    const-string v3, "vnd.sec.contact.agg.account_type"

    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v6

    const-string v7, "account_type"

    invoke-virtual {v6, v7}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 347
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountNameTextView:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6

    .line 358
    :cond_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountNameTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v7, 0x7f0e018c

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/16 v26, 0x0

    aput-object v9, v8, v26

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 364
    :cond_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountNameTextView:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6

    .line 373
    :cond_17
    const-string v3, "vnd.sec.contact.phone_personal"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 374
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountTypeTextView:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0e0130

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 375
    :cond_18
    const-string v3, "primary.sim.account_name"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 376
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v6, "CscFeature_Contact_ReplaceLabelDualModeSim"

    invoke-virtual {v3, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isUIMCard()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 379
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountTypeTextView:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0e0282

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 380
    :cond_19
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 381
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountTypeTextView:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v6

    const-string v7, "vnd.sec.contact.sim"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 386
    :cond_1a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountTypeTextView:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0e0281

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 388
    :cond_1b
    const-string v3, "primary.sim2.account_name"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 393
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountTypeTextView:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v6

    const-string v7, "vnd.sec.contact.sim2"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 396
    :cond_1c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountTypeTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v7, 0x7f0e018b

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/16 v26, 0x0

    aput-object v10, v8, v26

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 427
    .end local v10    # "accountType":Ljava/lang/CharSequence;
    :cond_1d
    const/4 v3, 0x0

    goto/16 :goto_3

    .line 502
    :cond_1e
    const/16 v16, 0x0

    .restart local v16    # "isEasyMode":Z
    goto/16 :goto_4

    .line 532
    .restart local v4    # "kind":Lcom/android/contacts/model/DataKind;
    .restart local v14    # "i$":Ljava/util/Iterator;
    .restart local v22    # "mimeType":Ljava/lang/String;
    :cond_1f
    const-string v3, "vnd.android.cursor.item/photo"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 534
    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/EntityDelta;->getSuperPrimaryEntry(Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v5

    .line 535
    .restart local v5    # "primary":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/BaseRawContactEditorView;->getPhotoEditor()Lcom/android/contacts/editor/PhotoEditorView;

    move-result-object v3

    const/4 v7, 0x0

    move-object/from16 v6, p1

    move-object/from16 v8, p3

    invoke-virtual/range {v3 .. v8}, Lcom/android/contacts/editor/PhotoEditorView;->setValues(Lcom/android/contacts/model/DataKind;Lcom/android/contacts/model/EntityDelta$ValuesDelta;Lcom/android/contacts/model/EntityDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V

    goto/16 :goto_5

    .line 536
    .end local v5    # "primary":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    :cond_20
    const-string v3, "vnd.android.cursor.item/group_membership"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 537
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMembershipView:Lcom/android/contacts/editor/GroupMembershipView;

    if-eqz v3, :cond_c

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupVisible:Z

    if-eqz v3, :cond_c

    .line 538
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMembershipView:Lcom/android/contacts/editor/GroupMembershipView;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/android/contacts/editor/GroupMembershipView;->setState(Lcom/android/contacts/model/EntityDelta;)V

    .line 539
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMembershipView:Lcom/android/contacts/editor/GroupMembershipView;

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 540
    if-eqz v16, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMembershipView:Lcom/android/contacts/editor/GroupMembershipView;

    invoke-virtual {v3}, Lcom/android/contacts/editor/GroupMembershipView;->hasAvailableData()Z

    move-result v3

    if-nez v3, :cond_c

    .line 541
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMembershipView:Lcom/android/contacts/editor/GroupMembershipView;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/android/contacts/editor/GroupMembershipView;->setVisibilitySectionView(Z)V

    goto/16 :goto_5

    .line 544
    :cond_21
    const-string v3, "vnd.android.cursor.item/relation"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 545
    iget-object v3, v4, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    if-eqz v3, :cond_c

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mRelationVisible:Z

    if-eqz v3, :cond_c

    .line 546
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f040176

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    const/4 v8, 0x0

    invoke-virtual {v3, v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v24

    check-cast v24, Lcom/android/contacts/editor/KindSectionView;

    .line 548
    .local v24, "section":Lcom/android/contacts/editor/KindSectionView;
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isEnabled()Z

    move-result v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Lcom/android/contacts/editor/KindSectionView;->setEnabled(Z)V

    .line 549
    const/4 v3, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v4, v1, v3, v2}, Lcom/android/contacts/editor/KindSectionView;->setState(Lcom/android/contacts/model/DataKind;Lcom/android/contacts/model/EntityDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V

    .line 550
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_5

    .line 551
    .end local v24    # "section":Lcom/android/contacts/editor/KindSectionView;
    :cond_22
    const-string v3, "vnd.android.cursor.item/organization"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 591
    iget-object v3, v4, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    if-eqz v3, :cond_c

    .line 592
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f040176

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    const/4 v8, 0x0

    invoke-virtual {v3, v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v24

    check-cast v24, Lcom/android/contacts/editor/KindSectionView;

    .line 596
    .restart local v24    # "section":Lcom/android/contacts/editor/KindSectionView;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v6, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v3, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2a

    iget-object v3, v4, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    if-eqz v3, :cond_2a

    .line 597
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/android/contacts/model/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v10

    .line 599
    .restart local v10    # "accountType":Ljava/lang/CharSequence;
    new-instance v12, Lcom/android/contacts/model/AccountType$EditField;

    const-string v3, "data5"

    const v6, 0x7f0e0068

    const/16 v7, 0x2001

    invoke-direct {v12, v3, v6, v7}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    .line 600
    .local v12, "department":Lcom/android/contacts/model/AccountType$EditField;
    new-instance v21, Lcom/android/contacts/model/AccountType$EditField;

    const-string v3, "data6"

    const v6, 0x7f0e0069

    const/16 v7, 0x2001

    move-object/from16 v0, v21

    invoke-direct {v0, v3, v6, v7}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    .line 601
    .local v21, "jobDescription":Lcom/android/contacts/model/AccountType$EditField;
    new-instance v23, Lcom/android/contacts/model/AccountType$EditField;

    const-string v3, "data9"

    const v6, 0x7f0e006a

    const/16 v7, 0x2001

    move-object/from16 v0, v23

    invoke-direct {v0, v3, v6, v7}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    .line 603
    .local v23, "officeLocation":Lcom/android/contacts/model/AccountType$EditField;
    if-nez p4, :cond_23

    const-string v3, "docomo"

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 604
    :cond_23
    const/16 v17, 0x0

    .line 605
    .local v17, "isExistDepartment":Z
    const/16 v18, 0x0

    .line 606
    .local v18, "isExistJobDescription":Z
    const/16 v19, 0x0

    .line 608
    .local v19, "isExistOfficeLocation":Z
    iget-object v3, v4, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .line 610
    .local v20, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/contacts/model/AccountType$EditField;>;"
    :cond_24
    :goto_7
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_27

    .line 611
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/contacts/model/AccountType$EditField;

    .line 612
    .local v13, "editField":Lcom/android/contacts/model/AccountType$EditField;
    iget-object v3, v13, Lcom/android/contacts/model/AccountType$EditField;->column:Ljava/lang/String;

    iget-object v6, v12, Lcom/android/contacts/model/AccountType$EditField;->column:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 613
    const/16 v17, 0x1

    .line 614
    :cond_25
    iget-object v3, v13, Lcom/android/contacts/model/AccountType$EditField;->column:Ljava/lang/String;

    move-object/from16 v0, v21

    iget-object v6, v0, Lcom/android/contacts/model/AccountType$EditField;->column:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 615
    const/16 v18, 0x1

    .line 616
    :cond_26
    iget-object v3, v13, Lcom/android/contacts/model/AccountType$EditField;->column:Ljava/lang/String;

    move-object/from16 v0, v23

    iget-object v6, v0, Lcom/android/contacts/model/AccountType$EditField;->column:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 617
    const/16 v19, 0x1

    goto :goto_7

    .line 619
    .end local v13    # "editField":Lcom/android/contacts/model/AccountType$EditField;
    :cond_27
    if-nez v17, :cond_28

    .line 620
    iget-object v3, v4, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    invoke-interface {v3, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 621
    :cond_28
    if-nez v18, :cond_29

    .line 622
    iget-object v3, v4, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    move-object/from16 v0, v21

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 623
    :cond_29
    if-nez v19, :cond_2a

    .line 624
    iget-object v3, v4, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    move-object/from16 v0, v23

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 639
    .end local v10    # "accountType":Ljava/lang/CharSequence;
    .end local v12    # "department":Lcom/android/contacts/model/AccountType$EditField;
    .end local v17    # "isExistDepartment":Z
    .end local v18    # "isExistJobDescription":Z
    .end local v19    # "isExistOfficeLocation":Z
    .end local v20    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/contacts/model/AccountType$EditField;>;"
    .end local v21    # "jobDescription":Lcom/android/contacts/model/AccountType$EditField;
    .end local v23    # "officeLocation":Lcom/android/contacts/model/AccountType$EditField;
    :cond_2a
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isEnabled()Z

    move-result v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Lcom/android/contacts/editor/KindSectionView;->setEnabled(Z)V

    .line 640
    const/4 v3, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v4, v1, v3, v2}, Lcom/android/contacts/editor/KindSectionView;->setState(Lcom/android/contacts/model/DataKind;Lcom/android/contacts/model/EntityDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V

    .line 641
    invoke-virtual/range {v24 .. v24}, Lcom/android/contacts/editor/KindSectionView;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 642
    invoke-virtual/range {v24 .. v24}, Lcom/android/contacts/editor/KindSectionView;->removeLabelSection()V

    .line 644
    :cond_2b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_5

    .line 626
    .restart local v10    # "accountType":Ljava/lang/CharSequence;
    .restart local v12    # "department":Lcom/android/contacts/model/AccountType$EditField;
    .restart local v21    # "jobDescription":Lcom/android/contacts/model/AccountType$EditField;
    .restart local v23    # "officeLocation":Lcom/android/contacts/model/AccountType$EditField;
    :cond_2c
    iget-object v3, v4, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .line 627
    .restart local v20    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/contacts/model/AccountType$EditField;>;"
    :cond_2d
    :goto_8
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 628
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/contacts/model/AccountType$EditField;

    .line 629
    .restart local v13    # "editField":Lcom/android/contacts/model/AccountType$EditField;
    iget-object v3, v13, Lcom/android/contacts/model/AccountType$EditField;->column:Ljava/lang/String;

    iget-object v6, v12, Lcom/android/contacts/model/AccountType$EditField;->column:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 630
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->remove()V

    .line 631
    :cond_2e
    iget-object v3, v13, Lcom/android/contacts/model/AccountType$EditField;->column:Ljava/lang/String;

    move-object/from16 v0, v21

    iget-object v6, v0, Lcom/android/contacts/model/AccountType$EditField;->column:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 632
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->remove()V

    .line 633
    :cond_2f
    iget-object v3, v13, Lcom/android/contacts/model/AccountType$EditField;->column:Ljava/lang/String;

    move-object/from16 v0, v23

    iget-object v6, v0, Lcom/android/contacts/model/AccountType$EditField;->column:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 634
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->remove()V

    goto :goto_8

    .line 645
    .end local v10    # "accountType":Ljava/lang/CharSequence;
    .end local v12    # "department":Lcom/android/contacts/model/AccountType$EditField;
    .end local v13    # "editField":Lcom/android/contacts/model/AccountType$EditField;
    .end local v20    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/contacts/model/AccountType$EditField;>;"
    .end local v21    # "jobDescription":Lcom/android/contacts/model/AccountType$EditField;
    .end local v23    # "officeLocation":Lcom/android/contacts/model/AccountType$EditField;
    .end local v24    # "section":Lcom/android/contacts/editor/KindSectionView;
    :cond_30
    const-string v3, "vnd.android.cursor.item/contact_event"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 646
    iget-object v3, v4, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    if-eqz v3, :cond_c

    .line 648
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f040176

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    const/4 v8, 0x0

    invoke-virtual {v3, v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/editor/KindSectionView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mEventSectionView:Lcom/android/contacts/editor/KindSectionView;

    .line 651
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mEventSectionView:Lcom/android/contacts/editor/KindSectionView;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isEnabled()Z

    move-result v6

    invoke-virtual {v3, v6}, Lcom/android/contacts/editor/KindSectionView;->setEnabled(Z)V

    .line 652
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mEventSectionView:Lcom/android/contacts/editor/KindSectionView;

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v3, v4, v0, v6, v1}, Lcom/android/contacts/editor/KindSectionView;->setState(Lcom/android/contacts/model/DataKind;Lcom/android/contacts/model/EntityDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V

    .line 654
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mEventSectionView:Lcom/android/contacts/editor/KindSectionView;

    invoke-virtual {v3}, Lcom/android/contacts/editor/KindSectionView;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/activities/ContactEditorActivity;

    iget-boolean v3, v3, Lcom/android/contacts/activities/ContactEditorActivity;->mIsRecreatedInstance:Z

    if-nez v3, :cond_31

    .line 656
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/activities/ContactEditorActivity;

    const/4 v6, 0x0

    iput-boolean v6, v3, Lcom/android/contacts/activities/ContactEditorActivity;->mIsRecreatedInstance:Z

    .line 657
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mEventSectionView:Lcom/android/contacts/editor/KindSectionView;

    invoke-virtual {v3}, Lcom/android/contacts/editor/KindSectionView;->removeLabelSection()V

    .line 660
    :cond_31
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/editor/RawContactEditorView;->mEventSectionView:Lcom/android/contacts/editor/KindSectionView;

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_5

    .line 661
    :cond_32
    const-string v3, "vnd.android.cursor.item/postal-address_v2"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 662
    iget-object v3, v4, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    if-eqz v3, :cond_c

    .line 663
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f040176

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    const/4 v8, 0x0

    invoke-virtual {v3, v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v24

    check-cast v24, Lcom/android/contacts/editor/KindSectionView;

    .line 665
    .restart local v24    # "section":Lcom/android/contacts/editor/KindSectionView;
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isEnabled()Z

    move-result v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Lcom/android/contacts/editor/KindSectionView;->setEnabled(Z)V

    .line 666
    const/4 v3, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v4, v1, v3, v2}, Lcom/android/contacts/editor/KindSectionView;->setState(Lcom/android/contacts/model/DataKind;Lcom/android/contacts/model/EntityDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V

    .line 667
    invoke-virtual/range {v24 .. v24}, Lcom/android/contacts/editor/KindSectionView;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_33

    const-string v3, "com.android.exchange"

    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/android/contacts/model/AccountType;->accountType:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 668
    invoke-virtual/range {v24 .. v24}, Lcom/android/contacts/editor/KindSectionView;->removeEditorView()V

    .line 670
    :cond_33
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_5

    .line 671
    .end local v24    # "section":Lcom/android/contacts/editor/KindSectionView;
    :cond_34
    const-string v3, "vnd.android.cursor.item/ringtone"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 672
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mRingtoneEditorView:Lcom/sec/android/app/contacts/editor/RingtoneEditorView;

    if-eqz v3, :cond_c

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mHasPhone:Z

    if-eqz v3, :cond_c

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mRingtoneVisible:Z

    if-eqz v3, :cond_c

    .line 673
    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/EntityDelta;->getPrimaryEntry(Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v5

    .line 674
    .restart local v5    # "primary":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mRingtoneEditorView:Lcom/sec/android/app/contacts/editor/RingtoneEditorView;

    const/4 v7, 0x0

    move-object/from16 v6, p1

    move-object/from16 v8, p3

    invoke-virtual/range {v3 .. v8}, Lcom/sec/android/app/contacts/editor/RingtoneEditorView;->setState(Lcom/android/contacts/model/DataKind;Lcom/android/contacts/model/EntityDelta$ValuesDelta;Lcom/android/contacts/model/EntityDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V

    .line 675
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/editor/RawContactEditorView;->mRingtoneEditorView:Lcom/sec/android/app/contacts/editor/RingtoneEditorView;

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 676
    if-eqz v16, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mRingtoneEditorView:Lcom/sec/android/app/contacts/editor/RingtoneEditorView;

    invoke-virtual {v3}, Lcom/sec/android/app/contacts/editor/RingtoneEditorView;->hasAvailableData()Z

    move-result v3

    if-nez v3, :cond_c

    .line 677
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mRingtoneEditorView:Lcom/sec/android/app/contacts/editor/RingtoneEditorView;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/sec/android/app/contacts/editor/RingtoneEditorView;->setVisibilitySectionView(Z)V

    goto/16 :goto_5

    .line 680
    .end local v5    # "primary":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    :cond_35
    const-string v3, "vnd.android.cursor.item/vibration"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 681
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mVibrationEditorView:Lcom/sec/android/app/contacts/editor/VibrationEditorView;

    if-eqz v3, :cond_c

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mHasPhone:Z

    if-eqz v3, :cond_c

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mIsVibrator:Z

    if-eqz v3, :cond_c

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mVibrationVisible:Z

    if-eqz v3, :cond_c

    .line 682
    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/EntityDelta;->getPrimaryEntry(Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v5

    .line 683
    .restart local v5    # "primary":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mVibrationEditorView:Lcom/sec/android/app/contacts/editor/VibrationEditorView;

    const/4 v7, 0x0

    move-object/from16 v6, p1

    move-object/from16 v8, p3

    invoke-virtual/range {v3 .. v8}, Lcom/sec/android/app/contacts/editor/VibrationEditorView;->setState(Lcom/android/contacts/model/DataKind;Lcom/android/contacts/model/EntityDelta$ValuesDelta;Lcom/android/contacts/model/EntityDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V

    .line 684
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/editor/RawContactEditorView;->mVibrationEditorView:Lcom/sec/android/app/contacts/editor/VibrationEditorView;

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 685
    if-eqz v16, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mVibrationEditorView:Lcom/sec/android/app/contacts/editor/VibrationEditorView;

    invoke-virtual {v3}, Lcom/sec/android/app/contacts/editor/VibrationEditorView;->hasAvailableData()Z

    move-result v3

    if-nez v3, :cond_c

    .line 686
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mVibrationEditorView:Lcom/sec/android/app/contacts/editor/VibrationEditorView;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/sec/android/app/contacts/editor/VibrationEditorView;->setVisibilitySectionView(Z)V

    goto/16 :goto_5

    .line 689
    .end local v5    # "primary":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    :cond_36
    const-string v3, "vnd.android.cursor.item/alerttone"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 690
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mAlerttoneEditorView:Lcom/sec/android/app/contacts/editor/MessageAlertEditorView;

    if-eqz v3, :cond_c

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->isMMSAvailable:Z

    if-eqz v3, :cond_c

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mAlerttoneVisible:Z

    if-eqz v3, :cond_c

    .line 691
    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/EntityDelta;->getPrimaryEntry(Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v5

    .line 692
    .restart local v5    # "primary":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mAlerttoneEditorView:Lcom/sec/android/app/contacts/editor/MessageAlertEditorView;

    const/4 v7, 0x0

    move-object/from16 v6, p1

    move-object/from16 v8, p3

    invoke-virtual/range {v3 .. v8}, Lcom/sec/android/app/contacts/editor/MessageAlertEditorView;->setState(Lcom/android/contacts/model/DataKind;Lcom/android/contacts/model/EntityDelta$ValuesDelta;Lcom/android/contacts/model/EntityDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V

    .line 693
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/editor/RawContactEditorView;->mAlerttoneEditorView:Lcom/sec/android/app/contacts/editor/MessageAlertEditorView;

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 694
    if-eqz v16, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mAlerttoneEditorView:Lcom/sec/android/app/contacts/editor/MessageAlertEditorView;

    invoke-virtual {v3}, Lcom/sec/android/app/contacts/editor/MessageAlertEditorView;->hasAvailableData()Z

    move-result v3

    if-nez v3, :cond_c

    .line 695
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mAlerttoneEditorView:Lcom/sec/android/app/contacts/editor/MessageAlertEditorView;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/sec/android/app/contacts/editor/MessageAlertEditorView;->setVisibilitySectionView(Z)V

    goto/16 :goto_5

    .line 699
    .end local v5    # "primary":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    :cond_37
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v6, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v3, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_50

    const-string v3, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_50

    .line 700
    iget-object v3, v4, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    if-eqz v3, :cond_c

    .line 701
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f040176

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    const/4 v8, 0x0

    invoke-virtual {v3, v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v24

    check-cast v24, Lcom/android/contacts/editor/KindSectionView;

    .line 703
    .restart local v24    # "section":Lcom/android/contacts/editor/KindSectionView;
    iget-object v3, v4, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    if-eqz v3, :cond_44

    if-eqz p4, :cond_44

    .line 704
    iget-object v3, v4, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v6, 0x9

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/contacts/editor/RawContactEditorView;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_38

    iget-object v3, v4, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v6, 0x9

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/contacts/editor/RawContactEditorView;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 705
    :cond_38
    iget-object v3, v4, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v6, 0xa

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/contacts/editor/RawContactEditorView;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_39

    iget-object v3, v4, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v6, 0xa

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/contacts/editor/RawContactEditorView;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 706
    :cond_39
    iget-object v3, v4, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v6, 0xb

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/contacts/editor/RawContactEditorView;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3a

    iget-object v3, v4, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v6, 0xb

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/contacts/editor/RawContactEditorView;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 707
    :cond_3a
    iget-object v3, v4, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v6, 0xc

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/contacts/editor/RawContactEditorView;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3b

    iget-object v3, v4, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v6, 0xc

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/contacts/editor/RawContactEditorView;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 708
    :cond_3b
    iget-object v3, v4, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v6, 0xd

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/contacts/editor/RawContactEditorView;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3c

    iget-object v3, v4, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v6, 0xd

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/contacts/editor/RawContactEditorView;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 709
    :cond_3c
    iget-object v3, v4, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v6, 0xe

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/contacts/editor/RawContactEditorView;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3d

    iget-object v3, v4, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v6, 0xe

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/contacts/editor/RawContactEditorView;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 710
    :cond_3d
    iget-object v3, v4, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v6, 0xf

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/contacts/editor/RawContactEditorView;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3e

    iget-object v3, v4, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v6, 0xf

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/contacts/editor/RawContactEditorView;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 711
    :cond_3e
    iget-object v3, v4, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v6, 0x10

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/contacts/editor/RawContactEditorView;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3f

    iget-object v3, v4, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v6, 0x10

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/contacts/editor/RawContactEditorView;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 712
    :cond_3f
    iget-object v3, v4, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v6, 0x11

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/contacts/editor/RawContactEditorView;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_40

    iget-object v3, v4, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v6, 0x11

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/contacts/editor/RawContactEditorView;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 713
    :cond_40
    iget-object v3, v4, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v6, 0x12

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/contacts/editor/RawContactEditorView;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_41

    iget-object v3, v4, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v6, 0x12

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/contacts/editor/RawContactEditorView;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 714
    :cond_41
    iget-object v3, v4, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v6, 0x13

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/contacts/editor/RawContactEditorView;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_42

    iget-object v3, v4, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v6, 0x13

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/contacts/editor/RawContactEditorView;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 715
    :cond_42
    iget-object v3, v4, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v6, 0x14

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/contacts/editor/RawContactEditorView;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_43

    iget-object v3, v4, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v6, 0x14

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/contacts/editor/RawContactEditorView;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 730
    :cond_43
    :goto_9
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isEnabled()Z

    move-result v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Lcom/android/contacts/editor/KindSectionView;->setEnabled(Z)V

    .line 731
    const/4 v3, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v4, v1, v3, v2}, Lcom/android/contacts/editor/KindSectionView;->setState(Lcom/android/contacts/model/DataKind;Lcom/android/contacts/model/EntityDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V

    .line 732
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_5

    .line 716
    :cond_44
    const-string v3, "com.android.nttdocomo"

    const-string v6, "account_type"

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_43

    .line 717
    iget-object v3, v4, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v6, 0x9

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/contacts/editor/RawContactEditorView;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_45

    iget-object v3, v4, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v6, 0x9

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/contacts/editor/RawContactEditorView;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 718
    :cond_45
    iget-object v3, v4, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v6, 0xa

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/contacts/editor/RawContactEditorView;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_46

    iget-object v3, v4, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v6, 0xa

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/contacts/editor/RawContactEditorView;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 719
    :cond_46
    iget-object v3, v4, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v6, 0xb

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/contacts/editor/RawContactEditorView;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_47

    iget-object v3, v4, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v6, 0xb

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/contacts/editor/RawContactEditorView;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 720
    :cond_47
    iget-object v3, v4, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v6, 0xc

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/contacts/editor/RawContactEditorView;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_48

    iget-object v3, v4, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v6, 0xc

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/contacts/editor/RawContactEditorView;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 721
    :cond_48
    iget-object v3, v4, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v6, 0xd

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/contacts/editor/RawContactEditorView;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_49

    iget-object v3, v4, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v6, 0xd

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/contacts/editor/RawContactEditorView;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 722
    :cond_49
    iget-object v3, v4, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v6, 0xe

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/contacts/editor/RawContactEditorView;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4a

    iget-object v3, v4, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v6, 0xe

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/contacts/editor/RawContactEditorView;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 723
    :cond_4a
    iget-object v3, v4, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v6, 0xf

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/contacts/editor/RawContactEditorView;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4b

    iget-object v3, v4, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v6, 0xf

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/contacts/editor/RawContactEditorView;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 724
    :cond_4b
    iget-object v3, v4, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v6, 0x10

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/contacts/editor/RawContactEditorView;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4c

    iget-object v3, v4, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v6, 0x10

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/contacts/editor/RawContactEditorView;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 725
    :cond_4c
    iget-object v3, v4, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v6, 0x11

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/contacts/editor/RawContactEditorView;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4d

    iget-object v3, v4, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v6, 0x11

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/contacts/editor/RawContactEditorView;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 726
    :cond_4d
    iget-object v3, v4, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v6, 0x12

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/contacts/editor/RawContactEditorView;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4e

    iget-object v3, v4, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v6, 0x12

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/contacts/editor/RawContactEditorView;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 727
    :cond_4e
    iget-object v3, v4, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v6, 0x13

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/contacts/editor/RawContactEditorView;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4f

    iget-object v3, v4, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v6, 0x13

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/contacts/editor/RawContactEditorView;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 728
    :cond_4f
    iget-object v3, v4, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v6, 0x14

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/contacts/editor/RawContactEditorView;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_43

    iget-object v3, v4, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v6, 0x14

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/contacts/editor/RawContactEditorView;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_9

    .line 735
    .end local v24    # "section":Lcom/android/contacts/editor/KindSectionView;
    :cond_50
    iget-object v3, v4, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    if-eqz v3, :cond_c

    .line 736
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f040176

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    const/4 v8, 0x0

    invoke-virtual {v3, v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v24

    check-cast v24, Lcom/android/contacts/editor/KindSectionView;

    .line 738
    .restart local v24    # "section":Lcom/android/contacts/editor/KindSectionView;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v6, "CscFeature_Contact_BlockFormatMyProfile"

    invoke-virtual {v3, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_51

    sget-boolean v3, Lcom/android/contacts/editor/RawContactEditorView;->mAAB_profile:Z

    if-eqz v3, :cond_51

    const-string v3, "vnd.android.cursor.item/phone_v2"

    iget-object v6, v4, Lcom/android/contacts/model/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_51

    .line 741
    const/4 v3, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Lcom/android/contacts/editor/KindSectionView;->setEnabled(Z)V

    .line 742
    const/4 v3, 0x1

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v4, v1, v3, v2}, Lcom/android/contacts/editor/KindSectionView;->setState(Lcom/android/contacts/model/DataKind;Lcom/android/contacts/model/EntityDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V

    .line 743
    const/4 v3, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Lcom/android/contacts/editor/KindSectionView;->setDeleteIconEnable(Z)V

    .line 749
    :goto_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_5

    .line 745
    :cond_51
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isEnabled()Z

    move-result v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Lcom/android/contacts/editor/KindSectionView;->setEnabled(Z)V

    .line 746
    const/4 v3, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v4, v1, v3, v2}, Lcom/android/contacts/editor/KindSectionView;->setState(Lcom/android/contacts/model/DataKind;Lcom/android/contacts/model/EntityDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V

    goto :goto_a

    .line 754
    .end local v4    # "kind":Lcom/android/contacts/model/DataKind;
    .end local v22    # "mimeType":Ljava/lang/String;
    .end local v24    # "section":Lcom/android/contacts/editor/KindSectionView;
    :cond_52
    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/editor/RawContactEditorView;->updatePhoneticNameVisibility()V

    .line 756
    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/editor/RawContactEditorView;->addToDefaultGroupIfNeeded()V

    .line 759
    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/editor/RawContactEditorView;->addToICEGroupIfNeeded()V

    .line 761
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mAddFieldButton:Landroid/widget/Button;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isEnabled()Z

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 763
    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/editor/RawContactEditorView;->IsNeedlessAddFieldButton()Z

    move-result v3

    if-eqz v3, :cond_53

    .line 764
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mAddFieldButton:Landroid/widget/Button;

    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 767
    :cond_53
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    check-cast v3, Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v15

    .line 768
    .local v15, "intentAction":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mName:Lcom/android/contacts/editor/StructuredNameEditorView;

    invoke-virtual {v3}, Landroid/view/View;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_54

    const-string v3, "android.intent.action.EDIT"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_54

    .line 769
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mName:Lcom/android/contacts/editor/StructuredNameEditorView;

    invoke-virtual {v3}, Lcom/android/contacts/editor/TextFieldsEditorView;->requestFocusForFirstEditField()V

    .line 771
    :cond_54
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    .line 772
    .local v11, "config":Landroid/content/res/Configuration;
    iget v3, v11, Landroid/content/res/Configuration;->keyboard:I

    const/4 v6, 0x3

    if-ne v3, v6, :cond_55

    iget v3, v11, Landroid/content/res/Configuration;->navigation:I

    const/4 v6, 0x2

    if-ne v3, v6, :cond_55

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v6, "CscFeature_Contact_EnableBackupSvc4Ctc"

    invoke-virtual {v3, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_55

    .line 776
    new-instance v3, Lcom/android/contacts/editor/RawContactEditorView$FocusOrderChangeListener;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v6}, Lcom/android/contacts/editor/RawContactEditorView$FocusOrderChangeListener;-><init>(Lcom/android/contacts/editor/RawContactEditorView;Lcom/android/contacts/editor/RawContactEditorView$1;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mFocusOrderChangeListener:Lcom/android/contacts/editor/KindSectionView$FocusOrderChangeListener;

    .line 777
    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/editor/RawContactEditorView;->setFocusOrder()V

    .line 781
    :cond_55
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v6, "CscFeature_Contact_EnableAutoGenerationPhoneticName"

    invoke-virtual {v3, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    const/4 v6, 0x1

    if-ne v3, v6, :cond_0

    .line 784
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mPhoneticName:Lcom/android/contacts/editor/PhoneticNameEditorView;

    invoke-virtual {v3}, Lcom/android/contacts/editor/PhoneticNameEditorView;->hasData()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 785
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mPhoneticNameAdded:Z

    goto/16 :goto_0
.end method

.method public setVibration(Ljava/lang/String;)V
    .locals 1
    .param p1, "vibration"    # Ljava/lang/String;

    .prologue
    .line 1077
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mVibrationEditorView:Lcom/sec/android/app/contacts/editor/VibrationEditorView;

    if-eqz v0, :cond_0

    .line 1078
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mVibrationEditorView:Lcom/sec/android/app/contacts/editor/VibrationEditorView;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/contacts/editor/VibrationEditorView;->setVibration(Ljava/lang/String;)V

    .line 1080
    :cond_0
    return-void
.end method

.method public setVibrationVisibility(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 1067
    iput-boolean p1, p0, Lcom/android/contacts/editor/RawContactEditorView;->mVibrationVisible:Z

    .line 1068
    return-void
.end method

.method public updateSelectedGroup(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1123
    .local p1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .local p2, "titles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMembershipView:Lcom/android/contacts/editor/GroupMembershipView;

    if-eqz v0, :cond_0

    .line 1124
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMembershipView:Lcom/android/contacts/editor/GroupMembershipView;

    invoke-virtual {v0, p1, p2}, Lcom/android/contacts/editor/GroupMembershipView;->updateSelectedGroup(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1126
    :cond_0
    return-void
.end method
