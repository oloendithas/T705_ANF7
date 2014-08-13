.class public Lcom/android/contacts/quickcontact/QuickContactListFragment;
.super Landroid/app/Fragment;
.source "QuickContactListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/quickcontact/QuickContactListFragment$Listener;
    }
.end annotation


# static fields
.field private static final CALL_MIME_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/phone_v2"

.field private static isVoLTEEnabled:Z


# instance fields
.field private mActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/quickcontact/Action;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDefaultCountryIso:Ljava/lang/String;

.field private mFragmentContainer:Landroid/widget/LinearLayout;

.field private mHasPhone:Z

.field private mHasSms:Z

.field private mImsLowSignalHelper:Lcom/sec/android/app/contacts/util/ImsLowSignalHelper;

.field private mIsEasyMode:Z

.field private mListHoverManager:Lcom/sec/android/app/contacts/ListHoverManager;

.field private mListView:Landroid/widget/ListView;

.field private mListener:Lcom/android/contacts/quickcontact/QuickContactListFragment$Listener;

.field private final mOutsideClickListener:Landroid/view/View$OnClickListener;

.field protected final mPrimaryActionClickListener:Landroid/view/View$OnClickListener;

.field protected final mPrimaryActionLongClickListener:Landroid/view/View$OnLongClickListener;

.field protected final mSecondaryActionClickListener:Landroid/view/View$OnClickListener;

.field mVoLTEStateTracker:Lcom/android/contacts/VoLTEStateTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/contacts/quickcontact/QuickContactListFragment;->isVoLTEEnabled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 109
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 580
    new-instance v0, Lcom/android/contacts/quickcontact/QuickContactListFragment$2;

    invoke-direct {v0, p0}, Lcom/android/contacts/quickcontact/QuickContactListFragment$2;-><init>(Lcom/android/contacts/quickcontact/QuickContactListFragment;)V

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment;->mPrimaryActionClickListener:Landroid/view/View$OnClickListener;

    .line 602
    new-instance v0, Lcom/android/contacts/quickcontact/QuickContactListFragment$3;

    invoke-direct {v0, p0}, Lcom/android/contacts/quickcontact/QuickContactListFragment$3;-><init>(Lcom/android/contacts/quickcontact/QuickContactListFragment;)V

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment;->mPrimaryActionLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 612
    new-instance v0, Lcom/android/contacts/quickcontact/QuickContactListFragment$4;

    invoke-direct {v0, p0}, Lcom/android/contacts/quickcontact/QuickContactListFragment$4;-><init>(Lcom/android/contacts/quickcontact/QuickContactListFragment;)V

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment;->mSecondaryActionClickListener:Landroid/view/View$OnClickListener;

    .line 620
    new-instance v0, Lcom/android/contacts/quickcontact/QuickContactListFragment$5;

    invoke-direct {v0, p0}, Lcom/android/contacts/quickcontact/QuickContactListFragment$5;-><init>(Lcom/android/contacts/quickcontact/QuickContactListFragment;)V

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment;->mOutsideClickListener:Landroid/view/View$OnClickListener;

    .line 110
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->setRetainInstance(Z)V

    .line 111
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->makeFeature(Landroid/content/Context;)V

    .line 113
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/quickcontact/QuickContactListFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/quickcontact/QuickContactListFragment;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment;->mActions:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/contacts/quickcontact/QuickContactListFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/quickcontact/QuickContactListFragment;

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment;->mIsEasyMode:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/contacts/quickcontact/QuickContactListFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/quickcontact/QuickContactListFragment;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/contacts/quickcontact/QuickContactListFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/quickcontact/QuickContactListFragment;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment;->mDefaultCountryIso:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400()Z
    .locals 1

    .prologue
    .line 82
    sget-boolean v0, Lcom/android/contacts/quickcontact/QuickContactListFragment;->isVoLTEEnabled:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/contacts/quickcontact/QuickContactListFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/quickcontact/QuickContactListFragment;

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment;->mHasPhone:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/contacts/quickcontact/QuickContactListFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/quickcontact/QuickContactListFragment;

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment;->mHasSms:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/contacts/quickcontact/QuickContactListFragment;)Lcom/sec/android/app/contacts/ListHoverManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/quickcontact/QuickContactListFragment;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment;->mListHoverManager:Lcom/sec/android/app/contacts/ListHoverManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/contacts/quickcontact/QuickContactListFragment;)Lcom/android/contacts/quickcontact/QuickContactListFragment$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/quickcontact/QuickContactListFragment;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment;->mListener:Lcom/android/contacts/quickcontact/QuickContactListFragment$Listener;

    return-object v0
.end method

.method private configureAdapter()V
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment;->mActions:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment;->mListView:Landroid/widget/ListView;

    if-nez v0, :cond_1

    .line 577
    :cond_0
    :goto_0
    return-void

    .line 178
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isSupportHoveringUI(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 179
    new-instance v0, Lcom/sec/android/app/contacts/ListHoverManager;

    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/android/app/contacts/ListHoverManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment;->mListHoverManager:Lcom/sec/android/app/contacts/ListHoverManager;

    .line 182
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;

    invoke-direct {v1, p0}, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;-><init>(Lcom/android/contacts/quickcontact/QuickContactListFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 117
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 118
    iput-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment;->mContext:Landroid/content/Context;

    .line 119
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isEasyMode(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment;->mIsEasyMode:Z

    .line 120
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment;->mHasPhone:Z

    .line 121
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isSmsIntentRegistered(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment;->mHasSms:Z

    .line 122
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 146
    const v0, 0x7f0401c0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment;->mFragmentContainer:Landroid/widget/LinearLayout;

    .line 148
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment;->mFragmentContainer:Landroid/widget/LinearLayout;

    const v1, 0x7f090096

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment;->mListView:Landroid/widget/ListView;

    .line 149
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 151
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/ContactsUtils;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment;->mDefaultCountryIso:Ljava/lang/String;

    .line 153
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment;->mFragmentContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment;->mOutsideClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    invoke-direct {p0}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->configureAdapter()V

    .line 162
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment;->mFragmentContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 126
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 132
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 136
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 142
    return-void
.end method

.method public setActions(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/quickcontact/Action;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 166
    .local p1, "actions":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/quickcontact/Action;>;"
    iput-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment;->mActions:Ljava/util/List;

    .line 167
    invoke-direct {p0}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->configureAdapter()V

    .line 168
    return-void
.end method

.method public setListener(Lcom/android/contacts/quickcontact/QuickContactListFragment$Listener;)V
    .locals 0
    .param p1, "value"    # Lcom/android/contacts/quickcontact/QuickContactListFragment$Listener;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment;->mListener:Lcom/android/contacts/quickcontact/QuickContactListFragment$Listener;

    .line 172
    return-void
.end method

.method public updateVolteImage(Z)V
    .locals 2
    .param p1, "isVolteEnabled"    # Z

    .prologue
    .line 635
    const-string v0, "QuickContactListFragment"

    const-string v1, "handleIMSRegistrationEvent"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    sput-boolean p1, Lcom/android/contacts/quickcontact/QuickContactListFragment;->isVoLTEEnabled:Z

    .line 637
    invoke-direct {p0}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->configureAdapter()V

    .line 639
    return-void
.end method
