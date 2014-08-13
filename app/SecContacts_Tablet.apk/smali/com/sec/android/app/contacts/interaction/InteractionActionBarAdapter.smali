.class public Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;
.super Ljava/lang/Object;
.source "InteractionActionBarAdapter.java"

# interfaces
.implements Landroid/widget/SearchView$OnCloseListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$ActionSpinnerAdapter;,
        Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$MyTabListener;,
        Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;,
        Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$Listener;
    }
.end annotation


# static fields
.field private static final ACTION_CONTACT:Ljava/lang/String; = "contacts"

.field private static final ACTION_FAVORITES:Ljava/lang/String; = "favorites"

.field private static final ACTION_GROUPS:Ljava/lang/String; = "groups"

.field private static final ACTION_LOGS:Ljava/lang/String; = "logs"

.field private static final ACTION_RCSE:Ljava/lang/String; = "rcse"

.field private static final KEY_CURRENT_TAB:Ljava/lang/String; = "currentTab"

.field private static final PERSISTENT_LAST_TAB:Ljava/lang/String; = "interactionActionBarAdapter.lastTab"

.field private static TAG:Ljava/lang/String;

.field public static blockFavoritesTab:Z

.field public static blockGroupsTab:Z

.field public static blockLogsTab:Z

.field public static blockRCSeTab:Z

.field public static mIsEasyMode:Z

.field private static mTalkBackEnable:Z

.field public static tabList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private isFavoritesTabVisible:Z

.field private isGroupsTabVisible:Z

.field private isLogsTabVisible:Z

.field private isNavigationTab:Z

.field private isRCSeTabVisible:Z

.field private isSetupTabs:Z

.field private isStartMultiWindow:Z

.field private isUpdateTabPosition:Z

.field private final mActionBar:Landroid/app/ActionBar;

.field public mActionSpinnerAdapter:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$ActionSpinnerAdapter;

.field private mCONTACTS:I

.field private final mContext:Landroid/content/Context;

.field private mCurrentTab:I

.field private mFAVORITES:I

.field private mFilterController:Lcom/android/contacts/list/ContactListFilterController;

.field private mGROUPS:I

.field private mIsMultiWindow:Z

.field private mIsTablet:Z

.field private mLOGS:I

.field private mListener:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$Listener;

.field private mNavigationListener:Landroid/app/ActionBar$OnNavigationListener;

.field private final mPrefs:Landroid/content/SharedPreferences;

.field private mRCSE:I

.field private mRot:I

.field private mTabListener:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$MyTabListener;

.field private sVoiceCapable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 72
    sput-boolean v1, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->blockLogsTab:Z

    .line 73
    sput-boolean v1, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->blockGroupsTab:Z

    .line 74
    sput-boolean v1, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->blockFavoritesTab:Z

    .line 75
    sput-boolean v1, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mIsEasyMode:Z

    .line 76
    sput-boolean v1, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->blockRCSeTab:Z

    .line 200
    const-string v0, "InteractionActionBarAdapter"

    sput-object v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->TAG:Ljava/lang/String;

    .line 225
    sput-boolean v1, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mTalkBackEnable:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/ActionBar;IZLandroid/os/Bundle;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "actionBar"    # Landroid/app/ActionBar;
    .param p3, "rot"    # I
    .param p4, "isTablet"    # Z
    .param p5, "savedState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v4, -0x1

    const/4 v1, 0x1

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$MyTabListener;

    const/4 v6, 0x0

    invoke-direct {v0, p0, v6}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$MyTabListener;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$1;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mTabListener:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$MyTabListener;

    .line 198
    iput v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mCurrentTab:I

    .line 227
    iput-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->isSetupTabs:Z

    .line 229
    iput-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->isUpdateTabPosition:Z

    .line 551
    new-instance v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$1;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mNavigationListener:Landroid/app/ActionBar$OnNavigationListener;

    .line 233
    iput v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mGROUPS:I

    .line 234
    iput v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mFAVORITES:I

    .line 235
    iput v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mCONTACTS:I

    .line 236
    iput v5, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mLOGS:I

    .line 237
    const/4 v0, 0x4

    iput v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mRCSE:I

    .line 242
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mContext:Landroid/content/Context;

    .line 243
    iput-object p2, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    .line 244
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mPrefs:Landroid/content/SharedPreferences;

    .line 245
    iput p3, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mRot:I

    .line 246
    iput-boolean p4, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mIsTablet:Z

    .line 247
    sget-object v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->TAG:Ljava/lang/String;

    const-string v6, "InteractionActionBarAdapter"

    invoke-static {v0, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v6, 0x7f0a0018

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 250
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v6, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v0, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v1, :cond_5

    .line 252
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v6, 0x7f0a0009

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->sVoiceCapable:Z

    .line 266
    :goto_0
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->sVoiceCapable:Z

    if-eqz v0, :cond_6

    sget-boolean v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->blockLogsTab:Z

    if-nez v0, :cond_6

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->isLogsTabVisible:Z

    .line 267
    sget-boolean v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->blockGroupsTab:Z

    if-nez v0, :cond_7

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->isGroupsTabVisible:Z

    .line 268
    sget-boolean v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->blockFavoritesTab:Z

    if-nez v0, :cond_8

    sget-boolean v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mIsEasyMode:Z

    if-nez v0, :cond_8

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->isFavoritesTabVisible:Z

    .line 269
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isBlackBirdFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_9

    sget-boolean v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->blockRCSeTab:Z

    if-nez v0, :cond_9

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->isRCSeTabVisible:Z

    .line 272
    sget-boolean v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mIsEasyMode:Z

    if-eqz v0, :cond_b

    .line 273
    iput v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mGROUPS:I

    .line 274
    iput v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mCONTACTS:I

    .line 275
    iput v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mFAVORITES:I

    .line 276
    iput v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mLOGS:I

    .line 277
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->isRCSeTabVisible:Z

    if-eqz v0, :cond_a

    move v0, v3

    :goto_5
    iput v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mRCSE:I

    .line 311
    :cond_0
    :goto_6
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->isMultiwindowMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->isStartMultiWindow:Z

    .line 312
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->isStartMultiWindow:Z

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mIsMultiWindow:Z

    .line 313
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isPenMultiWindow(Landroid/app/Activity;)Z

    move-result v0

    if-ne v0, v1, :cond_13

    .line 314
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->isNavigationTab:Z

    .line 320
    :goto_7
    sget-object v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "InteractionActionBarAdapter tabList = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->tabList:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    if-nez p5, :cond_17

    .line 324
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->loadLastTabPreference()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mCurrentTab:I

    .line 332
    :goto_8
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mCurrentTab:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->getTabState(I)I

    move-result v0

    if-ne v0, v4, :cond_1

    .line 333
    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->setCurrentTab(I)V

    .line 336
    :cond_1
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->tabList:Ljava/util/ArrayList;

    .line 337
    sget-boolean v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mIsEasyMode:Z

    if-eqz v0, :cond_18

    .line 338
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->isGroupsTabVisible:Z

    if-eqz v0, :cond_2

    .line 339
    sget-object v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->tabList:Ljava/util/ArrayList;

    const-string v3, "groups"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 340
    :cond_2
    sget-object v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->tabList:Ljava/util/ArrayList;

    const-string v3, "contacts"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 341
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->isRCSeTabVisible:Z

    if-eqz v0, :cond_3

    .line 342
    sget-object v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->tabList:Ljava/util/ArrayList;

    const-string v3, "rcse"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 355
    :cond_3
    :goto_9
    sget-object v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "InteractionActionBarAdapter initial tabList = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->tabList:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    sget-object v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sVoiceCapable = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->sVoiceCapable:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    sget-object v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "blockLogsTab = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->blockLogsTab:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->isNavigationTab:Z

    if-eqz v0, :cond_1c

    .line 362
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->setupTabs()V

    .line 363
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->isSetupTabs:Z

    .line 364
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mIsTablet:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 365
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->setEmbeddedTabs()V

    .line 371
    :cond_4
    :goto_a
    return-void

    .line 254
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v6, 0x111003d

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->sVoiceCapable:Z

    goto/16 :goto_0

    :cond_6
    move v0, v2

    .line 266
    goto/16 :goto_1

    :cond_7
    move v0, v2

    .line 267
    goto/16 :goto_2

    :cond_8
    move v0, v2

    .line 268
    goto/16 :goto_3

    :cond_9
    move v0, v2

    .line 269
    goto/16 :goto_4

    :cond_a
    move v0, v4

    .line 277
    goto/16 :goto_5

    .line 279
    :cond_b
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->isLogsTabVisible:Z

    if-nez v0, :cond_11

    .line 280
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->isGroupsTabVisible:Z

    if-nez v0, :cond_d

    .line 281
    iput v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mGROUPS:I

    .line 282
    iput v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mFAVORITES:I

    .line 283
    iput v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mCONTACTS:I

    .line 284
    iput v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mLOGS:I

    .line 285
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->isRCSeTabVisible:Z

    if-eqz v0, :cond_c

    move v0, v3

    :goto_b
    iput v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mRCSE:I

    goto/16 :goto_6

    :cond_c
    move v0, v4

    goto :goto_b

    .line 287
    :cond_d
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->isFavoritesTabVisible:Z

    if-nez v0, :cond_f

    .line 288
    iput v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mGROUPS:I

    .line 289
    iput v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mFAVORITES:I

    .line 290
    iput v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mCONTACTS:I

    .line 291
    iput v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mLOGS:I

    .line 292
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->isRCSeTabVisible:Z

    if-eqz v0, :cond_e

    move v0, v3

    :goto_c
    iput v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mRCSE:I

    goto/16 :goto_6

    :cond_e
    move v0, v4

    goto :goto_c

    .line 295
    :cond_f
    iput v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mGROUPS:I

    .line 296
    iput v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mFAVORITES:I

    .line 297
    iput v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mCONTACTS:I

    .line 298
    iput v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mLOGS:I

    .line 299
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->isRCSeTabVisible:Z

    if-eqz v0, :cond_10

    move v0, v5

    :goto_d
    iput v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mRCSE:I

    goto/16 :goto_6

    :cond_10
    move v0, v4

    goto :goto_d

    .line 302
    :cond_11
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->isGroupsTabVisible:Z

    if-nez v0, :cond_0

    .line 303
    iput v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mGROUPS:I

    .line 304
    iput v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mFAVORITES:I

    .line 305
    iput v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mCONTACTS:I

    .line 306
    iput v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mLOGS:I

    .line 307
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->isRCSeTabVisible:Z

    if-eqz v0, :cond_12

    :goto_e
    iput v5, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mRCSE:I

    goto/16 :goto_6

    :cond_12
    move v5, v4

    goto :goto_e

    .line 316
    :cond_13
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mIsTablet:Z

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->isStartMultiWindow:Z

    if-eqz v0, :cond_15

    :cond_14
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mIsTablet:Z

    if-nez v0, :cond_16

    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mRot:I

    if-ne v0, v1, :cond_16

    :cond_15
    move v0, v1

    :goto_f
    iput-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->isNavigationTab:Z

    goto/16 :goto_7

    :cond_16
    move v0, v2

    goto :goto_f

    .line 328
    :cond_17
    const-string v0, "currentTab"

    invoke-virtual {p5, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->getTabStateByIndex(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mCurrentTab:I

    goto/16 :goto_8

    .line 345
    :cond_18
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->isGroupsTabVisible:Z

    if-eqz v0, :cond_19

    .line 346
    sget-object v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->tabList:Ljava/util/ArrayList;

    const-string v3, "groups"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    :cond_19
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->isFavoritesTabVisible:Z

    if-eqz v0, :cond_1a

    .line 348
    sget-object v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->tabList:Ljava/util/ArrayList;

    const-string v3, "favorites"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 349
    :cond_1a
    sget-object v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->tabList:Ljava/util/ArrayList;

    const-string v3, "contacts"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 350
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->isLogsTabVisible:Z

    if-eqz v0, :cond_1b

    .line 351
    sget-object v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->tabList:Ljava/util/ArrayList;

    const-string v3, "logs"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 352
    :cond_1b
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->isRCSeTabVisible:Z

    if-eqz v0, :cond_3

    .line 353
    sget-object v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->tabList:Ljava/util/ArrayList;

    const-string v3, "rcse"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    .line 368
    :cond_1c
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->setupNavigationList()V

    .line 369
    iput-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->isSetupTabs:Z

    goto/16 :goto_a
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 56
    sget-boolean v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mTalkBackEnable:Z

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->sendAccessibilityEvent()V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;

    .prologue
    .line 56
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mCurrentTab:I

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;)Lcom/android/contacts/list/ContactListFilterController;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mFilterController:Lcom/android/contacts/list/ContactListFilterController;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->isUpdateTabPosition:Z

    return v0
.end method

.method static synthetic access$702(Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->isUpdateTabPosition:Z

    return p1
.end method

.method static synthetic access$800(Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;)Landroid/app/ActionBar;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    return-object v0
.end method

.method private addTab(III)V
    .locals 3
    .param p1, "tabState"    # I
    .param p2, "icon"    # I
    .param p3, "contentDescription"    # I

    .prologue
    .line 378
    sget-object v1, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->TAG:Ljava/lang/String;

    const-string v2, "addTab"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    .line 380
    .local v0, "tab":Landroid/app/ActionBar$Tab;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setTag(Ljava/lang/Object;)Landroid/app/ActionBar$Tab;

    .line 383
    invoke-virtual {v0, p3}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    .line 384
    invoke-virtual {v0, p3}, Landroid/app/ActionBar$Tab;->setContentDescription(I)Landroid/app/ActionBar$Tab;

    .line 385
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mTabListener:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$MyTabListener;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    .line 386
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 387
    return-void
.end method

.method private loadLastTabPreference()I
    .locals 4

    .prologue
    .line 527
    const/4 v0, 0x2

    .line 528
    .local v0, "defaultTab":I
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "interactionActionBarAdapter.lastTab"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 531
    :goto_0
    return v2

    .line 529
    :catch_0
    move-exception v1

    .line 531
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const/4 v2, -0x1

    goto :goto_0
.end method

.method private saveLastTabPreference(I)V
    .locals 2
    .param p1, "tab"    # I

    .prologue
    .line 522
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "interactionActionBarAdapter.lastTab"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 523
    return-void
.end method

.method private sendAccessibilityEvent()V
    .locals 4

    .prologue
    .line 618
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->getCurrentTab()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 638
    const-string v0, ""

    .line 642
    .local v0, "descriptionString":Ljava/lang/String;
    :goto_0
    const/16 v2, 0x20

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .line 644
    .local v1, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    .line 645
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 646
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityRecord;->setEnabled(Z)V

    .line 647
    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityRecord;->setBeforeText(Ljava/lang/CharSequence;)V

    .line 648
    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 649
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 651
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 652
    return-void

    .line 620
    .end local v0    # "descriptionString":Ljava/lang/String;
    .end local v1    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :pswitch_0
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e008d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 621
    .restart local v0    # "descriptionString":Ljava/lang/String;
    goto :goto_0

    .line 623
    .end local v0    # "descriptionString":Ljava/lang/String;
    :pswitch_1
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f0e008e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 624
    .restart local v0    # "descriptionString":Ljava/lang/String;
    goto :goto_0

    .line 626
    .end local v0    # "descriptionString":Ljava/lang/String;
    :pswitch_2
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f0e0212

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 627
    .restart local v0    # "descriptionString":Ljava/lang/String;
    goto :goto_0

    .line 629
    .end local v0    # "descriptionString":Ljava/lang/String;
    :pswitch_3
    const-string v2, "feature_vzw"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 630
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f0e018a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "descriptionString":Ljava/lang/String;
    goto :goto_0

    .line 632
    .end local v0    # "descriptionString":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f0e02f2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 633
    .restart local v0    # "descriptionString":Ljava/lang/String;
    goto :goto_0

    .line 635
    .end local v0    # "descriptionString":Ljava/lang/String;
    :pswitch_4
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f0e0235

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 636
    .restart local v0    # "descriptionString":Ljava/lang/String;
    goto :goto_0

    .line 618
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private setupNavigationList()V
    .locals 3

    .prologue
    .line 685
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mActionSpinnerAdapter:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$ActionSpinnerAdapter;

    if-nez v0, :cond_0

    .line 686
    new-instance v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$ActionSpinnerAdapter;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$ActionSpinnerAdapter;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mActionSpinnerAdapter:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$ActionSpinnerAdapter;

    .line 689
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mNavigationListener:Landroid/app/ActionBar$OnNavigationListener;

    if-nez v0, :cond_1

    .line 690
    new-instance v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$2;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mNavigationListener:Landroid/app/ActionBar$OnNavigationListener;

    .line 703
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mActionSpinnerAdapter:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$ActionSpinnerAdapter;

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mNavigationListener:Landroid/app/ActionBar$OnNavigationListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Landroid/app/ActionBar$OnNavigationListener;)V

    .line 704
    return-void
.end method

.method private setupTabs()V
    .locals 7

    .prologue
    const v6, 0x7f0206d9

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 656
    sget-boolean v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mIsEasyMode:Z

    if-eqz v0, :cond_2

    .line 657
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->isGroupsTabVisible:Z

    if-eqz v0, :cond_0

    .line 658
    const v0, 0x7f0206dc

    const v1, 0x7f0e008d

    invoke-direct {p0, v2, v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->addTab(III)V

    .line 660
    :cond_0
    const v0, 0x7f0e0212

    invoke-direct {p0, v3, v6, v0}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->addTab(III)V

    .line 661
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->isRCSeTabVisible:Z

    if-eqz v0, :cond_1

    .line 662
    const v0, 0x7f0207fb

    const v1, 0x7f0e0235

    invoke-direct {p0, v5, v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->addTab(III)V

    .line 682
    :cond_1
    :goto_0
    return-void

    .line 666
    :cond_2
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->isGroupsTabVisible:Z

    if-eqz v0, :cond_3

    .line 667
    const v0, 0x7f0206dc

    const v1, 0x7f0e008d

    invoke-direct {p0, v2, v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->addTab(III)V

    .line 669
    :cond_3
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->isFavoritesTabVisible:Z

    if-eqz v0, :cond_4

    .line 670
    const/4 v0, 0x1

    const v1, 0x7f0206de

    const v2, 0x7f0e008e

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->addTab(III)V

    .line 672
    :cond_4
    const v0, 0x7f0e0212

    invoke-direct {p0, v3, v6, v0}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->addTab(III)V

    .line 673
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->isLogsTabVisible:Z

    if-eqz v0, :cond_5

    .line 674
    const-string v0, "feature_vzw"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 675
    const v0, 0x7f0206dd

    const v1, 0x7f0e018a

    invoke-direct {p0, v4, v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->addTab(III)V

    .line 678
    :cond_5
    :goto_1
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->isRCSeTabVisible:Z

    if-eqz v0, :cond_1

    .line 679
    const v0, 0x7f0207fb

    const v1, 0x7f0e0235

    invoke-direct {p0, v5, v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->addTab(III)V

    goto :goto_0

    .line 677
    :cond_6
    const v0, 0x7f0206dd

    const v1, 0x7f0e02f2

    invoke-direct {p0, v4, v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->addTab(III)V

    goto :goto_1
.end method

.method private updateDropdownNavigation()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 424
    sget-object v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->TAG:Ljava/lang/String;

    const-string v1, "updateDropdownNavigation"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mTabListener:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$MyTabListener;

    iput-boolean v2, v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$MyTabListener;->mIgnoreTabSelected:Z

    .line 428
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 429
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->isLogsTabVisible:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mCurrentTab:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->getTabState(I)I

    move-result v0

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->getTabState(I)I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 431
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mCurrentTab:I

    .line 432
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mCurrentTab:I

    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->getTabState(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 437
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mTabListener:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$MyTabListener;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$MyTabListener;->mIgnoreTabSelected:Z

    .line 439
    return-void

    .line 435
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mCurrentTab:I

    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->getTabState(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    goto :goto_0
.end method

.method private updateNavigationTabs()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 400
    sget-object v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->TAG:Ljava/lang/String;

    const-string v1, "updateNavigationTabs"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mTabListener:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$MyTabListener;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$MyTabListener;->mIgnoreTabSelected:Z

    .line 403
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 404
    sget-object v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateNavigationTabs tabList = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->tabList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->isLogsTabVisible:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mCurrentTab:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->getTabState(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mCurrentTab:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->getTabState(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->findLastTabIndex()I

    move-result v1

    if-le v0, v1, :cond_2

    .line 409
    :cond_0
    iput v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mCurrentTab:I

    .line 410
    sget-object v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCurrentTab = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mCurrentTab:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    sget-object v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTabState(mCurrentTab) = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mCurrentTab:I

    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->getTabState(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getSelectedTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar$Tab;->getTag()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mCurrentTab:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 418
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mCurrentTab:I

    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->getTabState(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 419
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mTabListener:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$MyTabListener;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$MyTabListener;->mIgnoreTabSelected:Z

    .line 421
    return-void

    .line 414
    :cond_2
    sget-object v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCurrentTab = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mCurrentTab:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    sget-object v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTabState(mCurrentTab) = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mCurrentTab:I

    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->getTabState(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public checkTalkBackEnable()V
    .locals 1

    .prologue
    .line 611
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mTalkBackEnable:Z

    .line 612
    return-void
.end method

.method public findLastTabIndex()I
    .locals 3

    .prologue
    .line 164
    const/4 v0, -0x1

    .line 166
    .local v0, "last":I
    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mGROUPS:I

    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mFAVORITES:I

    invoke-static {v1, v2}, Ljava/lang/Integer;->compare(II)I

    move-result v1

    if-gez v1, :cond_3

    .line 167
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mFAVORITES:I

    .line 173
    :goto_0
    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mCONTACTS:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v1

    if-gez v1, :cond_0

    .line 174
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mCONTACTS:I

    .line 177
    :cond_0
    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mLOGS:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v1

    if-gez v1, :cond_1

    .line 178
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mLOGS:I

    .line 181
    :cond_1
    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mRCSE:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v1

    if-gez v1, :cond_2

    .line 182
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mRCSE:I

    .line 185
    :cond_2
    return v0

    .line 170
    :cond_3
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mGROUPS:I

    goto :goto_0
.end method

.method public getCurrentTab()I
    .locals 3

    .prologue
    .line 517
    sget-object v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentTab = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mCurrentTab:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mCurrentTab:I

    return v0
.end method

.method public getTabState(I)I
    .locals 2
    .param p1, "tabState"    # I

    .prologue
    .line 114
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mCONTACTS:I

    .line 115
    .local v0, "index":I
    packed-switch p1, :pswitch_data_0

    .line 136
    :goto_0
    return v0

    .line 117
    :pswitch_0
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mGROUPS:I

    .line 118
    goto :goto_0

    .line 120
    :pswitch_1
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mFAVORITES:I

    .line 121
    goto :goto_0

    .line 123
    :pswitch_2
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mCONTACTS:I

    .line 124
    goto :goto_0

    .line 126
    :pswitch_3
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mLOGS:I

    .line 127
    goto :goto_0

    .line 129
    :pswitch_4
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->isRCSeTabVisible:Z

    if-eqz v1, :cond_0

    .line 130
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mRCSE:I

    goto :goto_0

    .line 132
    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    .line 115
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getTabStateByIndex(I)I
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 140
    const/4 v0, 0x2

    .line 142
    .local v0, "state":I
    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mGROUPS:I

    if-ne p1, v1, :cond_1

    .line 143
    const/4 v0, 0x0

    .line 160
    :cond_0
    :goto_0
    return v0

    .line 145
    :cond_1
    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mFAVORITES:I

    if-ne p1, v1, :cond_2

    .line 146
    const/4 v0, 0x1

    goto :goto_0

    .line 148
    :cond_2
    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mCONTACTS:I

    if-ne p1, v1, :cond_3

    .line 149
    const/4 v0, 0x2

    goto :goto_0

    .line 151
    :cond_3
    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mLOGS:I

    if-ne p1, v1, :cond_4

    .line 152
    const/4 v0, 0x3

    goto :goto_0

    .line 154
    :cond_4
    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mRCSE:I

    if-ne p1, v1, :cond_0

    .line 155
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->isRCSeTabVisible:Z

    if-eqz v1, :cond_5

    .line 156
    const/4 v0, 0x4

    goto :goto_0

    .line 158
    :cond_5
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public initialize()V
    .locals 2

    .prologue
    .line 390
    sget-object v0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->TAG:Ljava/lang/String;

    const-string v1, "InteractionActionBarAdapter.initialize"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->isNavigationTab:Z

    if-eqz v0, :cond_0

    .line 393
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->updateNavigationTabs()V

    .line 397
    :goto_0
    return-void

    .line 395
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->updateDropdownNavigation()V

    goto :goto_0
.end method

.method public isMultiWindow()Z
    .locals 1

    .prologue
    .line 536
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mIsMultiWindow:Z

    return v0
.end method

.method public onClose()Z
    .locals 1

    .prologue
    .line 546
    const/4 v0, 0x0

    return v0
.end method

.method public setContactListFilterController(Lcom/android/contacts/list/ContactListFilterController;)V
    .locals 0
    .param p1, "controller"    # Lcom/android/contacts/list/ContactListFilterController;

    .prologue
    .line 482
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mFilterController:Lcom/android/contacts/list/ContactListFilterController;

    .line 483
    return-void
.end method

.method public setCurrentTab(I)V
    .locals 5
    .param p1, "tab"    # I

    .prologue
    const/4 v4, 0x2

    .line 490
    sget-object v1, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCurrentTab tab = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    sget-object v1, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCurrentTab mCurrentTab = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mCurrentTab:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mCurrentTab:I

    if-ne p1, v1, :cond_0

    .line 514
    :goto_0
    return-void

    .line 495
    :cond_0
    iput p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mCurrentTab:I

    .line 496
    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mCurrentTab:I

    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->getTabState(I)I

    move-result v0

    .line 498
    .local v0, "index":I
    sget-object v1, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tabList9 = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->tabList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->findLastTabIndex()I

    move-result v1

    if-le v0, v1, :cond_2

    .line 500
    :cond_1
    iput v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mCurrentTab:I

    .line 503
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getNavigationMode()I

    move-result v1

    if-ne v1, v4, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v1

    if-eq v0, v1, :cond_5

    .line 505
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 511
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mListener:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$Listener;

    if-eqz v1, :cond_4

    .line 512
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mListener:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$Listener;

    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mCurrentTab:I

    invoke-interface {v1, v2}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$Listener;->onSelectedTabChanged(I)V

    .line 513
    :cond_4
    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mCurrentTab:I

    invoke-direct {p0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->saveLastTabPreference(I)V

    goto :goto_0

    .line 506
    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getNavigationMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v1

    if-eq v0, v1, :cond_3

    .line 508
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    goto :goto_1
.end method

.method public setEmbeddedTabs()V
    .locals 7

    .prologue
    .line 729
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    check-cast v0, Lcom/android/internal/app/ActionBarImpl;

    .line 730
    .local v0, "actionBarImpl":Lcom/android/internal/app/ActionBarImpl;
    const/4 v1, 0x0

    .line 732
    .local v1, "setHasEmbeddedTabs":Ljava/lang/reflect/Method;
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "setHasEmbeddedTabs"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 733
    if-eqz v1, :cond_0

    .line 734
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 735
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 742
    :cond_0
    :goto_0
    return-void

    .line 740
    :catch_0
    move-exception v2

    goto :goto_0

    .line 739
    :catch_1
    move-exception v2

    goto :goto_0

    .line 738
    :catch_2
    move-exception v2

    goto :goto_0

    .line 737
    :catch_3
    move-exception v2

    goto :goto_0
.end method

.method public setListener(Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$Listener;

    .prologue
    .line 374
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mListener:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$Listener;

    .line 375
    return-void
.end method

.method public setMultiWindow(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 540
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mIsMultiWindow:Z

    .line 541
    return-void
.end method

.method public updateActionBarMode(I)V
    .locals 3
    .param p1, "navigationMode"    # I

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 707
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mRot:I

    if-ne v0, v2, :cond_0

    .line 708
    packed-switch p1, :pswitch_data_0

    .line 726
    :cond_0
    :goto_0
    return-void

    .line 710
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 711
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->setupNavigationList()V

    .line 712
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mCurrentTab:I

    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->getTabState(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    goto :goto_0

    .line 715
    :pswitch_1
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->isUpdateTabPosition:Z

    .line 716
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mNavigationListener:Landroid/app/ActionBar$OnNavigationListener;

    .line 717
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->isSetupTabs:Z

    if-nez v0, :cond_1

    .line 718
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->setupTabs()V

    .line 719
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->isSetupTabs:Z

    .line 721
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 722
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mActionBar:Landroid/app/ActionBar;

    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter;->mCurrentTab:I

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    goto :goto_0

    .line 708
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
