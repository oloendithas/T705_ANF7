.class public Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;
.super Ljava/lang/Object;
.source "ContactListSweepActionListener.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/contacts/list/DefaultContactListAdapter;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;"
    }
.end annotation


# static fields
.field static final COLUMN_INDEX_DATA:I = 0x1

.field static final COLUMN_INDEX_DATA_MIMETYPE:I = 0x3

.field static final COLUMN_INDEX_IS_SUPER_PRIMARY:I = 0x2

.field static final COLUMN_INDEX_PHONE_CONTACT_ID:I = 0x4

.field static final COLUMN_INDEX_PHONE_ID:I = 0x0

.field static final COLUMN_INDEX_SET_SIMCARD_TO_CALL:I = 0x5

.field private static final SIM_ONE:I = 0x1

.field private static final SIM_ZERO:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ContactListSweepActionListener"


# instance fields
.field final SWEEP_ACTION_PROJECTION:[Ljava/lang/String;

.field private isSuperPrimaryEmail:Z

.field private isSuperPrimaryPhone:Z

.field private mAdapter:Lcom/android/contacts/list/DefaultContactListAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mContactId:I

.field private mContext:Landroid/content/Context;

.field private mEmailAddress:Ljava/lang/String;

.field private mImsLowSignalHelper:Lcom/sec/android/app/contacts/util/ImsLowSignalHelper;

.field private mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

.field private mPhoneNumber:Ljava/lang/String;

.field private mSimCardToCall:I

.field private mSweepActionBarCallBack:Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/touchwiz/widget/TwSweepActionListView;Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;Lcom/android/contacts/list/DefaultContactListAdapter;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listView"    # Lcom/sec/android/touchwiz/widget/TwSweepActionListView;
    .param p3, "sweepActionBarCallBack"    # Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/sec/android/touchwiz/widget/TwSweepActionListView;",
            "Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;, "Lcom/sec/android/app/contacts/list/ContactListSweepActionListener<TT;>;"
    .local p4, "adapter":Lcom/android/contacts/list/DefaultContactListAdapter;, "TT;"
    const/4 v2, 0x0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mSimCardToCall:I

    .line 92
    iput-boolean v2, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->isSuperPrimaryPhone:Z

    .line 93
    iput-boolean v2, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->isSuperPrimaryEmail:Z

    .line 95
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "data1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "is_super_primary"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "mimetype"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "contact_id"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "data15"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->SWEEP_ACTION_PROJECTION:[Ljava/lang/String;

    .line 117
    iput-object p1, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mContext:Landroid/content/Context;

    .line 118
    iput-object p2, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    .line 119
    iput-object p3, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mSweepActionBarCallBack:Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;

    .line 120
    iput-object p4, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mAdapter:Lcom/android/contacts/list/DefaultContactListAdapter;

    .line 121
    return-void
.end method


# virtual methods
.method public onSweepActionCanceled(I)V
    .locals 0
    .param p1, "itemIndex"    # I

    .prologue
    .line 126
    .local p0, "this":Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;, "Lcom/sec/android/app/contacts/list/ContactListSweepActionListener<TT;>;"
    return-void
.end method

.method public onSweepActionFired(II)V
    .locals 10
    .param p1, "itemIndex"    # I
    .param p2, "flickDirection"    # I

    .prologue
    .local p0, "this":Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;, "Lcom/sec/android/app/contacts/list/ContactListSweepActionListener<TT;>;"
    const/4 v7, 0x1

    .line 132
    if-nez p2, :cond_1

    .line 133
    iget-object v5, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mSweepActionBarCallBack:Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;

    invoke-virtual {v5}, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->getHasPhoneNumber()Z

    move-result v5

    if-nez v5, :cond_2

    .line 134
    iget-object v5, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->isActionBarOpen()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 135
    iget-object v5, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v5, v7}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->closeAllActionBar(Z)Z

    .line 246
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    iget-object v5, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mSweepActionBarCallBack:Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;

    invoke-virtual {v5}, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->getHasPhoneNumber()Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mSweepActionBarCallBack:Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;

    invoke-virtual {v5}, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->getHasEmailAddress()Z

    move-result v5

    if-nez v5, :cond_2

    .line 145
    iget-object v5, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->isActionBarOpen()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 146
    iget-object v5, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v5, v7}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->closeAllActionBar(Z)Z

    goto :goto_0

    .line 163
    :cond_2
    if-nez p2, :cond_5

    .line 206
    iget-object v5, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mPhoneNumber:Ljava/lang/String;

    iget-object v6, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mContext:Landroid/content/Context;

    invoke-static {v5, v6}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getCallIntent(Ljava/lang/String;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 208
    .local v0, "callIntent":Landroid/content/Intent;
    const-string v5, "feature_skt"

    invoke-static {v5}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 209
    const-string v5, "call_from_sec"

    invoke-virtual {v0, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 211
    :cond_3
    iget-object v5, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mContext:Landroid/content/Context;

    check-cast v5, Landroid/app/Activity;

    invoke-static {v5}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isPenMultiWindow(Landroid/app/Activity;)Z

    move-result v5

    if-ne v5, v7, :cond_4

    .line 212
    new-instance v2, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    iget-object v5, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mContext:Landroid/content/Context;

    check-cast v5, Landroid/app/Activity;

    invoke-direct {v2, v5}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;-><init>(Landroid/app/Activity;)V

    .line 213
    .local v2, "mMultiWindowActivity":Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;
    invoke-virtual {v2}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->minimizeWindow()V

    .line 216
    .end local v2    # "mMultiWindowActivity":Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;
    :cond_4
    iget-object v5, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 220
    .end local v0    # "callIntent":Landroid/content/Intent;
    :cond_5
    const/4 v1, 0x0

    .line 221
    .local v1, "data":Ljava/lang/String;
    iget-object v5, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mPhoneNumber:Ljava/lang/String;

    if-eqz v5, :cond_8

    iget-boolean v5, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->isSuperPrimaryPhone:Z

    if-eqz v5, :cond_8

    .line 222
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mPhoneNumber:Ljava/lang/String;

    .line 230
    :cond_6
    :goto_1
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.SENDTO"

    const-string v6, "smsto"

    const-string v7, ","

    const-string v8, "P"

    invoke-virtual {v1, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    const-string v8, ";"

    const-string v9, "W"

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 234
    .local v3, "messageIntent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isKnoxMode(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_7

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Contact_EnableCallerIdSearch4Korea"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 236
    const-string v5, "com.android.mms"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 239
    :cond_7
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 240
    .local v4, "rtnData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mContactId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    const-string v7, "P"

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ";"

    const-string v8, "W"

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    const-string v5, "sendto"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 242
    const/high16 v5, 0x14000000

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 244
    iget-object v5, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 223
    .end local v3    # "messageIntent":Landroid/content/Intent;
    .end local v4    # "rtnData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_8
    iget-object v5, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mEmailAddress:Ljava/lang/String;

    if-eqz v5, :cond_9

    iget-boolean v5, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->isSuperPrimaryEmail:Z

    if-eqz v5, :cond_9

    .line 224
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mEmailAddress:Ljava/lang/String;

    goto/16 :goto_1

    .line 225
    :cond_9
    iget-object v5, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mPhoneNumber:Ljava/lang/String;

    if-eqz v5, :cond_a

    .line 226
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mPhoneNumber:Ljava/lang/String;

    goto/16 :goto_1

    .line 227
    :cond_a
    iget-object v5, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mEmailAddress:Ljava/lang/String;

    if-eqz v5, :cond_6

    .line 228
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mEmailAddress:Ljava/lang/String;

    goto/16 :goto_1
.end method

.method public onSweepActionStarted(I)V
    .locals 11
    .param p1, "itemIndex"    # I

    .prologue
    .line 253
    .local p0, "this":Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;, "Lcom/sec/android/app/contacts/list/ContactListSweepActionListener<TT;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mPhoneNumber:Ljava/lang/String;

    .line 254
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mEmailAddress:Ljava/lang/String;

    .line 255
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mSimCardToCall:I

    .line 259
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mAdapter:Lcom/android/contacts/list/DefaultContactListAdapter;

    instance-of v0, v0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;

    if-eqz v0, :cond_2

    .line 260
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getHeaderViewsCount()I

    move-result v0

    sub-int v6, p1, v0

    .line 261
    .local v6, "adjPosition":I
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mAdapter:Lcom/android/contacts/list/DefaultContactListAdapter;

    check-cast v0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;

    invoke-virtual {v0, v6}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->isDefaultICE(I)Z

    move-result v9

    .line 263
    .local v9, "isDefaultICE":Z
    if-eqz v9, :cond_2

    .line 264
    const-string v0, "ContactListSweepActionListener"

    const-string v2, "isDefaultICE"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mAdapter:Lcom/android/contacts/list/DefaultContactListAdapter;

    invoke-virtual {v0, v6}, Lcom/android/contacts/list/DefaultContactListAdapter;->getContactDisplayName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mPhoneNumber:Ljava/lang/String;

    .line 266
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mPhoneNumber:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 267
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mSweepActionBarCallBack:Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->setHasPhoneNumber(Z)V

    .line 400
    .end local v6    # "adjPosition":I
    .end local v9    # "isDefaultICE":Z
    :cond_0
    :goto_0
    return-void

    .line 269
    .restart local v6    # "adjPosition":I
    .restart local v9    # "isDefaultICE":Z
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mSweepActionBarCallBack:Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->setHasPhoneNumber(Z)V

    goto :goto_0

    .line 275
    .end local v6    # "adjPosition":I
    .end local v9    # "isDefaultICE":Z
    :cond_2
    const/4 v8, 0x0

    .line 276
    .local v8, "cursor":Landroid/database/Cursor;
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mAdapter:Lcom/android/contacts/list/DefaultContactListAdapter;

    iget-object v2, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getHeaderViewsCount()I

    move-result v2

    sub-int v2, p1, v2

    invoke-virtual {v0, v2}, Lcom/android/contacts/list/DefaultContactListAdapter;->getContactUri(I)Landroid/net/Uri;

    move-result-object v7

    .line 277
    .local v7, "baseUri":Landroid/net/Uri;
    if-eqz v7, :cond_3

    .line 278
    const-string v0, "entities"

    invoke-static {v7, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 287
    .local v1, "uri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->SWEEP_ACTION_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 291
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->isSuperPrimaryPhone:Z

    .line 292
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->isSuperPrimaryEmail:Z

    .line 294
    if-eqz v8, :cond_12

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_12

    .line 296
    const/4 v0, -0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->move(I)Z

    .line 297
    :cond_4
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 299
    const-string v0, "vnd.android.cursor.item/phone_v2"

    const/4 v2, 0x3

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "vnd.android.cursor.item/email_v2"

    const/4 v2, 0x3

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 305
    :cond_5
    const/4 v0, 0x2

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 306
    .local v10, "isSuperPrimary":I
    if-lez v10, :cond_4

    .line 307
    const-string v0, "vnd.android.cursor.item/email_v2"

    const/4 v2, 0x3

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 308
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mEmailAddress:Ljava/lang/String;

    .line 309
    const/4 v0, 0x4

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mContactId:I

    .line 310
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->isSuperPrimaryEmail:Z

    .line 313
    :cond_6
    const-string v0, "vnd.android.cursor.item/phone_v2"

    const/4 v2, 0x3

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 314
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mPhoneNumber:Ljava/lang/String;

    .line 315
    const/4 v0, 0x4

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mContactId:I

    .line 325
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->isSuperPrimaryPhone:Z

    .line 328
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mPhoneNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mEmailAddress:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 338
    .end local v10    # "isSuperPrimary":I
    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mPhoneNumber:Ljava/lang/String;

    if-nez v0, :cond_a

    .line 339
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 341
    :cond_9
    const-string v0, "vnd.android.cursor.item/phone_v2"

    const/4 v2, 0x3

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 343
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mPhoneNumber:Ljava/lang/String;

    .line 344
    const/4 v0, 0x4

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mContactId:I

    .line 357
    :cond_a
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mPhoneNumber:Ljava/lang/String;

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mEmailAddress:Ljava/lang/String;

    if-nez v0, :cond_c

    .line 358
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 360
    :cond_b
    const-string v0, "vnd.android.cursor.item/email_v2"

    const/4 v2, 0x3

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 362
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mEmailAddress:Ljava/lang/String;

    .line 363
    const/4 v0, 0x4

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mContactId:I

    .line 376
    :cond_c
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mPhoneNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 377
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mSweepActionBarCallBack:Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->setHasPhoneNumber(Z)V

    .line 378
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mSweepActionBarCallBack:Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->setHasEmailAddress(Z)V

    .line 387
    :goto_3
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v2, "CscFeature_Message_DisableMMS"

    invoke-virtual {v0, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 388
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mSweepActionBarCallBack:Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->setHasEmailAddress(Z)V

    .line 391
    :cond_d
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 397
    :goto_4
    if-eqz v8, :cond_0

    .line 398
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 354
    :cond_e
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_1

    .line 373
    :cond_f
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_2

    .line 379
    :cond_10
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mEmailAddress:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 380
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mSweepActionBarCallBack:Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->setHasPhoneNumber(Z)V

    .line 381
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mSweepActionBarCallBack:Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->setHasEmailAddress(Z)V

    goto :goto_3

    .line 383
    :cond_11
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mSweepActionBarCallBack:Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->setHasPhoneNumber(Z)V

    .line 384
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mSweepActionBarCallBack:Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->setHasEmailAddress(Z)V

    goto :goto_3

    .line 393
    :cond_12
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mSweepActionBarCallBack:Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->setHasPhoneNumber(Z)V

    .line 394
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mSweepActionBarCallBack:Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->setHasEmailAddress(Z)V

    goto :goto_4
.end method

.method public setImsLowSignalHelper(Lcom/sec/android/app/contacts/util/ImsLowSignalHelper;)V
    .locals 0
    .param p1, "imsLowSignalHelper"    # Lcom/sec/android/app/contacts/util/ImsLowSignalHelper;

    .prologue
    .line 405
    .local p0, "this":Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;, "Lcom/sec/android/app/contacts/list/ContactListSweepActionListener<TT;>;"
    iput-object p1, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mImsLowSignalHelper:Lcom/sec/android/app/contacts/util/ImsLowSignalHelper;

    .line 406
    return-void
.end method
