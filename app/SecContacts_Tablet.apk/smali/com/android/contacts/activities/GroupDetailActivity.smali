.class public Lcom/android/contacts/activities/GroupDetailActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "GroupDetailActivity.java"


# static fields
.field public static final ACTION_EDIT_MEMBER_COMPLETED:Ljava/lang/String; = "editMemberCompleted"

.field private static final SUBACTIVITY_ADD_MEMBER:I = 0x1

.field private static final SUBACTIVITY_EDIT_GROUP:I = 0x5

.field private static final SUBACTIVITY_REMOVE_MEMBER:I = 0x2

.field private static final SUBACTIVITY_SEND_EMAIL:I = 0x3

.field private static final SUBACTIVITY_SEND_MESSAGE:I = 0x4

.field private static final TAG:Ljava/lang/String; = "GroupDetailActivity"

.field private static final TAG_EAB:Ljava/lang/String; = "EAB-GroupDetailActivity"


# instance fields
.field mActionBar:Landroid/app/ActionBar;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCustomActionBarView:Landroid/view/View;

.field private mFragment:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

.field private final mFragmentListener:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$Listener;

.field private mFromEmergencyDial:Z

.field private mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

.field private mGroupType:I

.field private mIsAutoAdd:Z

.field private mIsOptionsMenuOpen:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    .line 275
    new-instance v0, Lcom/android/contacts/activities/GroupDetailActivity$2;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/GroupDetailActivity$2;-><init>(Lcom/android/contacts/activities/GroupDetailActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mFragmentListener:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$Listener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/activities/GroupDetailActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/GroupDetailActivity;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mCustomActionBarView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/contacts/activities/GroupDetailActivity;Landroid/net/Uri;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/activities/GroupDetailActivity;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/GroupDetailActivity;->sendSubscribe(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/contacts/activities/GroupDetailActivity;)Lcom/sec/android/app/contacts/group/GroupInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/GroupDetailActivity;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/contacts/activities/GroupDetailActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/GroupDetailActivity;

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mIsAutoAdd:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/contacts/activities/GroupDetailActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/GroupDetailActivity;

    .prologue
    .line 71
    iget v0, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mGroupType:I

    return v0
.end method

.method private adjustActionBar(Lcom/sec/android/app/contacts/group/GroupInfo;)V
    .locals 9
    .param p1, "groupInfo"    # Lcom/sec/android/app/contacts/group/GroupInfo;

    .prologue
    const/4 v8, -0x1

    const/4 v7, -0x2

    .line 215
    iget-object v3, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v3, :cond_0

    .line 216
    const-string v3, "layout_inflater"

    invoke-virtual {p0, v3}, Lcom/android/contacts/activities/GroupDetailActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 217
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f04013d

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mCustomActionBarView:Landroid/view/View;

    .line 219
    invoke-virtual {p1}, Lcom/sec/android/app/contacts/group/GroupInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 220
    .local v2, "title":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/sec/android/app/contacts/group/GroupInfo;->getSystemId()Ljava/lang/String;

    move-result-object v1

    .line 221
    .local v1, "systemId":Ljava/lang/String;
    invoke-direct {p0, v2, v1}, Lcom/android/contacts/activities/GroupDetailActivity;->updateTitle(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    iget-boolean v3, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mFromEmergencyDial:Z

    if-eqz v3, :cond_1

    .line 224
    iget-object v3, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mActionBar:Landroid/app/ActionBar;

    const/16 v4, 0x1a

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 230
    :goto_0
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->shouldApplyUiMirroring()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 231
    iget-object v3, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mActionBar:Landroid/app/ActionBar;

    iget-object v4, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mCustomActionBarView:Landroid/view/View;

    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    const/16 v6, 0x13

    invoke-direct {v5, v7, v8, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v4, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 241
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    .end local v1    # "systemId":Ljava/lang/String;
    .end local v2    # "title":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 227
    .restart local v0    # "inflater":Landroid/view/LayoutInflater;
    .restart local v1    # "systemId":Ljava/lang/String;
    .restart local v2    # "title":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mActionBar:Landroid/app/ActionBar;

    const/16 v4, 0x1e

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    goto :goto_0

    .line 235
    :cond_2
    iget-object v3, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mActionBar:Landroid/app/ActionBar;

    iget-object v4, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mCustomActionBarView:Landroid/view/View;

    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    const/16 v6, 0x15

    invoke-direct {v5, v7, v8, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v4, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    goto :goto_1
.end method

.method private static convertToArray(Ljava/util/List;)[J
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)[J"
        }
    .end annotation

    .prologue
    .line 634
    .local p0, "listMembers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .line 635
    .local v2, "size":I
    new-array v1, v2, [J

    .line 636
    .local v1, "membersArray":[J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 637
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    aput-wide v3, v1, v0

    .line 636
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 639
    :cond_0
    return-object v1
.end method

.method private fillEmergecyGroupInfo()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 629
    new-instance v0, Lcom/sec/android/app/contacts/group/GroupInfo;

    const-string v1, "vnd.sec.contact.agg.account_type"

    const-string v2, "vnd.sec.contact.agg.account_name"

    const-wide/16 v4, 0x0

    const-string v6, "ICE"

    move-object v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/contacts/group/GroupInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    .line 631
    return-void
.end method

.method private finishWithHidingIME()V
    .locals 3

    .prologue
    .line 643
    iget-object v1, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mFragment:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mFragment:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 644
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/GroupDetailActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 645
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mFragment:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 647
    .end local v0    # "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/activities/GroupDetailActivity;->finish()V

    .line 648
    return-void
.end method

.method private isOnlyDefaultAvailable(Landroid/content/Intent;)Z
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 624
    const-string v1, "default_only"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 625
    .local v0, "isOnlyDefaultAvailable":Z
    return v0
.end method

.method private sendSubscribe(Landroid/net/Uri;)V
    .locals 10
    .param p1, "contactUri"    # Landroid/net/Uri;

    .prologue
    .line 651
    const-string v7, "GroupDetailActivity"

    const-string v8, "sendSubscribe start"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    invoke-static {}, Lcom/android/contacts/ContactsApplication;->getInstance()Lcom/android/contacts/ContactsApplication;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/contacts/ContactsApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 654
    .local v5, "cr":Landroid/content/ContentResolver;
    if-eqz v5, :cond_3

    if-eqz p1, :cond_3

    .line 655
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 656
    .local v4, "contactId":Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getInstance()Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getCacheExpiryTime(Landroid/content/ContentResolver;)I

    move-result v1

    .line 657
    .local v1, "cacheExpiryTime":I
    invoke-static {}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getInstance()Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

    move-result-object v7

    invoke-virtual {v7, v5, v1}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getCacheTime(Landroid/content/ContentResolver;I)J

    move-result-wide v2

    .line 659
    .local v2, "cacheTime":J
    invoke-static {}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getInstance()Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getCapabilityPollExpiryTime()I

    move-result v6

    .line 660
    .local v6, "pollExpiryTime":I
    const-string v7, "GroupDetailActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CacheExpiryTime:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    const-string v7, "GroupDetailActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CacheTime:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    const-string v7, "GroupDetailActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "pollExpiryTime:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    const-string v7, "GroupDetailActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " isCacheExpired: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getInstance()Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

    move-result-object v9

    invoke-virtual {v9, v2, v3, v1}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->isCacheExpired(JI)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    const/4 v0, 0x1

    .line 669
    .local v0, "allowSubscribe":Z
    invoke-static {}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getInstance()Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

    move-result-object v7

    invoke-virtual {v7, v2, v3, v1}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->isCacheExpired(JI)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 670
    const-string v7, "GroupDetailActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cache is expired so resetting value of id :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    if-eqz v6, :cond_0

    .line 672
    const/4 v0, 0x0

    .line 673
    :cond_0
    invoke-static {}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getInstance()Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

    move-result-object v7

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->eraseCacheInfo(J)V

    .line 675
    :cond_1
    const-string v7, "GroupDetailActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "contactUri:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    if-eqz v0, :cond_2

    invoke-static {}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getInstance()Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->isInitialPublish404()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-static {}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getInstance()Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->isInitialPublish403()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-static {}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getInstance()Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->isEABReady()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 679
    const-string v7, "GroupDetailActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "subscribeTask--contactId is: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    invoke-static {}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getInstance()Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

    move-result-object v7

    invoke-virtual {v7, v5, v4}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->sendsubscribe(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 682
    :cond_2
    const-string v7, "GroupDetailActivity"

    const-string v8, "sendSubscribe end"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    .end local v0    # "allowSubscribe":Z
    .end local v1    # "cacheExpiryTime":I
    .end local v2    # "cacheTime":J
    .end local v4    # "contactId":Ljava/lang/String;
    .end local v6    # "pollExpiryTime":I
    :cond_3
    return-void
.end method

.method private updateTitle(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "systemId"    # Ljava/lang/String;

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    .line 247
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "PersonalGroup"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 248
    iget-object v0, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-static {p2}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getSystemTitleRes(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 264
    :cond_0
    :goto_0
    return-void

    .line 249
    :cond_1
    const-string v0, "ICE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 250
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->shouldChangeEmergencyText()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 251
    iget-object v0, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mActionBar:Landroid/app/ActionBar;

    const v1, 0x7f0e0262

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    goto :goto_0

    .line 254
    :cond_2
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 255
    iget-object v0, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mActionBar:Landroid/app/ActionBar;

    const v1, 0x7f0e0015

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    goto :goto_0

    .line 257
    :cond_3
    iget-object v0, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mActionBar:Landroid/app/ActionBar;

    const v1, 0x7f0e0261

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    goto :goto_0

    .line 261
    :cond_4
    iget-object v0, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public inOptionMenuOpened()Z
    .locals 1

    .prologue
    .line 516
    iget-boolean v0, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mIsOptionsMenuOpen:Z

    return v0
.end method

.method public isFromEmergencyDial()Z
    .locals 1

    .prologue
    .line 686
    iget-boolean v0, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mFromEmergencyDial:Z

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 18
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 522
    const/4 v2, -0x1

    move/from16 v0, p2

    if-eq v0, v2, :cond_1

    .line 621
    :cond_0
    :goto_0
    return-void

    .line 526
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 529
    :pswitch_0
    const/4 v7, -0x1

    .line 530
    .local v7, "mode":I
    const/4 v2, 0x1

    move/from16 v0, p1

    if-ne v0, v2, :cond_4

    .line 531
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/contacts/activities/GroupDetailActivity;->mGroupType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    .line 532
    const/4 v7, 0x3

    .line 543
    :cond_2
    :goto_1
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v12

    .line 544
    .local v12, "membersToUpdate":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const-string v2, "ModifiedIds"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v12

    .end local v12    # "membersToUpdate":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    check-cast v12, Ljava/util/ArrayList;

    .line 546
    .restart local v12    # "membersToUpdate":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-static {v12}, Lcom/android/contacts/activities/GroupDetailActivity;->convertToArray(Ljava/util/List;)[J

    move-result-object v4

    .line 547
    .local v4, "membersToEditArray":[J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/activities/GroupDetailActivity;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "editMemberCompleted"

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v7}, Lcom/android/contacts/ContactSaveService;->createMemberUpdateOnlyIntent(Landroid/content/Context;Lcom/sec/android/app/contacts/group/GroupInfo;[JLjava/lang/Class;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v17

    .line 551
    .local v17, "saveIntent":Landroid/content/Intent;
    const/4 v2, 0x1

    move/from16 v0, p1

    if-ne v0, v2, :cond_6

    .line 552
    const v15, 0x7f0e0255

    .line 556
    .local v15, "resId":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/activities/GroupDetailActivity;->mFragment:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    invoke-virtual {v2, v15}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->showProgress(I)V

    .line 557
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/GroupDetailActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 534
    .end local v4    # "membersToEditArray":[J
    .end local v12    # "membersToUpdate":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v15    # "resId":I
    .end local v17    # "saveIntent":Landroid/content/Intent;
    :cond_3
    const/4 v7, 0x2

    goto :goto_1

    .line 536
    :cond_4
    const/4 v2, 0x2

    move/from16 v0, p1

    if-ne v0, v2, :cond_2

    .line 537
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/contacts/activities/GroupDetailActivity;->mGroupType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_5

    .line 538
    const/4 v7, 0x5

    goto :goto_1

    .line 540
    :cond_5
    const/4 v7, 0x4

    goto :goto_1

    .line 554
    .restart local v4    # "membersToEditArray":[J
    .restart local v12    # "membersToUpdate":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v17    # "saveIntent":Landroid/content/Intent;
    :cond_6
    const v15, 0x7f0e0256

    .restart local v15    # "resId":I
    goto :goto_2

    .line 561
    .end local v4    # "membersToEditArray":[J
    .end local v7    # "mode":I
    .end local v12    # "membersToUpdate":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v15    # "resId":I
    .end local v17    # "saveIntent":Landroid/content/Intent;
    :pswitch_1
    const/4 v2, -0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_0

    .line 563
    :try_start_0
    const-string v2, "result"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v16

    .line 565
    .local v16, "rtnData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v13, v2, [Ljava/lang/String;

    .line 566
    .local v13, "output":[Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_3
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v10, v2, :cond_7

    .line 567
    const-string v2, ""

    aput-object v2, v13, v10

    .line 568
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, v13, v10

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v6, ";"

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v6, v3, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v13, v10

    .line 566
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 571
    :cond_7
    new-instance v11, Landroid/content/Intent;

    const-string v2, "android.intent.action.SENDTO"

    const-string v3, "mailto:"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v11, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 573
    .local v11, "intent":Landroid/content/Intent;
    const-string v2, "PHONE_WHITE"

    const-string v3, "DEFAULT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 575
    const-string v2, "theme"

    const/4 v3, 0x2

    invoke-virtual {v11, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 578
    :cond_8
    const-string v2, "android.intent.extra.EMAIL"

    invoke-virtual {v11, v2, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 579
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/contacts/activities/GroupDetailActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 580
    .end local v10    # "i":I
    .end local v11    # "intent":Landroid/content/Intent;
    .end local v13    # "output":[Ljava/lang/String;
    .end local v16    # "rtnData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception v9

    .line 581
    .local v9, "e":Landroid/content/ActivityNotFoundException;
    const v2, 0x7f0e010f

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 586
    .end local v9    # "e":Landroid/content/ActivityNotFoundException;
    :pswitch_2
    const/4 v2, -0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_0

    .line 587
    new-instance v11, Landroid/content/Intent;

    const-string v2, "android.intent.action.SENDTO"

    invoke-direct {v11, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 589
    .restart local v11    # "intent":Landroid/content/Intent;
    invoke-static/range {p0 .. p0}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isKnoxMode(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Contact_EnableCallerIdSearch4Korea"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 591
    const-string v2, "com.android.mms"

    invoke-virtual {v11, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 593
    :cond_9
    const-string v2, "result"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v16

    .line 595
    .restart local v16    # "rtnData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 596
    .local v8, "dat":Ljava/lang/StringBuilder;
    const/4 v14, 0x0

    .line 598
    .local v14, "phoneUri":Landroid/net/Uri;
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_b

    .line 599
    const-string v2, "sms:"

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 600
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_4
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v10, v2, :cond_b

    .line 601
    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v5, ";"

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v5, v3, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 603
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v10, v2, :cond_a

    .line 604
    const-string v2, ";"

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 600
    :cond_a
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 608
    .end local v10    # "i":I
    :cond_b
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    .line 609
    invoke-virtual {v11, v14}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 610
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/contacts/activities/GroupDetailActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 614
    .end local v8    # "dat":Ljava/lang/StringBuilder;
    .end local v11    # "intent":Landroid/content/Intent;
    .end local v14    # "phoneUri":Landroid/net/Uri;
    .end local v16    # "rtnData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_3
    const/4 v2, -0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_0

    .line 615
    const-string v2, "GroupInfo"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/contacts/group/GroupInfo;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/contacts/activities/GroupDetailActivity;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    .line 616
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/activities/GroupDetailActivity;->mFragment:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/activities/GroupDetailActivity;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->loadGroupWithReload(Lcom/sec/android/app/contacts/group/GroupInfo;)V

    .line 617
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/activities/GroupDetailActivity;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/group/GroupInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/activities/GroupDetailActivity;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {v3}, Lcom/sec/android/app/contacts/group/GroupInfo;->getSystemId()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/contacts/activities/GroupDetailActivity;->updateTitle(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 526
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    const/16 v10, 0x400

    .line 110
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 112
    invoke-virtual {p0}, Lcom/android/contacts/activities/GroupDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 113
    .local v3, "intent":Landroid/content/Intent;
    const/4 v4, 0x0

    .line 116
    .local v4, "isOnlyDefaultAvailable":Z
    invoke-virtual {p0}, Lcom/android/contacts/activities/GroupDetailActivity;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9, v10, v10}, Landroid/view/Window;->setFlags(II)V

    .line 117
    invoke-virtual {p0}, Lcom/android/contacts/activities/GroupDetailActivity;->getWindow()Landroid/view/Window;

    move-result-object v9

    const/16 v10, 0x2000

    invoke-virtual {v9, v10}, Landroid/view/Window;->addPrivateFlags(I)V

    .line 120
    const-string v9, "com.android.contacts.action.SHOW_EMERGENCY_CONTACTS"

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 121
    invoke-virtual {p0}, Lcom/android/contacts/activities/GroupDetailActivity;->getWindow()Landroid/view/Window;

    move-result-object v9

    const/high16 v10, 0x80000

    invoke-virtual {v9, v10}, Landroid/view/Window;->addFlags(I)V

    .line 124
    :try_start_0
    const-class v9, Landroid/view/WindowManager$LayoutParams;

    const-string v10, "PRIVATE_FLAG_FORCE_SHOW_WHEN_LOCKED"

    invoke-virtual {v9, v10}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 125
    .local v1, "field":Ljava/lang/reflect/Field;
    if-eqz v1, :cond_0

    .line 126
    invoke-virtual {v1, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v6

    .line 127
    .local v6, "param":I
    invoke-virtual {p0}, Lcom/android/contacts/activities/GroupDetailActivity;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    .line 128
    .local v5, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v9, v5, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    xor-int/lit8 v10, v6, -0x1

    and-int/2addr v9, v10

    iput v9, v5, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 129
    invoke-virtual {p0}, Lcom/android/contacts/activities/GroupDetailActivity;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    .line 139
    .end local v1    # "field":Ljava/lang/reflect/Field;
    .end local v5    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v6    # "param":I
    :cond_0
    :goto_0
    invoke-direct {p0, v3}, Lcom/android/contacts/activities/GroupDetailActivity;->isOnlyDefaultAvailable(Landroid/content/Intent;)Z

    move-result v4

    .line 140
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mFromEmergencyDial:Z

    .line 141
    invoke-direct {p0}, Lcom/android/contacts/activities/GroupDetailActivity;->fillEmergecyGroupInfo()V

    .line 143
    new-instance v9, Lcom/android/contacts/activities/GroupDetailActivity$1;

    invoke-direct {v9, p0}, Lcom/android/contacts/activities/GroupDetailActivity$1;-><init>(Lcom/android/contacts/activities/GroupDetailActivity;)V

    iput-object v9, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 152
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 153
    .local v2, "filter":Landroid/content/IntentFilter;
    const-string v9, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 154
    iget-object v9, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v9, v2}, Lcom/android/contacts/activities/GroupDetailActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 163
    .end local v2    # "filter":Landroid/content/IntentFilter;
    :goto_1
    iget-object v9, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-static {v9, p0}, Lcom/sec/android/app/contacts/util/ContactsUtil;->parseGroupType(Lcom/sec/android/app/contacts/group/GroupInfo;Landroid/content/Context;)I

    move-result v9

    iput v9, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mGroupType:I

    .line 165
    const-string v9, "AutoAdd"

    const/4 v10, 0x0

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mIsAutoAdd:Z

    .line 167
    const v9, 0x7f040145

    invoke-virtual {p0, v9}, Lcom/android/contacts/activities/GroupDetailActivity;->setContentView(I)V

    .line 168
    invoke-virtual {p0}, Lcom/android/contacts/activities/GroupDetailActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v9

    const v10, 0x7f0902f6

    invoke-virtual {v9, v10}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v9

    check-cast v9, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    iput-object v9, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mFragment:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    .line 170
    iget-object v9, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    if-eqz v9, :cond_1

    .line 171
    iget-object v9, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mFragment:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    iget-object v10, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {v9, v10}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->loadGroup(Lcom/sec/android/app/contacts/group/GroupInfo;)V

    .line 172
    :cond_1
    const-string v9, "GroupDetailActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mFromEmergencyDial : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mFromEmergencyDial:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    const-string v9, "GroupDetailActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isOnlyDefaultAvailable : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-virtual {p0}, Lcom/android/contacts/activities/GroupDetailActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v9

    iput-object v9, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mActionBar:Landroid/app/ActionBar;

    .line 175
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v8

    .line 176
    .local v8, "sIsTwoPaneMode":Z
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v7

    .line 177
    .local v7, "sIsPhone":Z
    iget-object v9, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mFragment:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    iget-boolean v10, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mFromEmergencyDial:Z

    invoke-virtual {v9, v10, v4, v8, v7}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->setFromEmergecyDial(ZZZZ)V

    .line 179
    iget-object v9, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mFragment:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    iget-object v10, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mFragmentListener:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$Listener;

    invoke-virtual {v9, v10}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->setListener(Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$Listener;)V

    .line 182
    iget-object v9, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    if-eqz v9, :cond_2

    .line 183
    iget-object v9, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-direct {p0, v9}, Lcom/android/contacts/activities/GroupDetailActivity;->adjustActionBar(Lcom/sec/android/app/contacts/group/GroupInfo;)V

    .line 184
    :cond_2
    return-void

    .line 131
    .end local v7    # "sIsPhone":Z
    .end local v8    # "sIsTwoPaneMode":Z
    :catch_0
    move-exception v0

    .line 132
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto/16 :goto_0

    .line 133
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v0

    .line 134
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto/16 :goto_0

    .line 135
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 136
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto/16 :goto_0

    .line 157
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :cond_3
    if-eqz p1, :cond_4

    .line 158
    const-string v9, "GroupInfo"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Lcom/sec/android/app/contacts/group/GroupInfo;

    iput-object v9, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    goto/16 :goto_1

    .line 160
    :cond_4
    const-string v9, "GroupInfo"

    invoke-virtual {v3, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Lcom/sec/android/app/contacts/group/GroupInfo;

    iput-object v9, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    goto/16 :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 343
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 345
    invoke-virtual {p0}, Lcom/android/contacts/activities/GroupDetailActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 346
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f120025

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 347
    const/4 v1, 0x1

    return v1
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 188
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onDestroy()V

    .line 189
    iget-object v1, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mFragment:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    if-eqz v1, :cond_0

    .line 190
    iget-object v1, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mFragment:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->setListener(Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$Listener;)V

    .line 193
    :cond_0
    iget-boolean v1, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mFromEmergencyDial:Z

    if-eqz v1, :cond_1

    .line 195
    :try_start_0
    iget-object v1, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/GroupDetailActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 202
    :cond_1
    :goto_0
    return-void

    .line 196
    :catch_0
    move-exception v0

    .line 197
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 198
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    .line 199
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 3
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 503
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/GroupDetailActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 504
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mFragment:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 505
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mIsOptionsMenuOpen:Z

    .line 506
    invoke-super {p0, p1, p2}, Lcom/android/contacts/ContactsActivity;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 268
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 269
    .local v0, "action":Ljava/lang/String;
    const-string v1, "editMemberCompleted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 270
    iget-object v1, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mFragment:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->dismissProgress()V

    .line 272
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v2, 0x1

    .line 416
    iget-object v3, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mFragment:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    if-eqz v3, :cond_0

    .line 417
    iget-object v3, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mFragment:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    invoke-virtual {v3}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f090100

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SearchView;

    .line 418
    .local v1, "searchView":Landroid/widget/SearchView;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/widget/SearchView;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 419
    invoke-virtual {v1}, Landroid/widget/SearchView;->clearFocus()V

    .line 423
    .end local v1    # "searchView":Landroid/widget/SearchView;
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 498
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    :goto_0
    return v2

    .line 425
    :sswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/android/contacts/activities/PeopleActivity;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 426
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v3, 0x4000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 427
    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/GroupDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 428
    invoke-direct {p0}, Lcom/android/contacts/activities/GroupDetailActivity;->finishWithHidingIME()V

    goto :goto_0

    .line 432
    .end local v0    # "intent":Landroid/content/Intent;
    :sswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 434
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v3, "com.sec.android.app.contacts.action.GROUP_EDIT_MEMBER"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 435
    const-string v3, "GroupInfo"

    iget-object v4, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 437
    const-string v3, "AutoAdd"

    iget-boolean v4, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mIsAutoAdd:Z

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 440
    iget v3, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mGroupType:I

    if-ne v3, v5, :cond_1

    .line 441
    const-string v3, "EditMode"

    invoke-virtual {v0, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 446
    :goto_1
    const/4 v3, 0x2

    invoke-virtual {p0, v0, v3}, Lcom/android/contacts/activities/GroupDetailActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 444
    :cond_1
    const-string v3, "EditMode"

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 450
    .end local v0    # "intent":Landroid/content/Intent;
    :sswitch_2
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/android/contacts/activities/GroupEditorActivity;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 451
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v3, "android.intent.action.EDIT"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 452
    const-string v3, "GroupInfo"

    iget-object v4, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 454
    iget v3, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mGroupType:I

    if-ne v3, v5, :cond_2

    .line 455
    const-string v3, "EditMode"

    const/16 v4, 0xf

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 460
    :goto_2
    invoke-virtual {p0, v0, v7}, Lcom/android/contacts/activities/GroupDetailActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 457
    :cond_2
    const-string v3, "EditMode"

    const/16 v4, 0xe

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_2

    .line 464
    .end local v0    # "intent":Landroid/content/Intent;
    :sswitch_3
    new-instance v0, Landroid/content/Intent;

    const-string v3, "intent.action.INTERACTION_GROUP_SELECT_MEMBER"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 465
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v3, "com.sec.android.app.contacts.action.INTERACTION_GROUP_SELECT_MEMBER"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 466
    const-string v3, "GroupInfo"

    iget-object v4, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 467
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Message_DisableMMS"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 468
    const-string v3, "actionCode"

    const/16 v4, 0xaa

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 474
    :goto_3
    const-string v3, "SelectMode"

    iget v4, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mGroupType:I

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 476
    const-string v3, "FromMMS"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 477
    invoke-virtual {p0, v0, v6}, Lcom/android/contacts/activities/GroupDetailActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 471
    :cond_3
    const-string v3, "actionCode"

    const/16 v4, 0x96

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_3

    .line 481
    .end local v0    # "intent":Landroid/content/Intent;
    :sswitch_4
    new-instance v0, Landroid/content/Intent;

    const-string v3, "intent.action.INTERACTION_GROUP_SELECT_MEMBER"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 482
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v3, "com.sec.android.app.contacts.action.INTERACTION_GROUP_SELECT_MEMBER"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 483
    const-string v3, "GroupInfo"

    iget-object v4, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 484
    const-string v3, "actionCode"

    const/16 v4, 0xa0

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 486
    const-string v3, "SelectMode"

    iget v4, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mGroupType:I

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 487
    invoke-virtual {p0, v0, v5}, Lcom/android/contacts/activities/GroupDetailActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 491
    .end local v0    # "intent":Landroid/content/Intent;
    :sswitch_5
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 492
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v3, "com.sec.android.app.contacts.action.CONTACTS_DELETE_IN_GROUP"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 493
    const-string v3, "GroupInfo"

    iget-object v4, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 494
    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/GroupDetailActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 423
    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0904a3 -> :sswitch_5
        0x7f0904b1 -> :sswitch_2
        0x7f0904b3 -> :sswitch_4
        0x7f0904b4 -> :sswitch_3
        0x7f0904bc -> :sswitch_1
    .end sparse-switch
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 511
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mIsOptionsMenuOpen:Z

    .line 512
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onOptionsMenuClosed(Landroid/view/Menu;)V

    .line 513
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 12
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const v11, 0x7f0904b1

    const v10, 0x7f0904a3

    const v9, 0x7f0904bc

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 354
    invoke-static {p0}, Lcom/sec/android/app/contacts/util/ContactsUtil;->hasPermanentMenuKey(Landroid/content/Context;)Z

    move-result v0

    .line 355
    .local v0, "hasPermanentMenuKey":Z
    iget-object v5, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mFragment:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    invoke-virtual {v5}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->isLoading()Z

    move-result v3

    .line 356
    .local v3, "isLoading":Z
    iget-object v5, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-static {v5, p0}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getEditable(Lcom/sec/android/app/contacts/group/GroupInfo;Landroid/content/Context;)Z

    move-result v1

    .line 357
    .local v1, "isEditable":Z
    iget v5, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mGroupType:I

    const/4 v8, 0x5

    if-ne v5, v8, :cond_7

    move v2, v6

    .line 358
    .local v2, "isICEGroup":Z
    :goto_0
    if-eqz v0, :cond_a

    if-nez v3, :cond_a

    if-nez v2, :cond_a

    .line 360
    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 361
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v8, "CscFeature_Contact_EnableUIM"

    invoke-virtual {v5, v8}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v8, "KDDI"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 362
    const v5, 0x7f0904b4

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 366
    :goto_1
    const v5, 0x7f0904b3

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 367
    invoke-interface {p1, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 368
    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 370
    sget-boolean v5, Lcom/android/contacts/ContactsApplication;->TAG_IMS_FEATURE_ENABLED:Z

    if-eqz v5, :cond_9

    .line 371
    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/activities/GroupDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f0e0021

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v8, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {v8}, Lcom/sec/android/app/contacts/group/GroupInfo;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 372
    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 374
    :cond_0
    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/contacts/activities/GroupDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f0e0021

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v8, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {v8}, Lcom/sec/android/app/contacts/group/GroupInfo;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 375
    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 376
    invoke-interface {p1, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 385
    :cond_1
    :goto_2
    invoke-static {p0}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isMMSAvailable(Landroid/content/Context;)Z

    move-result v4

    .line 386
    .local v4, "isSMSAvailable":Z
    if-nez v4, :cond_2

    .line 387
    const v5, 0x7f0904b4

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 389
    :cond_2
    iget-boolean v5, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mIsAutoAdd:Z

    if-eqz v5, :cond_3

    const-string v5, "com.google"

    iget-object v8, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {v8}, Lcom/sec/android/app/contacts/group/GroupInfo;->getAccountType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 390
    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 392
    :cond_3
    iget v5, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mGroupType:I

    if-ne v5, v6, :cond_4

    .line 393
    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 395
    :cond_4
    iget-object v5, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mFragment:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    invoke-virtual {v5}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/list/ContactListAdapter;

    invoke-virtual {v5}, Lcom/android/contacts/list/ContactListAdapter;->getCount()I

    move-result v5

    if-nez v5, :cond_5

    .line 396
    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 397
    const v5, 0x7f0904b4

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 398
    const v5, 0x7f0904b3

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 399
    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 402
    :cond_5
    iget v5, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mGroupType:I

    const/4 v8, 0x6

    if-ne v5, v8, :cond_6

    .line 403
    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 404
    invoke-interface {p1, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 405
    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_6
    move v5, v6

    .line 409
    .end local v4    # "isSMSAvailable":Z
    :goto_3
    return v5

    .end local v2    # "isICEGroup":Z
    :cond_7
    move v2, v7

    .line 357
    goto/16 :goto_0

    .line 364
    .restart local v2    # "isICEGroup":Z
    :cond_8
    const v5, 0x7f0904b4

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_1

    .line 379
    :cond_9
    if-nez v1, :cond_1

    .line 380
    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 381
    invoke-interface {p1, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    :cond_a
    move v5, v7

    .line 409
    goto :goto_3
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 206
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 207
    const-string v0, "GroupInfo"

    iget-object v1, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 208
    return-void
.end method
