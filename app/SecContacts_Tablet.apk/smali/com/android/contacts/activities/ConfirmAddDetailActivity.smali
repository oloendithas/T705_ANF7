.class public Lcom/android/contacts/activities/ConfirmAddDetailActivity;
.super Landroid/app/Activity;
.source "ConfirmAddDetailActivity.java"

# interfaces
.implements Lcom/android/contacts/util/DialogManager$DialogShowingViewActivity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/activities/ConfirmAddDetailActivity$PersistTask;,
        Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryHandler;,
        Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryEntitiesTask;,
        Lcom/android/contacts/activities/ConfirmAddDetailActivity$ExtraInfoQuery;,
        Lcom/android/contacts/activities/ConfirmAddDetailActivity$PhotoQuery;,
        Lcom/android/contacts/activities/ConfirmAddDetailActivity$ContactQuery;
    }
.end annotation


# static fields
.field private static final LEGACY_CONTACTS_AUTHORITY:Ljava/lang/String; = "contacts"

.field private static final TAG:Ljava/lang/String;

.field private static final TOKEN_CONTACT_INFO:I = 0x0

.field private static final TOKEN_DISAMBIGUATION_QUERY:I = 0x2

.field private static final TOKEN_EXTRA_INFO_QUERY:I = 0x3

.field private static final TOKEN_PHOTO_QUERY:I = 0x1

.field private static final sMimeTypePriorityList:[Ljava/lang/String;

.field private static sProgressDialog:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/ProgressDialog;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAccountTypeManager:Lcom/android/contacts/model/AccountTypeManager;

.field private final mCancelButtonClickListener:Landroid/view/View$OnClickListener;

.field private mContactId:J

.field private mContactUri:Landroid/net/Uri;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private final mDetailsButtonClickListener:Landroid/view/View$OnClickListener;

.field private final mDialogManager:Lcom/android/contacts/util/DialogManager;

.field private mDisplayName:Ljava/lang/String;

.field private mDisplayNameView:Landroid/widget/TextView;

.field private final mDoneButtonClickListener:Landroid/view/View$OnClickListener;

.field private mEditableAccountType:Lcom/android/contacts/model/AccountType;

.field private mEditorContainerView:Landroid/view/ViewGroup;

.field private mEntityDeltaList:Lcom/android/contacts/model/EntityDeltaList;

.field private mHasPhoto:Z

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsReadyOnly:Z

.field private mMimetype:Ljava/lang/String;

.field private mPhotoView:Landroid/widget/ImageView;

.field private mQueryHandler:Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryHandler;

.field private mReadOnlyWarningView:Landroid/widget/TextView;

.field private mRootView:Landroid/view/View;

.field private mState:Lcom/android/contacts/model/EntityDelta;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 92
    const-class v0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->TAG:Ljava/lang/String;

    .line 176
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "vnd.android.cursor.item/nickname"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "vnd.android.cursor.item/email_v2"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "vnd.android.cursor.item/im"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "vnd.android.cursor.item/postal-address_v2"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "vnd.android.cursor.item/phone_v2"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->sMimeTypePriorityList:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 89
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 119
    const-string v0, "vnd.android.cursor.item/phone_v2"

    iput-object v0, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mMimetype:Ljava/lang/String;

    .line 124
    new-instance v0, Lcom/android/contacts/util/DialogManager;

    invoke-direct {v0, p0}, Lcom/android/contacts/util/DialogManager;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mDialogManager:Lcom/android/contacts/util/DialogManager;

    .line 185
    new-instance v0, Lcom/android/contacts/activities/ConfirmAddDetailActivity$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/ConfirmAddDetailActivity$1;-><init>(Lcom/android/contacts/activities/ConfirmAddDetailActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mDetailsButtonClickListener:Landroid/view/View$OnClickListener;

    .line 196
    new-instance v0, Lcom/android/contacts/activities/ConfirmAddDetailActivity$2;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/ConfirmAddDetailActivity$2;-><init>(Lcom/android/contacts/activities/ConfirmAddDetailActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mDoneButtonClickListener:Landroid/view/View$OnClickListener;

    .line 203
    new-instance v0, Lcom/android/contacts/activities/ConfirmAddDetailActivity$3;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/ConfirmAddDetailActivity$3;-><init>(Lcom/android/contacts/activities/ConfirmAddDetailActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mCancelButtonClickListener:Landroid/view/View$OnClickListener;

    .line 703
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/activities/ConfirmAddDetailActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/ConfirmAddDetailActivity;

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mIsReadyOnly:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/contacts/activities/ConfirmAddDetailActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/activities/ConfirmAddDetailActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->onSaveCompleted(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/contacts/activities/ConfirmAddDetailActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/activities/ConfirmAddDetailActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->startDisambiguationQuery(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/contacts/activities/ConfirmAddDetailActivity;JLandroid/net/Uri;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/activities/ConfirmAddDetailActivity;
    .param p1, "x1"    # J
    .param p3, "x2"    # Landroid/net/Uri;
    .param p4, "x3"    # Z

    .prologue
    .line 89
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->startPhotoQuery(JLandroid/net/Uri;Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/contacts/activities/ConfirmAddDetailActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/activities/ConfirmAddDetailActivity;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->setDisplayName()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/contacts/activities/ConfirmAddDetailActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/activities/ConfirmAddDetailActivity;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->onLoadDataFinished()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/contacts/activities/ConfirmAddDetailActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/activities/ConfirmAddDetailActivity;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->startExtraInfoQuery()V

    return-void
.end method

.method static synthetic access$1500()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->sMimeTypePriorityList:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/contacts/activities/ConfirmAddDetailActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/activities/ConfirmAddDetailActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->setExtraInfoField(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1702(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0
    .param p0, "x0"    # Ljava/lang/ref/WeakReference;

    .prologue
    .line 89
    sput-object p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->sProgressDialog:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic access$1800()V
    .locals 0

    .prologue
    .line 89
    invoke-static {}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->dismissProgressDialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/contacts/activities/ConfirmAddDetailActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/activities/ConfirmAddDetailActivity;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->doSaveAction()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/contacts/activities/ConfirmAddDetailActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/activities/ConfirmAddDetailActivity;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->bindEditor()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/contacts/activities/ConfirmAddDetailActivity;)Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/ConfirmAddDetailActivity;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mQueryHandler:Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryHandler;

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/contacts/activities/ConfirmAddDetailActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/activities/ConfirmAddDetailActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mHasPhoto:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/contacts/activities/ConfirmAddDetailActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/ConfirmAddDetailActivity;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mPhotoView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/contacts/activities/ConfirmAddDetailActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/ConfirmAddDetailActivity;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/contacts/activities/ConfirmAddDetailActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/activities/ConfirmAddDetailActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mDisplayName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/contacts/activities/ConfirmAddDetailActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/contacts/activities/ConfirmAddDetailActivity;

    .prologue
    .line 89
    iget-wide v0, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mContactId:J

    return-wide v0
.end method

.method static synthetic access$902(Lcom/android/contacts/activities/ConfirmAddDetailActivity;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/activities/ConfirmAddDetailActivity;
    .param p1, "x1"    # J

    .prologue
    .line 89
    iput-wide p1, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mContactId:J

    return-wide p1
.end method

.method private bindEditor()V
    .locals 10

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 599
    iget-boolean v4, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mHasPhoto:Z

    if-nez v4, :cond_0

    .line 600
    iget-object v4, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mPhotoView:Landroid/widget/ImageView;

    iget-wide v5, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mContactId:J

    invoke-static {v8, v7, v5, v6}, Lcom/android/contacts/ContactPhotoManager;->getDefaultAvatarResId(ZZJ)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 603
    :cond_0
    iget-object v4, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mEntityDeltaList:Lcom/android/contacts/model/EntityDeltaList;

    if-nez v4, :cond_2

    .line 638
    :cond_1
    :goto_0
    return-void

    .line 609
    :cond_2
    iget-object v4, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mEditableAccountType:Lcom/android/contacts/model/AccountType;

    if-nez v4, :cond_3

    .line 610
    iput-boolean v8, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mIsReadyOnly:Z

    .line 611
    iget-object v4, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mReadOnlyWarningView:Landroid/widget/TextView;

    const v5, 0x7f0e018e

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 612
    iget-object v4, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mReadOnlyWarningView:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 613
    iget-object v4, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mEditorContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    .line 614
    const v4, 0x7f090127

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    .line 616
    invoke-direct {p0}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->onLoadDataFinished()V

    goto :goto_0

    .line 621
    :cond_3
    iget-object v4, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mEditableAccountType:Lcom/android/contacts/model/AccountType;

    invoke-virtual {v4}, Lcom/android/contacts/model/AccountType;->getSortedDataKinds()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/model/DataKind;

    .line 623
    .local v2, "kind":Lcom/android/contacts/model/DataKind;
    iget-boolean v4, v2, Lcom/android/contacts/model/DataKind;->editable:Z

    if-eqz v4, :cond_4

    .line 624
    iget-object v4, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mMimetype:Ljava/lang/String;

    iget-object v5, v2, Lcom/android/contacts/model/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 626
    iget-object v4, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mState:Lcom/android/contacts/model/EntityDelta;

    iget-object v5, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mMimetype:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/contacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 628
    iget-object v4, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mState:Lcom/android/contacts/model/EntityDelta;

    iget-object v5, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mMimetype:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/contacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 630
    .local v3, "valuesDelta":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    invoke-virtual {v3}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 631
    invoke-virtual {v3}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isInsert()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 632
    iget-object v4, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mState:Lcom/android/contacts/model/EntityDelta;

    invoke-direct {p0, v2, v3, v4}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->inflateEditorView(Lcom/android/contacts/model/DataKind;Lcom/android/contacts/model/EntityDelta$ValuesDelta;Lcom/android/contacts/model/EntityDelta;)V

    goto/16 :goto_0
.end method

.method private static dismissProgressDialog()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 807
    sget-object v1, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->sProgressDialog:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_1

    move-object v0, v2

    .line 808
    .local v0, "dialog":Landroid/app/ProgressDialog;
    :goto_0
    if-eqz v0, :cond_0

    .line 809
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 811
    :cond_0
    sput-object v2, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->sProgressDialog:Ljava/lang/ref/WeakReference;

    .line 812
    return-void

    .line 807
    .end local v0    # "dialog":Landroid/app/ProgressDialog;
    :cond_1
    sget-object v1, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->sProgressDialog:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ProgressDialog;

    move-object v0, v1

    goto :goto_0
.end method

.method private doSaveAction()V
    .locals 4

    .prologue
    .line 692
    new-instance v0, Lcom/android/contacts/activities/ConfirmAddDetailActivity$PersistTask;

    iget-object v1, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mAccountTypeManager:Lcom/android/contacts/model/AccountTypeManager;

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/activities/ConfirmAddDetailActivity$PersistTask;-><init>(Lcom/android/contacts/activities/ConfirmAddDetailActivity;Lcom/android/contacts/model/AccountTypeManager;)V

    .line 693
    .local v0, "task":Lcom/android/contacts/activities/ConfirmAddDetailActivity$PersistTask;
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/android/contacts/model/EntityDeltaList;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mEntityDeltaList:Lcom/android/contacts/model/EntityDeltaList;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 694
    return-void
.end method

.method private inflateEditorView(Lcom/android/contacts/model/DataKind;Lcom/android/contacts/model/EntityDelta$ValuesDelta;Lcom/android/contacts/model/EntityDelta;)V
    .locals 7
    .param p1, "dataKind"    # Lcom/android/contacts/model/DataKind;
    .param p2, "valuesDelta"    # Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .param p3, "state"    # Lcom/android/contacts/model/EntityDelta;

    .prologue
    const/4 v4, 0x0

    .line 646
    iget-object v1, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mInflater:Landroid/view/LayoutInflater;

    iget v2, p1, Lcom/android/contacts/model/DataKind;->editorLayoutResourceId:I

    iget-object v3, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mEditorContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 649
    .local v6, "view":Landroid/view/View;
    instance-of v1, v6, Lcom/android/contacts/editor/Editor;

    if-eqz v1, :cond_0

    move-object v0, v6

    .line 650
    check-cast v0, Lcom/android/contacts/editor/Editor;

    .line 652
    .local v0, "editor":Lcom/android/contacts/editor/Editor;
    invoke-interface {v0, v4}, Lcom/android/contacts/editor/Editor;->setDeletable(Z)V

    .line 653
    new-instance v5, Lcom/android/contacts/editor/ViewIdGenerator;

    invoke-direct {v5}, Lcom/android/contacts/editor/ViewIdGenerator;-><init>()V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/android/contacts/editor/Editor;->setValues(Lcom/android/contacts/model/DataKind;Lcom/android/contacts/model/EntityDelta$ValuesDelta;Lcom/android/contacts/model/EntityDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V

    .line 656
    .end local v0    # "editor":Lcom/android/contacts/editor/Editor;
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mEditorContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 657
    return-void
.end method

.method private onLoadDataFinished()V
    .locals 2

    .prologue
    .line 684
    iget-object v0, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mRootView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 685
    return-void
.end method

.method private onSaveCompleted(Z)V
    .locals 3
    .param p1, "success"    # Z

    .prologue
    .line 821
    if-eqz p1, :cond_0

    .line 822
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mContactUri:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 823
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 827
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 828
    return-void

    .line 825
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setResult(I)V

    goto :goto_0
.end method

.method private resetAsyncQueryHandler()V
    .locals 2

    .prologue
    .line 288
    new-instance v0, Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryHandler;

    iget-object v1, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryHandler;-><init>(Lcom/android/contacts/activities/ConfirmAddDetailActivity;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mQueryHandler:Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryHandler;

    .line 289
    return-void
.end method

.method private setDisplayName()V
    .locals 2

    .prologue
    .line 665
    iget-object v0, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mDisplayNameView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 666
    return-void
.end method

.method private setExtraInfoField(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 673
    const v1, 0x7f090123

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 674
    .local v0, "extraTextView":Landroid/widget/TextView;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 675
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 676
    return-void
.end method

.method private startContactQuery(Landroid/net/Uri;Z)V
    .locals 8
    .param p1, "contactUri"    # Landroid/net/Uri;
    .param p2, "resetQueryHandler"    # Z

    .prologue
    const/4 v5, 0x0

    .line 298
    if-eqz p2, :cond_0

    .line 299
    invoke-direct {p0}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->resetAsyncQueryHandler()V

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mQueryHandler:Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryHandler;

    const/4 v1, 0x0

    sget-object v4, Lcom/android/contacts/activities/ConfirmAddDetailActivity$ContactQuery;->COLUMNS:[Ljava/lang/String;

    move-object v2, p1

    move-object v3, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    return-void
.end method

.method private startDisambiguationQuery(Ljava/lang/String;)V
    .locals 12
    .param p1, "contactDisplayName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    const/4 v7, 0x0

    const/4 v11, 0x1

    .line 332
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v8

    .line 333
    .local v8, "builder":Landroid/net/Uri$Builder;
    const-string v0, "limit"

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v0, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 334
    invoke-virtual {v8}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 336
    .local v3, "uri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mQueryHandler:Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryHandler;

    new-array v4, v11, [Ljava/lang/String;

    const-string v5, "_id"

    aput-object v5, v4, v7

    const-string v5, "display_name = ? and photo_id is null and _id <> ?"

    new-array v6, v1, [Ljava/lang/String;

    aput-object p1, v6, v7

    iget-wide v9, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mContactId:J

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v11

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    return-void
.end method

.method private startExtraInfoQuery()V
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 347
    iget-object v0, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mQueryHandler:Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryHandler;

    const/4 v1, 0x3

    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/contacts/activities/ConfirmAddDetailActivity$ExtraInfoQuery;->COLUMNS:[Ljava/lang/String;

    const-string v5, "contact_id = ?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    iget-wide v8, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mContactId:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    return-void
.end method

.method private startPhotoQuery(JLandroid/net/Uri;Z)V
    .locals 8
    .param p1, "photoId"    # J
    .param p3, "lookupKey"    # Landroid/net/Uri;
    .param p4, "resetQueryHandler"    # Z

    .prologue
    const/4 v5, 0x0

    .line 314
    if-eqz p4, :cond_0

    .line 315
    invoke-direct {p0}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->resetAsyncQueryHandler()V

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mQueryHandler:Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryHandler;

    const/4 v1, 0x1

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/android/contacts/activities/ConfirmAddDetailActivity$PhotoQuery;->COLUMNS:[Ljava/lang/String;

    move-object v2, p3

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    return-void
.end method


# virtual methods
.method public findEditableRawContact()V
    .locals 7

    .prologue
    .line 566
    iget-object v5, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mEntityDeltaList:Lcom/android/contacts/model/EntityDeltaList;

    if-nez v5, :cond_1

    .line 580
    :cond_0
    :goto_0
    return-void

    .line 569
    :cond_1
    iget-object v5, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mEntityDeltaList:Lcom/android/contacts/model/EntityDeltaList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/model/EntityDelta;

    .line 570
    .local v3, "state":Lcom/android/contacts/model/EntityDelta;
    invoke-virtual {v3}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v5

    const-string v6, "account_type"

    invoke-virtual {v5, v6}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 571
    .local v0, "accountType":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v5

    const-string v6, "data_set"

    invoke-virtual {v5, v6}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 572
    .local v1, "dataSet":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mAccountTypeManager:Lcom/android/contacts/model/AccountTypeManager;

    invoke-virtual {v5, v0, v1}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/AccountType;

    move-result-object v4

    .line 574
    .local v4, "type":Lcom/android/contacts/model/AccountType;
    invoke-virtual {v4}, Lcom/android/contacts/model/AccountType;->areContactsWritable()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 575
    iput-object v4, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mEditableAccountType:Lcom/android/contacts/model/AccountType;

    .line 576
    iput-object v3, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mState:Lcom/android/contacts/model/EntityDelta;

    goto :goto_0
.end method

.method public getDialogManager()Lcom/android/contacts/util/DialogManager;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mDialogManager:Lcom/android/contacts/util/DialogManager;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/16 v6, 0x400

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 213
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 215
    const-string v2, "layout_inflater"

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    iput-object v2, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mInflater:Landroid/view/LayoutInflater;

    .line 216
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mContentResolver:Landroid/content/ContentResolver;

    .line 218
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 219
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mContactUri:Landroid/net/Uri;

    .line 221
    iget-object v2, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mContactUri:Landroid/net/Uri;

    if-nez v2, :cond_0

    .line 222
    invoke-virtual {p0, v4}, Landroid/app/Activity;->setResult(I)V

    .line 223
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 226
    :cond_0
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 227
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 228
    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 229
    const-string v2, "vnd.android.cursor.item/phone_v2"

    iput-object v2, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mMimetype:Ljava/lang/String;

    .line 237
    :cond_1
    :goto_0
    invoke-static {p0}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mAccountTypeManager:Lcom/android/contacts/model/AccountTypeManager;

    .line 239
    const v2, 0x7f04003d

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setContentView(I)V

    .line 241
    const v2, 0x7f090121

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mRootView:Landroid/view/View;

    .line 242
    const v2, 0x7f090125

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mReadOnlyWarningView:Landroid/widget/TextView;

    .line 245
    const v2, 0x7f090124

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mDetailsButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    const v2, 0x7f090127

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mDoneButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 251
    const v2, 0x7f090106

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mCancelButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 254
    const v2, 0x7f09010a

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mDisplayNameView:Landroid/widget/TextView;

    .line 255
    const v2, 0x7f090109

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mPhotoView:Landroid/widget/ImageView;

    .line 256
    iput-boolean v4, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mHasPhoto:Z

    .line 257
    const v2, 0x7f090126

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mEditorContainerView:Landroid/view/ViewGroup;

    .line 260
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v6, v6}, Landroid/view/Window;->setFlags(II)V

    .line 261
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x2000

    invoke-virtual {v2, v3}, Landroid/view/Window;->addPrivateFlags(I)V

    .line 263
    iget-object v2, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mContactUri:Landroid/net/Uri;

    invoke-direct {p0, v2, v5}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->startContactQuery(Landroid/net/Uri;Z)V

    .line 265
    new-instance v2, Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryEntitiesTask;

    invoke-direct {v2, p0}, Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryEntitiesTask;-><init>(Lcom/android/contacts/activities/ConfirmAddDetailActivity;)V

    new-array v3, v5, [Landroid/content/Intent;

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 266
    return-void

    .line 230
    :cond_2
    const-string v2, "email"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 231
    const-string v2, "vnd.android.cursor.item/email_v2"

    iput-object v2, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mMimetype:Ljava/lang/String;

    goto/16 :goto_0

    .line 233
    :cond_3
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Error: No valid mimetype found in intent extras"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 275
    invoke-static {p1}, Lcom/android/contacts/util/DialogManager;->isManagedId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mDialogManager:Lcom/android/contacts/util/DialogManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/contacts/util/DialogManager;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 279
    :goto_0
    return-object v0

    .line 278
    :cond_0
    sget-object v0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown dialog requested, id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", args: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 798
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 800
    invoke-static {}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->dismissProgressDialog()V

    .line 801
    return-void
.end method

.method public parseExtras()V
    .locals 3

    .prologue
    .line 583
    iget-object v1, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mEditableAccountType:Lcom/android/contacts/model/AccountType;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mState:Lcom/android/contacts/model/EntityDelta;

    if-nez v1, :cond_1

    .line 592
    :cond_0
    :goto_0
    return-void

    .line 587
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 588
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 590
    iget-object v1, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mEditableAccountType:Lcom/android/contacts/model/AccountType;

    iget-object v2, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mState:Lcom/android/contacts/model/EntityDelta;

    invoke-static {p0, v1, v2, v0}, Lcom/android/contacts/model/EntityModifier;->parseExtras(Landroid/content/Context;Lcom/android/contacts/model/AccountType;Lcom/android/contacts/model/EntityDelta;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public setEntityDeltaList(Lcom/android/contacts/model/EntityDeltaList;)V
    .locals 0
    .param p1, "entityList"    # Lcom/android/contacts/model/EntityDeltaList;

    .prologue
    .line 562
    iput-object p1, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mEntityDeltaList:Lcom/android/contacts/model/EntityDeltaList;

    .line 563
    return-void
.end method
