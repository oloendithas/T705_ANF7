.class public Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;
.super Lcom/android/contacts/list/DefaultContactListAdapter;
.source "GroupMemberBrowseListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter$Listener;
    }
.end annotation


# static fields
.field protected static final CONTACT_DEFAULT_EMERGENCY_COLUMN_INDEX:I = 0xf

.field protected static final PROJECTION_ICE_CONTACT:[Ljava/lang/String;


# instance fields
.field private TAG:Ljava/lang/String;

.field private mFromEmergencyDial:Z

.field protected mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

.field private mIsOnlyDefaultAvailable:Z

.field private mIsPhone:Z

.field private mIsSMSAvailable:Z

.field private mListener:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter$Listener;

.field protected mMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 64
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "display_name_alt"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "sort_key"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "starred"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "contact_presence"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "contact_status"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "photo_id"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "photo_thumb_uri"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "lookup"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "phonetic_name"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "has_phone_number"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "sort_key_alt"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "link"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "is_user_profile"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "default_emergency"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "has_email"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->PROJECTION_ICE_CONTACT:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/android/contacts/list/DefaultContactListAdapter;-><init>(Landroid/content/Context;)V

    .line 88
    const-string v0, "GroupMemberBrowseListAdapter"

    iput-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->TAG:Ljava/lang/String;

    .line 111
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->mIsPhone:Z

    .line 112
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isMMSAvailable(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->mIsSMSAvailable:Z

    .line 114
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;Landroid/net/Uri;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->addToGroup(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;Landroid/net/Uri;Lcom/sec/android/app/contacts/group/GroupInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;
    .param p1, "x1"    # Landroid/net/Uri;
    .param p2, "x2"    # Lcom/sec/android/app/contacts/group/GroupInfo;

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->removeMember(Landroid/net/Uri;Lcom/sec/android/app/contacts/group/GroupInfo;)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;)Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->mListener:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter$Listener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->mIsPhone:Z

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->actionCall(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->mIsSMSAvailable:Z

    return v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->sendMessage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->sendEmail(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;Landroid/net/Uri;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->removeFromICE(Landroid/net/Uri;)V

    return-void
.end method

.method private actionCall(Ljava/lang/String;)V
    .locals 4
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 611
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    const-string v2, "tel"

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 613
    .local v0, "callIntent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 614
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 615
    return-void
.end method

.method private addToGroup(Landroid/net/Uri;)V
    .locals 7
    .param p1, "contactUri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    .line 578
    if-eqz p1, :cond_0

    .line 579
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 580
    .local v0, "groupCheckedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 582
    .local v1, "groupTitles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 583
    .local v2, "intent":Landroid/content/Intent;
    const-string v4, "android.intent.extra.CONTACT_ID"

    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v5

    invoke-virtual {v2, v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 585
    const-string v4, "android.intent.extra.EXTRA_GROUP_CHECKED_LIST"

    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 587
    const-string v4, "android.intent.extra.EXTRA_GROUP_CHECKED_STRING_LIST"

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 589
    const-string v4, "android.intent.extra.EXTRA_GROUP_IS_GOOGLE"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 591
    const-string v4, "hasPhoneNumber"

    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->getPhonenumber(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    :goto_0
    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 592
    iget-object v3, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 594
    .end local v0    # "groupCheckedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v1    # "groupTitles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    return-void

    .line 591
    .restart local v0    # "groupCheckedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v1    # "groupTitles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v2    # "intent":Landroid/content/Intent;
    :cond_1
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private configureSelection(Landroid/content/CursorLoader;JI)V
    .locals 8
    .param p1, "loader"    # Landroid/content/CursorLoader;
    .param p2, "directoryId"    # J
    .param p4, "mode"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 371
    const-wide/16 v3, 0x0

    cmp-long v3, p2, v3

    if-eqz v3, :cond_1

    .line 411
    :cond_0
    :goto_0
    return-void

    .line 374
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "configureSelection mode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Contact_EnableUIM"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "KDDI"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-ne v3, v7, :cond_3

    :cond_2
    const/4 v3, 0x5

    if-ne p4, v3, :cond_3

    .line 378
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 379
    .local v0, "selection":Ljava/lang/StringBuilder;
    const-string v3, "default_emergency"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " != "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "2"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    goto :goto_0

    .line 383
    .end local v0    # "selection":Ljava/lang/StringBuilder;
    :cond_3
    iget-boolean v3, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->mFromEmergencyDial:Z

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->mIsOnlyDefaultAvailable:Z

    if-eqz v3, :cond_4

    .line 384
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 385
    .restart local v0    # "selection":Ljava/lang/StringBuilder;
    const-string v3, "default_emergency"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "2"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    goto :goto_0

    .line 387
    .end local v0    # "selection":Ljava/lang/StringBuilder;
    :cond_4
    iget-boolean v3, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->mFromEmergencyDial:Z

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->mIsOnlyDefaultAvailable:Z

    if-nez v3, :cond_5

    .line 388
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 389
    .restart local v0    # "selection":Ljava/lang/StringBuilder;
    const-string v3, "has_phone_number"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 391
    .end local v0    # "selection":Ljava/lang/StringBuilder;
    :cond_5
    const/4 v3, 0x4

    if-ne p4, v3, :cond_6

    .line 392
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 393
    .local v2, "selectionArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {v3}, Lcom/sec/android/app/contacts/group/GroupInfo;->getAccountType()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 394
    iget-object v3, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {v3}, Lcom/sec/android/app/contacts/group/GroupInfo;->getAccountName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 395
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    .line 396
    new-array v3, v6, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/content/CursorLoader;->setSelectionArgs([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 397
    .end local v2    # "selectionArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_6
    const/4 v3, 0x6

    if-ne p4, v3, :cond_0

    .line 398
    iget-object v3, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mGroupInfo.getTitle() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {v5}, Lcom/sec/android/app/contacts/group/GroupInfo;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 400
    .local v0, "selection":Ljava/lang/StringBuffer;
    const-string v3, "mimetype"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 401
    const-string v3, " = ? AND "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 402
    const-string v3, " data5 = 3 "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 404
    const/4 v1, 0x0

    .line 405
    .local v1, "selectionArg":[Ljava/lang/String;
    new-array v1, v7, [Ljava/lang/String;

    .end local v1    # "selectionArg":[Ljava/lang/String;
    const-string v3, "vnd.android.cursor.item/phone_v2"

    aput-object v3, v1, v6

    .line 408
    .restart local v1    # "selectionArg":[Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    .line 409
    invoke-virtual {p1, v1}, Landroid/content/CursorLoader;->setSelectionArgs([Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private createFilterUriBuilder(I)Landroid/net/Uri$Builder;
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 414
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    if-nez v1, :cond_0

    .line 415
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->TAG:Ljava/lang/String;

    const-string v2, "configureUri : groupInfo is null"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Can\'t generate URI: GroupInfo is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 418
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-static {v1, p1}, Lcom/sec/android/app/contacts/util/ContactsUtil;->generateGroupMemberFilterUriBuilder(Lcom/sec/android/app/contacts/group/GroupInfo;I)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 419
    .local v0, "builder":Landroid/net/Uri$Builder;
    return-object v0
.end method

.method private createMenuWidgetFromView(Landroid/view/View;ILandroid/database/Cursor;Lcom/sec/android/app/contacts/group/GroupInfo;I)Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;
    .locals 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "partition"    # I
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "info"    # Lcom/sec/android/app/contacts/group/GroupInfo;
    .param p5, "position"    # I

    .prologue
    .line 432
    invoke-virtual {p0, p2, p3}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->getContactUri(ILandroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v2

    .line 433
    .local v2, "contactUri":Landroid/net/Uri;
    move-object v4, p4

    .line 434
    .local v4, "groupInfo":Lcom/sec/android/app/contacts/group/GroupInfo;
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->mContext:Landroid/content/Context;

    invoke-static {p4, v0}, Lcom/sec/android/app/contacts/util/ContactsUtil;->parseGroupType(Lcom/sec/android/app/contacts/group/GroupInfo;Landroid/content/Context;)I

    move-result v3

    .line 435
    .local v3, "groupType":I
    move/from16 v5, p5

    .line 436
    .local v5, "itemPositon":I
    const/16 v0, 0xb

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v8, 0x1

    .line 437
    .local v8, "hasPhoneNumber":Z
    :goto_0
    const/16 v0, 0x10

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v7, 0x1

    .line 441
    .local v7, "hasEmail":Z
    :goto_1
    instance-of v0, p1, Landroid/widget/QuickContactBadge;

    if-eqz v0, :cond_2

    .line 442
    new-instance v6, Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;

    invoke-direct {p0, v2, v3, v8, v7}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->getAdapterMenuList(Landroid/net/Uri;IZZ)Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {v6, p1, v0, v1}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;-><init>(Landroid/view/View;Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;I)V

    .line 456
    .local v6, "airButtonWidget":Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;
    :goto_2
    const/4 v0, 0x5

    invoke-virtual {v6, v0}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;->setGravity(I)V

    .line 457
    new-instance v0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter$1;-><init>(Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;Landroid/net/Uri;ILcom/sec/android/app/contacts/group/GroupInfo;I)V

    invoke-virtual {v6, v0}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;->setItemSelectListener(Lcom/samsung/android/sdk/look/airbutton/SlookAirButton$ItemSelectListener;)V

    .line 542
    return-object v6

    .line 436
    .end local v6    # "airButtonWidget":Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;
    .end local v7    # "hasEmail":Z
    .end local v8    # "hasPhoneNumber":Z
    :cond_0
    const/4 v8, 0x0

    goto :goto_0

    .line 437
    .restart local v8    # "hasPhoneNumber":Z
    :cond_1
    const/4 v7, 0x0

    goto :goto_1

    .restart local v7    # "hasEmail":Z
    :cond_2
    move-object v9, p1

    .line 445
    check-cast v9, Lcom/android/contacts/list/ContactListItemView;

    .line 446
    .local v9, "itemView":Lcom/android/contacts/list/ContactListItemView;
    invoke-virtual {v9}, Lcom/android/contacts/list/ContactListItemView;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    .line 447
    new-instance v6, Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;

    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Lcom/android/contacts/list/ContactListItemView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v2, v3, v8, v7}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->getAdapterMenuList(Landroid/net/Uri;IZZ)Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    move-result-object v1

    const/4 v10, 0x1

    invoke-direct {v6, v0, v1, v10}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;-><init>(Landroid/view/View;Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;I)V

    .restart local v6    # "airButtonWidget":Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;
    goto :goto_2

    .line 451
    .end local v6    # "airButtonWidget":Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;
    :cond_3
    new-instance v6, Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;

    invoke-direct {p0, v2, v3, v8, v7}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->getAdapterMenuList(Landroid/net/Uri;IZZ)Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {v6, v9, v0, v1}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;-><init>(Landroid/view/View;Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;I)V

    .restart local v6    # "airButtonWidget":Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;
    goto :goto_2
.end method

.method private getAdapterMenuList(Landroid/net/Uri;IZZ)Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;
    .locals 7
    .param p1, "contactUri"    # Landroid/net/Uri;
    .param p2, "groupType"    # I
    .param p3, "hasPhoneNumber"    # Z
    .param p4, "hasEmail"    # Z

    .prologue
    const v6, 0x7f0208c0

    const/4 v5, 0x0

    .line 546
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 548
    .local v0, "itemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;>;"
    const/4 v1, 0x1

    if-ne p2, v1, :cond_5

    .line 549
    new-instance v1, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;

    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02087b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0228

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v5}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 555
    :cond_0
    :goto_0
    if-eqz p3, :cond_2

    .line 556
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->mIsPhone:Z

    if-eqz v1, :cond_1

    .line 557
    new-instance v1, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;

    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020880

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e031f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v5}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 560
    :cond_1
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->mIsSMSAvailable:Z

    if-eqz v1, :cond_2

    .line 561
    new-instance v1, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;

    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0208cd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0233

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v5}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 565
    :cond_2
    if-eqz p4, :cond_3

    .line 566
    new-instance v1, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;

    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0208cb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0232

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v5}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 569
    :cond_3
    const/4 v1, 0x5

    if-ne p2, v1, :cond_4

    .line 570
    new-instance v1, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;

    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0264

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v5}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 574
    :cond_4
    new-instance v1, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    invoke-direct {v1, v0}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;-><init>(Ljava/util/ArrayList;)V

    return-object v1

    .line 551
    :cond_5
    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    .line 552
    new-instance v1, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;

    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0256

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v5}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method private removeFromICE(Landroid/net/Uri;)V
    .locals 9
    .param p1, "contactUri"    # Landroid/net/Uri;

    .prologue
    .line 631
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v6

    .line 632
    .local v6, "contactId":J
    const/4 v0, 0x1

    new-array v2, v0, [J

    const/4 v0, 0x0

    aput-wide v6, v2, v0

    .line 636
    .local v2, "membersToEditArray":[J
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "editMemberCompleted"

    const/4 v5, 0x4

    invoke-static/range {v0 .. v5}, Lcom/android/contacts/ContactSaveService;->createMemberUpdateOnlyIntent(Landroid/content/Context;Lcom/sec/android/app/contacts/group/GroupInfo;[JLjava/lang/Class;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v8

    .line 640
    .local v8, "removeIntent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v8}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 641
    return-void
.end method

.method private removeMember(Landroid/net/Uri;Lcom/sec/android/app/contacts/group/GroupInfo;)V
    .locals 9
    .param p1, "contactUri"    # Landroid/net/Uri;
    .param p2, "groupInfo"    # Lcom/sec/android/app/contacts/group/GroupInfo;

    .prologue
    const/4 v3, 0x0

    .line 597
    if-eqz p1, :cond_0

    .line 598
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v6

    .line 599
    .local v6, "contactId":J
    const/4 v0, 0x1

    new-array v2, v0, [J

    const/4 v0, 0x0

    aput-wide v6, v2, v0

    .line 603
    .local v2, "membersToEditArray":[J
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v5, 0x4

    move-object v1, p2

    move-object v4, v3

    invoke-static/range {v0 .. v5}, Lcom/android/contacts/ContactSaveService;->createMemberUpdateOnlyIntent(Landroid/content/Context;Lcom/sec/android/app/contacts/group/GroupInfo;[JLjava/lang/Class;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v8

    .line 606
    .local v8, "removeIntent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v8}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 608
    .end local v2    # "membersToEditArray":[J
    .end local v6    # "contactId":J
    .end local v8    # "removeIntent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private sendEmail(Ljava/lang/String;)V
    .locals 4
    .param p1, "emailAddress"    # Ljava/lang/String;

    .prologue
    .line 624
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    const-string v2, "mailto"

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 626
    .local v0, "emailIntent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 627
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 628
    return-void
.end method

.method private sendMessage(Ljava/lang/String;)V
    .locals 4
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 618
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    const-string v2, "smsto"

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 620
    .local v0, "messageIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 621
    return-void
.end method


# virtual methods
.method protected bindPhoto(Lcom/android/contacts/list/ContactListItemView;ILandroid/database/Cursor;)V
    .locals 3
    .param p1, "view"    # Lcom/android/contacts/list/ContactListItemView;
    .param p2, "partitionIndex"    # I
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 197
    iget v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->mMode:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 198
    const/16 v1, 0xf

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 199
    .local v0, "defaultEmergency":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 200
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_EnableAAB"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 202
    invoke-virtual {p1}, Lcom/android/contacts/list/ContactListItemView;->getPhotoView()Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f020001

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 210
    .end local v0    # "defaultEmergency":I
    :goto_0
    return-void

    .line 204
    .restart local v0    # "defaultEmergency":I
    :cond_0
    invoke-virtual {p1}, Lcom/android/contacts/list/ContactListItemView;->getPhotoView()Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f0205ef

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 209
    .end local v0    # "defaultEmergency":I
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/contacts/list/DefaultContactListAdapter;->bindPhoto(Lcom/android/contacts/list/ContactListItemView;ILandroid/database/Cursor;)V

    goto :goto_0
.end method

.method protected bindSectionHeaderAndDivider(Lcom/android/contacts/list/ContactListItemView;ILandroid/database/Cursor;)V
    .locals 10
    .param p1, "view"    # Lcom/android/contacts/list/ContactListItemView;
    .param p2, "position"    # I
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    const v9, 0x7f02060a

    const/4 v8, 0x0

    const/16 v7, 0xf

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 215
    iget v5, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->mMode:I

    const/4 v6, 0x5

    if-ne v5, v6, :cond_a

    .line 216
    invoke-virtual {p1, v8}, Lcom/android/contacts/list/ContactListItemView;->setCountView(Ljava/lang/CharSequence;)V

    .line 217
    invoke-interface {p3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 218
    .local v0, "defaultEmergency":I
    if-nez p2, :cond_4

    .line 219
    const/4 v5, 0x2

    if-ne v0, v5, :cond_1

    .line 220
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e0265

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5, v4}, Lcom/android/contacts/list/ContactListItemView;->setSectionHeader(Ljava/lang/String;Z)V

    .line 227
    :goto_0
    iget-object v5, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 228
    invoke-virtual {p1, v9}, Lcom/android/contacts/list/ContactListItemView;->setSectionHeaderBackGround(I)V

    .line 230
    :cond_0
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 231
    invoke-interface {p3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 233
    .local v1, "nextDefaultEmergency":I
    if-ne v0, v1, :cond_2

    :goto_1
    invoke-virtual {p1, v3}, Lcom/android/contacts/list/ContactListItemView;->setDividerVisible(Z)V

    .line 239
    .end local v1    # "nextDefaultEmergency":I
    :goto_2
    invoke-interface {p3, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 273
    .end local v0    # "defaultEmergency":I
    :goto_3
    return-void

    .line 223
    .restart local v0    # "defaultEmergency":I
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e0266

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5, v4}, Lcom/android/contacts/list/ContactListItemView;->setSectionHeader(Ljava/lang/String;Z)V

    goto :goto_0

    .restart local v1    # "nextDefaultEmergency":I
    :cond_2
    move v3, v4

    .line 233
    goto :goto_1

    .line 236
    .end local v1    # "nextDefaultEmergency":I
    :cond_3
    invoke-virtual {p1, v3}, Lcom/android/contacts/list/ContactListItemView;->setDividerVisible(Z)V

    goto :goto_2

    .line 242
    :cond_4
    invoke-interface {p3}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 243
    invoke-interface {p3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 245
    .local v2, "prevDefaultEmergency":I
    if-eq v0, v2, :cond_6

    .line 246
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e0266

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5, v4}, Lcom/android/contacts/list/ContactListItemView;->setSectionHeader(Ljava/lang/String;Z)V

    .line 249
    iget-object v5, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 250
    invoke-virtual {p1, v9}, Lcom/android/contacts/list/ContactListItemView;->setSectionHeaderBackGround(I)V

    .line 256
    :cond_5
    :goto_4
    invoke-interface {p3, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 260
    .end local v2    # "prevDefaultEmergency":I
    :goto_5
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 261
    invoke-interface {p3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 263
    .restart local v1    # "nextDefaultEmergency":I
    if-ne v0, v1, :cond_8

    :goto_6
    invoke-virtual {p1, v3}, Lcom/android/contacts/list/ContactListItemView;->setDividerVisible(Z)V

    .line 267
    .end local v1    # "nextDefaultEmergency":I
    :goto_7
    invoke-interface {p3, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    goto :goto_3

    .line 253
    .restart local v2    # "prevDefaultEmergency":I
    :cond_6
    invoke-virtual {p1, v8}, Lcom/android/contacts/list/ContactListItemView;->setSectionHeader(Ljava/lang/String;)V

    goto :goto_4

    .line 258
    .end local v2    # "prevDefaultEmergency":I
    :cond_7
    invoke-virtual {p1, v8}, Lcom/android/contacts/list/ContactListItemView;->setSectionHeader(Ljava/lang/String;)V

    goto :goto_5

    .restart local v1    # "nextDefaultEmergency":I
    :cond_8
    move v3, v4

    .line 263
    goto :goto_6

    .line 265
    .end local v1    # "nextDefaultEmergency":I
    :cond_9
    invoke-virtual {p1, v3}, Lcom/android/contacts/list/ContactListItemView;->setDividerVisible(Z)V

    goto :goto_7

    .line 271
    .end local v0    # "defaultEmergency":I
    :cond_a
    invoke-super {p0, p1, p2, p3}, Lcom/android/contacts/list/DefaultContactListAdapter;->bindSectionHeaderAndDivider(Lcom/android/contacts/list/ContactListItemView;ILandroid/database/Cursor;)V

    goto :goto_3
.end method

.method protected bindView(Landroid/view/View;ILandroid/database/Cursor;I)V
    .locals 3
    .param p1, "itemView"    # Landroid/view/View;
    .param p2, "partition"    # I
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "position"    # I

    .prologue
    .line 165
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/contacts/list/DefaultContactListAdapter;->bindView(Landroid/view/View;ILandroid/database/Cursor;I)V

    move-object v0, p1

    .line 166
    check-cast v0, Lcom/android/contacts/list/ContactListItemView;

    .line 167
    .local v0, "view":Lcom/android/contacts/list/ContactListItemView;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_EnableCallButtonInList"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 169
    invoke-virtual {v0}, Lcom/android/contacts/list/ContactListItemView;->DelListCallButton()V

    .line 171
    :cond_0
    return-void
.end method

.method public configureLoader(Landroid/content/CursorLoader;J)V
    .locals 9
    .param p1, "loader"    # Landroid/content/CursorLoader;
    .param p2, "directoryId"    # J

    .prologue
    .line 277
    instance-of v0, p1, Lcom/android/contacts/list/ProfileAndContactsLoader;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 278
    check-cast v0, Lcom/android/contacts/list/ProfileAndContactsLoader;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ProfileAndContactsLoader;->setLoadProfile(Z)V

    .line 281
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->getFilter()Lcom/android/contacts/list/ContactListFilter;

    move-result-object v4

    .line 282
    .local v4, "filter":Lcom/android/contacts/list/ContactListFilter;
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->getMode()I

    move-result v5

    .line 283
    .local v5, "mode":I
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->isSearchMode()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 284
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->getQueryString()Ljava/lang/String;

    move-result-object v7

    .line 285
    .local v7, "query":Ljava/lang/String;
    if-nez v7, :cond_1

    .line 286
    const-string v7, ""

    .line 288
    :cond_1
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 289
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 292
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 293
    sget-object v0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->PROJECTION_CONTACT:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    .line 294
    const-string v0, "0"

    invoke-virtual {p1, v0}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    .line 328
    .end local v7    # "query":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->getSortOrder()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    .line 329
    const-string v8, "sort_key"

    .line 334
    .local v8, "sortOrder":Ljava/lang/String;
    :goto_1
    invoke-virtual {p1, v8}, Landroid/content/CursorLoader;->setSortOrder(Ljava/lang/String;)V

    .line 335
    return-void

    .line 298
    .end local v8    # "sortOrder":Ljava/lang/String;
    .restart local v7    # "query":Ljava/lang/String;
    :cond_2
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_3

    const-wide/16 v0, 0x1

    cmp-long v0, p2, v0

    if-eqz v0, :cond_3

    .line 299
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    .line 300
    .local v6, "builder":Landroid/net/Uri$Builder;
    invoke-virtual {v6, v7}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 301
    const-string v0, "directory"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 303
    const-string v0, "limit"

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->getDirectoryResultLimit()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 312
    :goto_2
    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 313
    const/4 v0, 0x5

    if-ne v5, v0, :cond_4

    .line 314
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->TAG:Ljava/lang/String;

    const-string v1, "Loader searchice projection"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    sget-object v0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->PROJECTION_ICE_CONTACT:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    goto :goto_0

    .line 307
    .end local v6    # "builder":Landroid/net/Uri$Builder;
    :cond_3
    invoke-direct {p0, v5}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->createFilterUriBuilder(I)Landroid/net/Uri$Builder;

    move-result-object v6

    .line 308
    .restart local v6    # "builder":Landroid/net/Uri$Builder;
    invoke-virtual {v6, v7}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 310
    invoke-direct {p0, p1, p2, p3, v5}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->configureSelection(Landroid/content/CursorLoader;JI)V

    goto :goto_2

    .line 317
    :cond_4
    sget-object v0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->FILTER_PROJECTION_WITHOUT_SNIPPET:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    goto :goto_0

    .line 322
    .end local v6    # "builder":Landroid/net/Uri$Builder;
    .end local v7    # "query":Ljava/lang/String;
    :cond_5
    invoke-virtual {p0, p1, p2, p3, v5}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->configureUri(Landroid/content/CursorLoader;JI)V

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    .line 323
    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->configureProjection(Landroid/content/CursorLoader;JLcom/android/contacts/list/ContactListFilter;I)V

    .line 324
    invoke-direct {p0, p1, p2, p3, v5}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->configureSelection(Landroid/content/CursorLoader;JI)V

    goto :goto_0

    .line 331
    :cond_6
    const-string v8, "sort_key_alt"

    .restart local v8    # "sortOrder":Ljava/lang/String;
    goto :goto_1
.end method

.method protected configureProjection(Landroid/content/CursorLoader;JLcom/android/contacts/list/ContactListFilter;I)V
    .locals 2
    .param p1, "loader"    # Landroid/content/CursorLoader;
    .param p2, "directoryId"    # J
    .param p4, "filter"    # Lcom/android/contacts/list/ContactListFilter;
    .param p5, "mode"    # I

    .prologue
    .line 360
    const/4 v0, 0x5

    if-ne p5, v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->TAG:Ljava/lang/String;

    const-string v1, "Loader ice projection"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    sget-object v0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->PROJECTION_ICE_CONTACT:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    .line 368
    :goto_0
    return-void

    .line 363
    :cond_0
    const/4 v0, 0x6

    if-ne p5, v0, :cond_1

    .line 364
    sget-object v0, Lcom/sec/android/app/contacts/group/AutoGroupingQueryHelper$VideoCallGroup;->PROJECTION_VIDEOCALL:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    goto :goto_0

    .line 366
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->configureProjection(Landroid/content/CursorLoader;JLcom/android/contacts/list/ContactListFilter;)V

    goto :goto_0
.end method

.method protected configureUri(Landroid/content/CursorLoader;JI)V
    .locals 6
    .param p1, "loader"    # Landroid/content/CursorLoader;
    .param p2, "directoryId"    # J
    .param p4, "groupType"    # I

    .prologue
    const-wide/16 v4, 0x0

    .line 338
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    if-nez v1, :cond_0

    .line 339
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->TAG:Ljava/lang/String;

    const-string v2, "configureUri : groupInfo is null"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    :goto_0
    return-void

    .line 342
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-static {v1, p4}, Lcom/sec/android/app/contacts/util/ContactsUtil;->generateGroupMemberUri(Lcom/sec/android/app/contacts/group/GroupInfo;I)Landroid/net/Uri;

    move-result-object v0

    .line 343
    .local v0, "uri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mGroupInfo.getAccountName() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {v3}, Lcom/sec/android/app/contacts/group/GroupInfo;->getAccountName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    const-string v1, "VideoCalling"

    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/group/GroupInfo;->getAccountName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 345
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->TAG:Ljava/lang/String;

    const-string v2, "TITLE_VIDEO_CALLING_GROUP should not be called"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    cmp-long v1, p2, v4

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 347
    invoke-static {v0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->buildSectionIndexerUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 350
    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "directory"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 355
    :cond_2
    invoke-virtual {p1, v0}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public getDefaultEmergencyColumnIndex()I
    .locals 1

    .prologue
    .line 423
    const/16 v0, 0xf

    return v0
.end method

.method public getLinkedAccounts(I)Ljava/lang/String;
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 152
    const/4 v1, 0x0

    .line 153
    .local v1, "linkedAccounts":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 154
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/Cursor;

    const/16 v3, 0xd

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 157
    :cond_0
    return-object v1
.end method

.method protected getMode()I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->mMode:I

    return v0
.end method

.method public isDefaultICE(I)Z
    .locals 4
    .param p1, "position"    # I

    .prologue
    const/4 v2, 0x0

    .line 133
    :try_start_0
    iget v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->mMode:I

    const/4 v3, 0x5

    if-ne v1, v3, :cond_0

    .line 134
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/Cursor;

    const/16 v3, 0xf

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    const/4 v1, 0x1

    :goto_0
    move v2, v1

    .line 141
    :cond_0
    :goto_1
    return v2

    :cond_1
    move v1, v2

    .line 134
    goto :goto_0

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Ljava/lang/NullPointerException;
    goto :goto_1

    .line 140
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 141
    .local v0, "e":Ljava/lang/IllegalStateException;
    goto :goto_1
.end method

.method public isGroupInfoLoaded()Z
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "partition"    # I
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "position"    # I
    .param p5, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 180
    invoke-super/range {p0 .. p5}, Lcom/android/contacts/list/DefaultContactListAdapter;->newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 191
    .local v0, "view":Landroid/view/View;
    return-object v0
.end method

.method public setCheck(JZ)V
    .locals 3
    .param p1, "contactId"    # J
    .param p3, "checked"    # Z

    .prologue
    .line 117
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->mCheckedIds:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    return-void
.end method

.method public setFromEmergencyDial(ZZ)V
    .locals 0
    .param p1, "fromEmergencyDial"    # Z
    .param p2, "isOnlyDefaultAvailable"    # Z

    .prologue
    .line 146
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->mFromEmergencyDial:Z

    .line 147
    iput-boolean p2, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->mIsOnlyDefaultAvailable:Z

    .line 148
    return-void
.end method

.method protected setGroupInfo(Lcom/sec/android/app/contacts/group/GroupInfo;)V
    .locals 0
    .param p1, "groupInfo"    # Lcom/sec/android/app/contacts/group/GroupInfo;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    .line 129
    return-void
.end method

.method public setListener(Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter$Listener;)V
    .locals 0
    .param p1, "value"    # Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter$Listener;

    .prologue
    .line 428
    iput-object p1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->mListener:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter$Listener;

    .line 429
    return-void
.end method

.method protected setMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 120
    iput p1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->mMode:I

    .line 121
    return-void
.end method
