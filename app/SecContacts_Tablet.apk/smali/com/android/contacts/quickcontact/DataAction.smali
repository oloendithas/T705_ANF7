.class public Lcom/android/contacts/quickcontact/DataAction;
.super Ljava/lang/Object;
.source "DataAction.java"

# interfaces
.implements Lcom/android/contacts/quickcontact/Action;


# static fields
.field private static final TAG:Ljava/lang/String; = "DataAction"

.field private static mHasPhone:Z

.field private static mHasSms:Z

.field private static mIsEasyMode:Z


# instance fields
.field private mAlternateIconRes:I

.field private mAlternateIntent:Landroid/content/Intent;

.field private mBody:Ljava/lang/CharSequence;

.field private final mContext:Landroid/content/Context;

.field private mDataId:J

.field private mDataUri:Landroid/net/Uri;

.field private mIntent:Landroid/content/Intent;

.field private mIsPrimary:Z

.field private final mKind:Lcom/android/contacts/model/DataKind;

.field private final mMimeType:Ljava/lang/String;

.field private mSubtitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/contacts/model/DataKind;J)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "kind"    # Lcom/android/contacts/model/DataKind;
    .param p4, "dataId"    # J

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/quickcontact/DataAction;->mDataUri:Landroid/net/Uri;

    .line 87
    iput-object p1, p0, Lcom/android/contacts/quickcontact/DataAction;->mContext:Landroid/content/Context;

    .line 88
    iput-object p3, p0, Lcom/android/contacts/quickcontact/DataAction;->mKind:Lcom/android/contacts/model/DataKind;

    .line 89
    iput-object p2, p0, Lcom/android/contacts/quickcontact/DataAction;->mMimeType:Ljava/lang/String;

    .line 90
    iput-wide p4, p0, Lcom/android/contacts/quickcontact/DataAction;->mDataId:J

    .line 91
    const-string v0, ""

    iput-object v0, p0, Lcom/android/contacts/quickcontact/DataAction;->mSubtitle:Ljava/lang/CharSequence;

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/contacts/model/DataKind;JLandroid/database/Cursor;)V
    .locals 34
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "kind"    # Lcom/android/contacts/model/DataKind;
    .param p4, "dataId"    # J
    .param p6, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 122
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/16 v29, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mDataUri:Landroid/net/Uri;

    .line 123
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mContext:Landroid/content/Context;

    .line 124
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mKind:Lcom/android/contacts/model/DataKind;

    .line 125
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mMimeType:Ljava/lang/String;

    .line 128
    const-string v29, ""

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mSubtitle:Ljava/lang/CharSequence;

    .line 129
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/contacts/model/DataKind;->typeColumn:Ljava/lang/String;

    move-object/from16 v29, v0

    if-eqz v29, :cond_1

    .line 130
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/contacts/model/DataKind;->typeColumn:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, p6

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    .line 131
    .local v24, "typeColumnIndex":I
    const/16 v29, -0x1

    move/from16 v0, v24

    move/from16 v1, v29

    if-eq v0, v1, :cond_1

    .line 132
    move-object/from16 v0, p6

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    .line 135
    .local v25, "typeValue":I
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/contacts/model/AccountType$EditType;

    .line 136
    .local v23, "type":Lcom/android/contacts/model/AccountType$EditType;
    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/contacts/model/AccountType$EditType;->rawValue:I

    move/from16 v29, v0

    move/from16 v0, v29

    move/from16 v1, v25

    if-ne v0, v1, :cond_0

    .line 137
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/contacts/model/AccountType$EditType;->customColumn:Ljava/lang/String;

    move-object/from16 v29, v0

    if-nez v29, :cond_c

    .line 139
    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/contacts/model/AccountType$EditType;->labelRes:I

    move/from16 v29, v0

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mSubtitle:Ljava/lang/CharSequence;

    .line 151
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v23    # "type":Lcom/android/contacts/model/AccountType$EditType;
    .end local v24    # "typeColumnIndex":I
    .end local v25    # "typeValue":I
    :cond_1
    :goto_0
    const-string v29, "is_super_primary"

    move-object/from16 v0, p6

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lcom/android/contacts/quickcontact/DataAction;->getAsInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v29

    if-eqz v29, :cond_2

    .line 152
    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mIsPrimary:Z

    .line 155
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/DataAction;->mKind:Lcom/android/contacts/model/DataKind;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/contacts/model/DataKind;->actionBody:Lcom/android/contacts/model/AccountType$StringInflater;

    move-object/from16 v29, v0

    if-eqz v29, :cond_3

    .line 156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/DataAction;->mKind:Lcom/android/contacts/model/DataKind;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/contacts/model/DataKind;->actionBody:Lcom/android/contacts/model/AccountType$StringInflater;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, p1

    move-object/from16 v2, p6

    invoke-interface {v0, v1, v2}, Lcom/android/contacts/model/AccountType$StringInflater;->inflateUsing(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/CharSequence;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mBody:Ljava/lang/CharSequence;

    .line 159
    :cond_3
    move-wide/from16 v0, p4

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/contacts/quickcontact/DataAction;->mDataId:J

    .line 160
    sget-object v29, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v29

    move-wide/from16 v1, p4

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mDataUri:Landroid/net/Uri;

    .line 162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/DataAction;->mDataUri:Landroid/net/Uri;

    move-object/from16 v29, v0

    sput-object v29, Lcom/android/contacts/quickcontact/QuickContactActivity;->CONTACT_URI:Landroid/net/Uri;

    .line 163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/DataAction;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v9

    .line 165
    .local v9, "hasPhone":Z
    const-string v29, "vnd.android.cursor.item/video-call"

    move-object/from16 v0, v29

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_4

    sget-boolean v29, Lcom/android/contacts/ContactsApplication;->TAG_IMS_FEATURE_ENABLED:Z

    if-eqz v29, :cond_4

    .line 166
    const-string v29, "data1"

    move-object/from16 v0, p6

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lcom/android/contacts/quickcontact/DataAction;->getAsString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 167
    .local v18, "number":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v29

    if-nez v29, :cond_4

    .line 168
    if-eqz v9, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/DataAction;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getCallIntent(Ljava/lang/String;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v19

    .line 170
    .local v19, "phoneIntent":Landroid/content/Intent;
    :goto_1
    if-eqz v9, :cond_4

    .line 171
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    .line 176
    .end local v18    # "number":Ljava/lang/String;
    .end local v19    # "phoneIntent":Landroid/content/Intent;
    :cond_4
    const-string v29, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v29

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_5

    const-string v29, "vnd.android.cursor.item/cdmacall-address"

    move-object/from16 v0, v29

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_5

    const-string v29, "vnd.android.cursor.item/gsmcall-address"

    move-object/from16 v0, v29

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_5

    const-string v29, "vnd.android.cursor.item/gsmcall2-address"

    move-object/from16 v0, v29

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_18

    .line 180
    :cond_5
    sget-boolean v29, Lcom/android/contacts/quickcontact/DataAction;->mHasPhone:Z

    if-nez v29, :cond_6

    sget-boolean v29, Lcom/android/contacts/quickcontact/DataAction;->mHasSms:Z

    if-eqz v29, :cond_a

    .line 181
    :cond_6
    const-string v29, "data1"

    move-object/from16 v0, p6

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lcom/android/contacts/quickcontact/DataAction;->getAsString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 182
    .restart local v18    # "number":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v29

    if-nez v29, :cond_a

    .line 189
    sget-boolean v29, Lcom/android/contacts/quickcontact/DataAction;->mHasPhone:Z

    if-eqz v29, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/DataAction;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getCallIntent(Ljava/lang/String;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v19

    .line 191
    .restart local v19    # "phoneIntent":Landroid/content/Intent;
    :goto_2
    sget-boolean v29, Lcom/android/contacts/quickcontact/DataAction;->mHasSms:Z

    if-eqz v29, :cond_f

    new-instance v22, Landroid/content/Intent;

    const-string v29, "android.intent.action.SENDTO"

    const-string v30, "smsto"

    const-string v31, ","

    const-string v32, "P"

    move-object/from16 v0, v18

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v31

    const-string v32, ";"

    const-string v33, "W"

    invoke-virtual/range {v31 .. v33}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x0

    invoke-static/range {v30 .. v32}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v30

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 194
    .local v22, "smsIntent":Landroid/content/Intent;
    :goto_3
    if-eqz v19, :cond_7

    const-string v29, "feature_skt"

    invoke-static/range {v29 .. v29}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_7

    .line 195
    const-string v29, "call_from_sec"

    const/16 v30, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 198
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/DataAction;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isKnoxMode(Landroid/content/Context;)Z

    move-result v29

    if-nez v29, :cond_8

    if-eqz v22, :cond_8

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v29

    const-string v30, "CscFeature_Contact_EnableCallerIdSearch4Korea"

    invoke-virtual/range {v29 .. v30}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_8

    .line 200
    const-string v29, "com.android.mms"

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 203
    :cond_8
    if-eqz v19, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/DataAction;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/contacts/util/PhoneCapabilityTester;->isDualCall(Landroid/content/Context;)Z

    move-result v29

    if-eqz v29, :cond_11

    sget-boolean v29, Lcom/android/contacts/quickcontact/DataAction;->mHasPhone:Z

    if-eqz v29, :cond_11

    .line 204
    const-string v29, "vnd.android.cursor.item/cdmacall-address"

    move-object/from16 v0, v29

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_10

    .line 205
    const-string v29, "simnum"

    const/16 v30, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 224
    :cond_9
    :goto_4
    sget-boolean v29, Lcom/android/contacts/quickcontact/DataAction;->mHasPhone:Z

    if-eqz v29, :cond_15

    sget-boolean v29, Lcom/android/contacts/quickcontact/DataAction;->mHasSms:Z

    if-eqz v29, :cond_15

    .line 225
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    .line 226
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mAlternateIntent:Landroid/content/Intent;

    .line 227
    sget-boolean v29, Lcom/android/contacts/quickcontact/DataAction;->mIsEasyMode:Z

    if-eqz v29, :cond_13

    const v29, 0x7f0205e9

    :goto_5
    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mAlternateIconRes:I

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/DataAction;->mAlternateIntent:Landroid/content/Intent;

    move-object/from16 v29, v0

    if-eqz v29, :cond_a

    .line 230
    invoke-static/range {p1 .. p1}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v29

    if-eqz v29, :cond_14

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/DataAction;->mAlternateIntent:Landroid/content/Intent;

    move-object/from16 v29, v0

    const/high16 v30, 0x14000000

    invoke-virtual/range {v29 .. v30}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 375
    .end local v18    # "number":Ljava/lang/String;
    .end local v19    # "phoneIntent":Landroid/content/Intent;
    .end local v22    # "smsIntent":Landroid/content/Intent;
    :cond_a
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    move-object/from16 v29, v0

    if-nez v29, :cond_b

    .line 377
    new-instance v29, Landroid/content/Intent;

    const-string v30, "android.intent.action.VIEW"

    invoke-direct/range {v29 .. v30}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    .line 378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/DataAction;->mDataUri:Landroid/net/Uri;

    move-object/from16 v30, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 382
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    move-object/from16 v29, v0

    const/high16 v30, 0x14000000

    invoke-virtual/range {v29 .. v30}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 383
    return-void

    .line 142
    .end local v9    # "hasPhone":Z
    .restart local v11    # "i$":Ljava/util/Iterator;
    .restart local v23    # "type":Lcom/android/contacts/model/AccountType$EditType;
    .restart local v24    # "typeColumnIndex":I
    .restart local v25    # "typeValue":I
    :cond_c
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/contacts/model/AccountType$EditType;->customColumn:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, p6

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v29

    move-object/from16 v0, p6

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mSubtitle:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 168
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v23    # "type":Lcom/android/contacts/model/AccountType$EditType;
    .end local v24    # "typeColumnIndex":I
    .end local v25    # "typeValue":I
    .restart local v9    # "hasPhone":Z
    .restart local v18    # "number":Ljava/lang/String;
    :cond_d
    const/16 v19, 0x0

    goto/16 :goto_1

    .line 189
    :cond_e
    const/16 v19, 0x0

    goto/16 :goto_2

    .line 191
    .restart local v19    # "phoneIntent":Landroid/content/Intent;
    :cond_f
    const/16 v22, 0x0

    goto/16 :goto_3

    .line 206
    .restart local v22    # "smsIntent":Landroid/content/Intent;
    :cond_10
    const-string v29, "vnd.android.cursor.item/gsmcall-address"

    move-object/from16 v0, v29

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_9

    .line 207
    const-string v29, "simnum"

    const/16 v30, 0x2

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_4

    .line 209
    :cond_11
    if-eqz v19, :cond_12

    .line 215
    :cond_12
    if-eqz v19, :cond_9

    goto/16 :goto_4

    .line 227
    :cond_13
    move-object/from16 v0, p3

    iget v0, v0, Lcom/android/contacts/model/DataKind;->iconAltRes:I

    move/from16 v29, v0

    goto/16 :goto_5

    .line 233
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/DataAction;->mAlternateIntent:Landroid/content/Intent;

    move-object/from16 v29, v0

    const/high16 v30, 0x4000000

    invoke-virtual/range {v29 .. v30}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto/16 :goto_6

    .line 235
    :cond_15
    sget-boolean v29, Lcom/android/contacts/quickcontact/DataAction;->mHasPhone:Z

    if-eqz v29, :cond_16

    .line 236
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    goto/16 :goto_6

    .line 237
    :cond_16
    sget-boolean v29, Lcom/android/contacts/quickcontact/DataAction;->mHasSms:Z

    if-eqz v29, :cond_a

    .line 238
    sget-boolean v29, Lcom/android/contacts/quickcontact/DataAction;->mIsEasyMode:Z

    if-eqz v29, :cond_17

    .line 239
    const v29, 0x7f0205e9

    move/from16 v0, v29

    move-object/from16 v1, p3

    iput v0, v1, Lcom/android/contacts/model/DataKind;->iconRes:I

    .line 241
    :cond_17
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    goto/16 :goto_6

    .line 245
    .end local v18    # "number":Ljava/lang/String;
    .end local v19    # "phoneIntent":Landroid/content/Intent;
    .end local v22    # "smsIntent":Landroid/content/Intent;
    :cond_18
    const-string v29, "vnd.android.cursor.item/sip_address"

    move-object/from16 v0, v29

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_19

    .line 246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/DataAction;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/contacts/util/PhoneCapabilityTester;->isSipPhone(Landroid/content/Context;)Z

    move-result v29

    if-eqz v29, :cond_a

    .line 247
    const-string v29, "data1"

    move-object/from16 v0, p6

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lcom/android/contacts/quickcontact/DataAction;->getAsString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 248
    .local v3, "address":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v29

    if-nez v29, :cond_a

    .line 249
    const-string v29, "sip"

    const/16 v30, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-static {v0, v3, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 250
    .local v5, "callUri":Landroid/net/Uri;
    new-instance v29, Landroid/content/Intent;

    const-string v30, "android.intent.action.CALL_PRIVILEGED"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-direct {v0, v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    goto/16 :goto_6

    .line 259
    .end local v3    # "address":Ljava/lang/String;
    .end local v5    # "callUri":Landroid/net/Uri;
    :cond_19
    const-string v29, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v29

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_1a

    .line 260
    const-string v29, "data1"

    move-object/from16 v0, p6

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lcom/android/contacts/quickcontact/DataAction;->getAsString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 261
    .restart local v3    # "address":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v29

    if-nez v29, :cond_a

    .line 262
    const-string v29, "mailto"

    const/16 v30, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-static {v0, v3, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    .line 263
    .local v17, "mailUri":Landroid/net/Uri;
    new-instance v29, Landroid/content/Intent;

    const-string v30, "android.intent.action.SENDTO"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    .line 264
    const-string v29, "PHONE_WHITE"

    const-string v30, "DEFAULT"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_a

    .line 266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    move-object/from16 v29, v0

    if-eqz v29, :cond_a

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    move-object/from16 v29, v0

    const-string v30, "theme"

    const/16 v31, 0x2

    invoke-virtual/range {v29 .. v31}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_6

    .line 272
    .end local v3    # "address":Ljava/lang/String;
    .end local v17    # "mailUri":Landroid/net/Uri;
    :cond_1a
    const-string v29, "vnd.android.cursor.item/website"

    move-object/from16 v0, v29

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_1b

    .line 273
    const-string v29, "data1"

    move-object/from16 v0, p6

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lcom/android/contacts/quickcontact/DataAction;->getAsString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 274
    .local v26, "url":Ljava/lang/String;
    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v29

    if-nez v29, :cond_a

    .line 278
    :try_start_0
    new-instance v28, Landroid/net/WebAddress;

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Landroid/net/WebAddress;-><init>(Ljava/lang/String;)V

    .line 279
    .local v28, "webAddress":Landroid/net/WebAddress;
    new-instance v29, Landroid/content/Intent;

    const-string v30, "android.intent.action.VIEW"

    invoke-virtual/range {v28 .. v28}, Landroid/net/WebAddress;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v31

    invoke-direct/range {v29 .. v31}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    .line 280
    const-string v29, "PHONE_WHITE"

    const-string v30, "DEFAULT"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_a

    .line 282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    move-object/from16 v29, v0

    if-eqz v29, :cond_a

    .line 283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    move-object/from16 v29, v0

    const-string v30, "theme"

    const/16 v31, 0x2

    invoke-virtual/range {v29 .. v31}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/net/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_6

    .line 286
    .end local v28    # "webAddress":Landroid/net/WebAddress;
    :catch_0
    move-exception v8

    .line 287
    .local v8, "e":Landroid/net/ParseException;
    const-string v29, "DataAction"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Couldn\'t parse website: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 291
    .end local v8    # "e":Landroid/net/ParseException;
    .end local v26    # "url":Ljava/lang/String;
    :cond_1b
    const-string v29, "vnd.android.cursor.item/im"

    move-object/from16 v0, v29

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_25

    .line 292
    const-string v29, "vnd.android.cursor.item/email_v2"

    const-string v30, "mimetype"

    move-object/from16 v0, p6

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Lcom/android/contacts/quickcontact/DataAction;->getAsString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    .line 294
    .local v15, "isEmail":Z
    if-nez v15, :cond_1c

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct {v0, v1}, Lcom/android/contacts/quickcontact/DataAction;->isProtocolValid(Landroid/database/Cursor;)Z

    move-result v29

    if-eqz v29, :cond_a

    .line 295
    :cond_1c
    if-eqz v15, :cond_20

    const/16 v21, 0x5

    .line 298
    .local v21, "protocol":I
    :goto_7
    if-eqz v15, :cond_1d

    .line 301
    const v29, 0x7f0e016e

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mSubtitle:Ljava/lang/CharSequence;

    .line 302
    const/16 v29, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mDataUri:Landroid/net/Uri;

    .line 305
    :cond_1d
    const-string v29, "data6"

    move-object/from16 v0, p6

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lcom/android/contacts/quickcontact/DataAction;->getAsString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 306
    .local v10, "host":Ljava/lang/String;
    if-eqz v15, :cond_21

    const-string v29, "data1"

    :goto_8
    move-object/from16 v0, p6

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lcom/android/contacts/quickcontact/DataAction;->getAsString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 308
    .local v7, "data":Ljava/lang/String;
    const/16 v29, -0x1

    move/from16 v0, v21

    move/from16 v1, v29

    if-eq v0, v1, :cond_1e

    .line 310
    invoke-static/range {v21 .. v21}, Lcom/android/contacts/ContactsUtils;->lookupProviderNameFromId(I)Ljava/lang/String;

    move-result-object v10

    .line 313
    :cond_1e
    if-eqz v10, :cond_a

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v29

    if-nez v29, :cond_a

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v29

    if-nez v29, :cond_a

    .line 314
    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 315
    .local v4, "authority":Ljava/lang/String;
    new-instance v29, Landroid/net/Uri$Builder;

    invoke-direct/range {v29 .. v29}, Landroid/net/Uri$Builder;-><init>()V

    const-string v30, "imto"

    invoke-virtual/range {v29 .. v30}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v7}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v12

    .line 317
    .local v12, "imUri":Landroid/net/Uri;
    new-instance v29, Landroid/content/Intent;

    const-string v30, "android.intent.action.SENDTO"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-direct {v0, v1, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    .line 321
    const-string v29, "chat_capability"

    move-object/from16 v0, p6

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lcom/android/contacts/quickcontact/DataAction;->getAsInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    .line 322
    .local v6, "chatCapability":I
    and-int/lit8 v29, v6, 0x4

    if-eqz v29, :cond_22

    const/16 v16, 0x1

    .line 324
    .local v16, "isVideoChatCapable":Z
    :goto_9
    and-int/lit8 v29, v6, 0x1

    if-eqz v29, :cond_23

    const/4 v14, 0x1

    .line 326
    .local v14, "isAudioChatCapable":Z
    :goto_a
    if-nez v16, :cond_1f

    if-eqz v14, :cond_a

    .line 327
    :cond_1f
    new-instance v29, Landroid/content/Intent;

    const-string v30, "android.intent.action.SENDTO"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "xmpp:"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "?call"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v31

    invoke-direct/range {v29 .. v31}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mAlternateIntent:Landroid/content/Intent;

    .line 329
    if-eqz v16, :cond_24

    const v29, 0x7f0206e9

    :goto_b
    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mAlternateIconRes:I

    goto/16 :goto_6

    .line 295
    .end local v4    # "authority":Ljava/lang/String;
    .end local v6    # "chatCapability":I
    .end local v7    # "data":Ljava/lang/String;
    .end local v10    # "host":Ljava/lang/String;
    .end local v12    # "imUri":Landroid/net/Uri;
    .end local v14    # "isAudioChatCapable":Z
    .end local v16    # "isVideoChatCapable":Z
    .end local v21    # "protocol":I
    :cond_20
    const-string v29, "data5"

    move-object/from16 v0, p6

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lcom/android/contacts/quickcontact/DataAction;->getAsInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v21

    goto/16 :goto_7

    .line 306
    .restart local v10    # "host":Ljava/lang/String;
    .restart local v21    # "protocol":I
    :cond_21
    const-string v29, "data1"

    goto/16 :goto_8

    .line 322
    .restart local v4    # "authority":Ljava/lang/String;
    .restart local v6    # "chatCapability":I
    .restart local v7    # "data":Ljava/lang/String;
    .restart local v12    # "imUri":Landroid/net/Uri;
    :cond_22
    const/16 v16, 0x0

    goto :goto_9

    .line 324
    .restart local v16    # "isVideoChatCapable":Z
    :cond_23
    const/4 v14, 0x0

    goto :goto_a

    .line 329
    .restart local v14    # "isAudioChatCapable":Z
    :cond_24
    const v29, 0x7f020675

    goto :goto_b

    .line 335
    .end local v4    # "authority":Ljava/lang/String;
    .end local v6    # "chatCapability":I
    .end local v7    # "data":Ljava/lang/String;
    .end local v10    # "host":Ljava/lang/String;
    .end local v12    # "imUri":Landroid/net/Uri;
    .end local v14    # "isAudioChatCapable":Z
    .end local v15    # "isEmail":Z
    .end local v16    # "isVideoChatCapable":Z
    .end local v21    # "protocol":I
    :cond_25
    const-string v29, "vnd.android.cursor.item/postal-address_v2"

    move-object/from16 v0, v29

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_26

    .line 336
    const-string v29, "data1"

    move-object/from16 v0, p6

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lcom/android/contacts/quickcontact/DataAction;->getAsString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 337
    .local v20, "postalAddress":Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v29

    if-nez v29, :cond_a

    .line 338
    invoke-static/range {v20 .. v20}, Lcom/android/contacts/util/StructuredPostalUtils;->getViewPostalAddressIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    goto/16 :goto_6

    .line 340
    .end local v20    # "postalAddress":Ljava/lang/String;
    :cond_26
    const-string v29, "vnd.android.cursor.item/vcall-address"

    move-object/from16 v0, v29

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_27

    .line 341
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/DataAction;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/contacts/util/PhoneCapabilityTester;->isVideoCall(Landroid/content/Context;)Z

    move-result v29

    if-eqz v29, :cond_a

    .line 342
    const-string v29, "data1"

    move-object/from16 v0, p6

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lcom/android/contacts/quickcontact/DataAction;->getAsString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 343
    .restart local v18    # "number":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v29

    if-nez v29, :cond_a

    .line 344
    const-string v29, "tel"

    const/16 v30, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v18

    move-object/from16 v2, v30

    invoke-static {v0, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v27

    .line 345
    .local v27, "vtCallUri":Landroid/net/Uri;
    new-instance v29, Landroid/content/Intent;

    const-string v30, "android.intent.action.CALL_PRIVILEGED"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    .line 346
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    move-object/from16 v29, v0

    const-string v30, "videocall"

    const/16 v31, 0x1

    invoke-virtual/range {v29 .. v31}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 347
    const-string v29, "feature_skt"

    invoke-static/range {v29 .. v29}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_a

    .line 348
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    move-object/from16 v29, v0

    const-string v30, "call_from_sec"

    const/16 v31, 0x1

    invoke-virtual/range {v29 .. v31}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_6

    .line 361
    .end local v18    # "number":Ljava/lang/String;
    .end local v27    # "vtCallUri":Landroid/net/Uri;
    :cond_27
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v29

    const-string v30, "CscFeature_Contact_EnableIPCall"

    invoke-virtual/range {v29 .. v30}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_a

    .line 363
    const-string v29, "vnd.android.cursor.item/ipcall-address"

    move-object/from16 v0, v29

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_a

    .line 364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/DataAction;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/contacts/util/PhoneCapabilityTester;->isIPCall(Landroid/content/Context;)Z

    move-result v29

    if-eqz v29, :cond_a

    .line 365
    const-string v29, "data1"

    move-object/from16 v0, p6

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lcom/android/contacts/quickcontact/DataAction;->getAsString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 366
    .restart local v18    # "number":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v29

    if-nez v29, :cond_a

    .line 367
    const-string v29, "tel"

    const/16 v30, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v18

    move-object/from16 v2, v30

    invoke-static {v0, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    .line 368
    .local v13, "ipCallUri":Landroid/net/Uri;
    new-instance v29, Landroid/content/Intent;

    const-string v30, "android.intent.action.CALL_PRIVILEGED"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-direct {v0, v1, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    .line 369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    move-object/from16 v29, v0

    const-string v30, "ipcall"

    const/16 v31, 0x1

    invoke-virtual/range {v29 .. v31}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_6
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/contacts/model/DataKind;Ljava/lang/String;I)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "kind"    # Lcom/android/contacts/model/DataKind;
    .param p4, "ssp"    # Ljava/lang/String;
    .param p5, "type"    # I

    .prologue
    .line 388
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/contacts/quickcontact/DataAction;->mDataUri:Landroid/net/Uri;

    .line 389
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mContext:Landroid/content/Context;

    .line 390
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mKind:Lcom/android/contacts/model/DataKind;

    .line 391
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mMimeType:Ljava/lang/String;

    .line 394
    const-string v12, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 395
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0e0164

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/contacts/quickcontact/DataAction;->mSubtitle:Ljava/lang/CharSequence;

    .line 401
    :goto_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/quickcontact/DataAction;->mKind:Lcom/android/contacts/model/DataKind;

    iget-object v12, v12, Lcom/android/contacts/model/DataKind;->actionBody:Lcom/android/contacts/model/AccountType$StringInflater;

    if-eqz v12, :cond_0

    .line 402
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mBody:Ljava/lang/CharSequence;

    .line 405
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/quickcontact/DataAction;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v3

    .line 406
    .local v3, "hasPhone":Z
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/quickcontact/DataAction;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/android/contacts/util/PhoneCapabilityTester;->isSmsIntentRegistered(Landroid/content/Context;)Z

    move-result v4

    .line 409
    .local v4, "hasSms":Z
    const-string v12, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    const-string v12, "vnd.android.cursor.item/cdmacall-address"

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    const-string v12, "vnd.android.cursor.item/gsmcall-address"

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    const-string v12, "vnd.android.cursor.item/gsmcall2-address"

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f

    .line 413
    :cond_1
    if-nez v3, :cond_2

    if-eqz v4, :cond_6

    .line 414
    :cond_2
    move-object/from16 v7, p4

    .line 415
    .local v7, "number":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_6

    .line 416
    if-eqz v3, :cond_a

    new-instance v8, Landroid/content/Intent;

    const-string v12, "android.intent.action.CALL_PRIVILEGED"

    const-string v13, "tel"

    const/4 v14, 0x0

    invoke-static {v13, v7, v14}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    invoke-direct {v8, v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 418
    .local v8, "phoneIntent":Landroid/content/Intent;
    :goto_1
    if-eqz v4, :cond_b

    new-instance v10, Landroid/content/Intent;

    const-string v12, "android.intent.action.SENDTO"

    const-string v13, "smsto"

    const-string v14, ","

    const-string v15, "P"

    invoke-virtual {v7, v14, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    const-string v15, ";"

    const-string v16, "W"

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    invoke-direct {v10, v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 421
    .local v10, "smsIntent":Landroid/content/Intent;
    :goto_2
    if-eqz v8, :cond_3

    const-string v12, "feature_skt"

    invoke-static {v12}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 422
    const-string v12, "call_from_sec"

    const/4 v13, 0x1

    invoke-virtual {v8, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 425
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/quickcontact/DataAction;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isKnoxMode(Landroid/content/Context;)Z

    move-result v12

    if-nez v12, :cond_4

    if-eqz v10, :cond_4

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v12

    const-string v13, "CscFeature_Contact_EnableCallerIdSearch4Korea"

    invoke-virtual {v12, v13}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 427
    const-string v12, "com.android.mms"

    invoke-virtual {v10, v12}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 430
    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/quickcontact/DataAction;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/android/contacts/util/PhoneCapabilityTester;->isDualCall(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_5

    if-eqz v3, :cond_5

    .line 431
    const-string v12, "vnd.android.cursor.item/cdmacall-address"

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 432
    const-string v12, "simnum"

    const/4 v13, 0x1

    invoke-virtual {v8, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 451
    :cond_5
    :goto_3
    if-eqz v3, :cond_d

    if-eqz v4, :cond_d

    .line 452
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    .line 453
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/contacts/quickcontact/DataAction;->mAlternateIntent:Landroid/content/Intent;

    .line 454
    move-object/from16 v0, p3

    iget v12, v0, Lcom/android/contacts/model/DataKind;->iconAltRes:I

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/contacts/quickcontact/DataAction;->mAlternateIconRes:I

    .line 455
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/quickcontact/DataAction;->mAlternateIntent:Landroid/content/Intent;

    const/high16 v13, 0x4000000

    invoke-virtual {v12, v13}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 507
    .end local v7    # "number":Ljava/lang/String;
    .end local v8    # "phoneIntent":Landroid/content/Intent;
    .end local v10    # "smsIntent":Landroid/content/Intent;
    :cond_6
    :goto_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    if-nez v12, :cond_7

    .line 509
    new-instance v12, Landroid/content/Intent;

    const-string v13, "android.intent.action.VIEW"

    invoke-direct {v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    .line 510
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/quickcontact/DataAction;->mDataUri:Landroid/net/Uri;

    move-object/from16 v0, p2

    invoke-virtual {v12, v13, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 514
    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    const/high16 v13, 0x14000000

    invoke-virtual {v12, v13}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 515
    return-void

    .line 396
    .end local v3    # "hasPhone":Z
    .end local v4    # "hasSms":Z
    :cond_8
    const-string v12, "vnd.android.cursor.item/sip_address"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 397
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0e0065

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/contacts/quickcontact/DataAction;->mSubtitle:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 399
    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x1040522

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/contacts/quickcontact/DataAction;->mSubtitle:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 416
    .restart local v3    # "hasPhone":Z
    .restart local v4    # "hasSms":Z
    .restart local v7    # "number":Ljava/lang/String;
    :cond_a
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 418
    .restart local v8    # "phoneIntent":Landroid/content/Intent;
    :cond_b
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 433
    .restart local v10    # "smsIntent":Landroid/content/Intent;
    :cond_c
    const-string v12, "vnd.android.cursor.item/gsmcall-address"

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 434
    const-string v12, "simnum"

    const/4 v13, 0x2

    invoke-virtual {v8, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_3

    .line 456
    :cond_d
    if-eqz v3, :cond_e

    .line 457
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    goto :goto_4

    .line 458
    :cond_e
    if-eqz v4, :cond_6

    .line 459
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    goto :goto_4

    .line 463
    .end local v7    # "number":Ljava/lang/String;
    .end local v8    # "phoneIntent":Landroid/content/Intent;
    .end local v10    # "smsIntent":Landroid/content/Intent;
    :cond_f
    const-string v12, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_10

    .line 464
    move-object/from16 v2, p4

    .line 465
    .local v2, "address":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_6

    .line 466
    const-string v12, "mailto"

    const/4 v13, 0x0

    invoke-static {v12, v2, v13}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 467
    .local v6, "mailUri":Landroid/net/Uri;
    new-instance v12, Landroid/content/Intent;

    const-string v13, "android.intent.action.SENDTO"

    invoke-direct {v12, v13, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    goto/16 :goto_4

    .line 469
    .end local v2    # "address":Ljava/lang/String;
    .end local v6    # "mailUri":Landroid/net/Uri;
    :cond_10
    const-string v12, "vnd.android.cursor.item/sip_address"

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_11

    .line 470
    move-object/from16 v2, p4

    .line 471
    .restart local v2    # "address":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_6

    .line 472
    const-string v12, "sip"

    const/4 v13, 0x0

    invoke-static {v12, v2, v13}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 473
    .local v9, "sipUri":Landroid/net/Uri;
    new-instance v12, Landroid/content/Intent;

    const-string v13, "android.intent.action.CALL_PRIVILEGED"

    invoke-direct {v12, v13, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    goto/16 :goto_4

    .line 475
    .end local v2    # "address":Ljava/lang/String;
    .end local v9    # "sipUri":Landroid/net/Uri;
    :cond_11
    const-string v12, "vnd.android.cursor.item/vcall-address"

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_12

    .line 476
    move-object/from16 v7, p4

    .line 477
    .restart local v7    # "number":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_6

    .line 478
    const-string v12, "tel"

    const/4 v13, 0x0

    invoke-static {v12, v7, v13}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 479
    .local v11, "vtCallUri":Landroid/net/Uri;
    new-instance v12, Landroid/content/Intent;

    const-string v13, "android.intent.action.CALL_PRIVILEGED"

    invoke-direct {v12, v13, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    .line 480
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    const-string v13, "videocall"

    const/4 v14, 0x1

    invoke-virtual {v12, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 481
    const-string v12, "feature_skt"

    invoke-static {v12}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 482
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    const-string v13, "call_from_sec"

    const/4 v14, 0x1

    invoke-virtual {v12, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_4

    .line 493
    .end local v7    # "number":Ljava/lang/String;
    .end local v11    # "vtCallUri":Landroid/net/Uri;
    :cond_12
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v12

    const-string v13, "CscFeature_Contact_EnableIPCall"

    invoke-virtual {v12, v13}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 495
    const-string v12, "vnd.android.cursor.item/ipcall-address"

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 496
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/quickcontact/DataAction;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/android/contacts/util/PhoneCapabilityTester;->isIPCall(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 497
    move-object/from16 v7, p4

    .line 498
    .restart local v7    # "number":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_6

    .line 499
    const-string v12, "tel"

    const/4 v13, 0x0

    invoke-static {v12, v7, v13}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 500
    .local v5, "ipCallUri":Landroid/net/Uri;
    new-instance v12, Landroid/content/Intent;

    const-string v13, "android.intent.action.CALL_PRIVILEGED"

    invoke-direct {v12, v13, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    .line 501
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    const-string v13, "ipcall"

    const/4 v14, 0x1

    invoke-virtual {v12, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_4
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "buddyId"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 521
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object v0, p0, Lcom/android/contacts/quickcontact/DataAction;->mDataUri:Landroid/net/Uri;

    .line 522
    iput-object p1, p0, Lcom/android/contacts/quickcontact/DataAction;->mContext:Landroid/content/Context;

    .line 523
    iput-object p2, p0, Lcom/android/contacts/quickcontact/DataAction;->mMimeType:Ljava/lang/String;

    .line 524
    iput-object p3, p0, Lcom/android/contacts/quickcontact/DataAction;->mBody:Ljava/lang/CharSequence;

    .line 525
    iput-object v0, p0, Lcom/android/contacts/quickcontact/DataAction;->mKind:Lcom/android/contacts/model/DataKind;

    .line 526
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0374

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/quickcontact/DataAction;->mSubtitle:Ljava/lang/CharSequence;

    .line 527
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "body"    # Ljava/lang/String;
    .param p4, "subtitle"    # Ljava/lang/String;
    .param p5, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object v0, p0, Lcom/android/contacts/quickcontact/DataAction;->mDataUri:Landroid/net/Uri;

    .line 99
    iput-object p1, p0, Lcom/android/contacts/quickcontact/DataAction;->mContext:Landroid/content/Context;

    .line 100
    iput-object v0, p0, Lcom/android/contacts/quickcontact/DataAction;->mKind:Lcom/android/contacts/model/DataKind;

    .line 101
    const-string v0, "vnd.vapp.item/vnd.com.app.account"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 102
    iput-object p2, p0, Lcom/android/contacts/quickcontact/DataAction;->mMimeType:Ljava/lang/String;

    .line 106
    :goto_0
    iput-object p3, p0, Lcom/android/contacts/quickcontact/DataAction;->mBody:Ljava/lang/CharSequence;

    .line 107
    iput-object p4, p0, Lcom/android/contacts/quickcontact/DataAction;->mSubtitle:Ljava/lang/CharSequence;

    .line 108
    iput-object p5, p0, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    .line 110
    const-string v0, "vnd.vapp.item/vnd.com.app.account"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/contacts/quickcontact/DataAction;->mAlternateIntent:Landroid/content/Intent;

    .line 112
    iget-object v0, p0, Lcom/android/contacts/quickcontact/DataAction;->mAlternateIntent:Landroid/content/Intent;

    const-string v1, "com.sds.vapp.voipcall"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    iget-object v0, p0, Lcom/android/contacts/quickcontact/DataAction;->mAlternateIntent:Landroid/content/Intent;

    const-string v1, "user_account"

    const-string v2, "user_account"

    invoke-virtual {p5, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    iget-object v0, p0, Lcom/android/contacts/quickcontact/DataAction;->mAlternateIntent:Landroid/content/Intent;

    const-string v1, "video_call"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 115
    const v0, 0x7f0206e7

    iput v0, p0, Lcom/android/contacts/quickcontact/DataAction;->mAlternateIconRes:I

    .line 117
    :cond_0
    return-void

    .line 104
    :cond_1
    const-string v0, "vnd.chaton.item/vnd.com.chaton.profile"

    iput-object v0, p0, Lcom/android/contacts/quickcontact/DataAction;->mMimeType:Ljava/lang/String;

    goto :goto_0
.end method

.method private static getAsInt(Landroid/database/Cursor;Ljava/lang/String;)I
    .locals 2
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    .line 593
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 594
    .local v0, "index":I
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    return v1
.end method

.method private static getAsString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    .line 587
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 588
    .local v0, "index":I
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private isProtocolValid(Landroid/database/Cursor;)Z
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v2, 0x0

    .line 598
    const-string v3, "data5"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 599
    .local v0, "columnIndex":I
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 607
    :goto_0
    return v2

    .line 603
    :cond_0
    :try_start_0
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 607
    const/4 v2, 0x1

    goto :goto_0

    .line 604
    :catch_0
    move-exception v1

    .line 605
    .local v1, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public static setIsEasyMode(Z)V
    .locals 0
    .param p0, "isEasyMode"    # Z

    .prologue
    .line 683
    sput-boolean p0, Lcom/android/contacts/quickcontact/DataAction;->mIsEasyMode:Z

    .line 684
    return-void
.end method

.method public static setPhoneAvailable(Z)V
    .locals 0
    .param p0, "isAvailable"    # Z

    .prologue
    .line 675
    sput-boolean p0, Lcom/android/contacts/quickcontact/DataAction;->mHasPhone:Z

    .line 676
    return-void
.end method

.method public static setSmsAvailable(Z)V
    .locals 0
    .param p0, "isAvailable"    # Z

    .prologue
    .line 679
    sput-boolean p0, Lcom/android/contacts/quickcontact/DataAction;->mHasSms:Z

    .line 680
    return-void
.end method


# virtual methods
.method public collapseWith(Lcom/android/contacts/quickcontact/Action;)Z
    .locals 1
    .param p1, "other"    # Lcom/android/contacts/quickcontact/Action;

    .prologue
    .line 668
    invoke-virtual {p0, p1}, Lcom/android/contacts/quickcontact/DataAction;->shouldCollapseWith(Lcom/android/contacts/quickcontact/Action;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 669
    const/4 v0, 0x0

    .line 671
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic collapseWith(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 62
    check-cast p1, Lcom/android/contacts/quickcontact/Action;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/contacts/quickcontact/DataAction;->collapseWith(Lcom/android/contacts/quickcontact/Action;)Z

    move-result v0

    return v0
.end method

.method public getAlternateIcon()Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 642
    iget v3, p0, Lcom/android/contacts/quickcontact/DataAction;->mAlternateIconRes:I

    if-nez v3, :cond_0

    .line 653
    :goto_0
    return-object v2

    .line 644
    :cond_0
    const-string v3, "vnd.vapp.item/vnd.com.app.account"

    iget-object v4, p0, Lcom/android/contacts/quickcontact/DataAction;->mMimeType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/contacts/quickcontact/DataAction;->mAlternateIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.sds.vapp.voipcall"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 645
    :cond_1
    iget-object v2, p0, Lcom/android/contacts/quickcontact/DataAction;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/android/contacts/quickcontact/DataAction;->mAlternateIconRes:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    .line 647
    :cond_2
    iget-object v3, p0, Lcom/android/contacts/quickcontact/DataAction;->mKind:Lcom/android/contacts/model/DataKind;

    iget-object v1, v3, Lcom/android/contacts/model/DataKind;->resourcePackageName:Ljava/lang/String;

    .line 648
    .local v1, "resourcePackageName":Ljava/lang/String;
    if-nez v1, :cond_3

    .line 649
    iget-object v2, p0, Lcom/android/contacts/quickcontact/DataAction;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/android/contacts/quickcontact/DataAction;->mAlternateIconRes:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    .line 652
    :cond_3
    iget-object v3, p0, Lcom/android/contacts/quickcontact/DataAction;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 653
    .local v0, "pm":Landroid/content/pm/PackageManager;
    iget v3, p0, Lcom/android/contacts/quickcontact/DataAction;->mAlternateIconRes:I

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0
.end method

.method public getAlternateIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 663
    iget-object v0, p0, Lcom/android/contacts/quickcontact/DataAction;->mAlternateIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getBody()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 617
    iget-object v0, p0, Lcom/android/contacts/quickcontact/DataAction;->mBody:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getDataId()J
    .locals 2

    .prologue
    .line 632
    iget-wide v0, p0, Lcom/android/contacts/quickcontact/DataAction;->mDataId:J

    return-wide v0
.end method

.method public getDataUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 627
    iget-object v0, p0, Lcom/android/contacts/quickcontact/DataAction;->mDataUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 658
    iget-object v0, p0, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 622
    iget-object v0, p0, Lcom/android/contacts/quickcontact/DataAction;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 612
    iget-object v0, p0, Lcom/android/contacts/quickcontact/DataAction;->mSubtitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public isPrimary()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 637
    iget-boolean v0, p0, Lcom/android/contacts/quickcontact/DataAction;->mIsPrimary:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public setSocialData(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "dataMimeType"    # Ljava/lang/String;
    .param p3, "strName"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 547
    const-string v4, "is_super_primary"

    invoke-static {p1, v4}, Lcom/android/contacts/quickcontact/DataAction;->getAsInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    .line 548
    iput-boolean v6, p0, Lcom/android/contacts/quickcontact/DataAction;->mIsPrimary:Z

    .line 551
    :cond_0
    iget-object v4, p0, Lcom/android/contacts/quickcontact/DataAction;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e0110

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/contacts/quickcontact/DataAction;->mBody:Ljava/lang/CharSequence;

    .line 553
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.sec.android.app.quicksender.LAUNCH"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    .line 556
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 557
    iget-object v4, p0, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    const-string v5, "recipient_name"

    invoke-virtual {v4, v5, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 560
    :cond_1
    const-string v4, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 561
    const-string v4, "data1"

    invoke-static {p1, v4}, Lcom/android/contacts/quickcontact/DataAction;->getAsString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 562
    .local v3, "strNumber":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 563
    iget-object v4, p0, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    const-string v5, "recipient_phone"

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 583
    .end local v3    # "strNumber":Ljava/lang/String;
    :cond_2
    :goto_0
    iget-object v4, p0, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    const/high16 v5, 0x14000000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 584
    return-void

    .line 566
    :cond_3
    const-string v4, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 567
    const-string v4, "data1"

    invoke-static {p1, v4}, Lcom/android/contacts/quickcontact/DataAction;->getAsString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 568
    .local v2, "strEmail":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 569
    iget-object v4, p0, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    const-string v5, "recipient_email"

    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 571
    .end local v2    # "strEmail":Ljava/lang/String;
    :cond_4
    const-string v4, "vnd.android.cursor.item/vnd.twitter.profile"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 572
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 573
    .local v1, "strAccountName":Ljava/lang/String;
    const/4 v4, 0x4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 574
    .local v0, "iPersonId":I
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 575
    iget-object v4, p0, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    const-string v5, "recipient_sns_provider"

    const-string v6, "twitter"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 576
    iget-object v4, p0, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    const-string v5, "recipient_sns_account_id"

    invoke-virtual {v4, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 577
    iget-object v4, p0, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    const-string v5, "recipient_sns_source_id"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public setSocialData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "dataMimeType"    # Ljava/lang/String;
    .param p2, "ssp"    # Ljava/lang/String;

    .prologue
    .line 531
    iget-object v0, p0, Lcom/android/contacts/quickcontact/DataAction;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0110

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/quickcontact/DataAction;->mBody:Ljava/lang/CharSequence;

    .line 532
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.quicksender.LAUNCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    .line 534
    const-string v0, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 535
    iget-object v0, p0, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    const-string v1, "recipient_phone"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 541
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 542
    return-void

    .line 536
    :cond_1
    const-string v0, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 537
    iget-object v0, p0, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    const-string v1, "recipient_email"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public shouldCollapseWith(Lcom/android/contacts/quickcontact/Action;)Z
    .locals 6
    .param p1, "t"    # Lcom/android/contacts/quickcontact/Action;

    .prologue
    const/4 v1, 0x0

    .line 688
    if-nez p1, :cond_1

    .line 703
    :cond_0
    :goto_0
    return v1

    .line 691
    :cond_1
    instance-of v2, p1, Lcom/android/contacts/quickcontact/DataAction;

    if-nez v2, :cond_2

    .line 692
    const-string v2, "DataAction"

    const-string v3, "t must be DataAction"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 695
    check-cast v0, Lcom/android/contacts/quickcontact/DataAction;

    .line 696
    .local v0, "that":Lcom/android/contacts/quickcontact/DataAction;
    iget-object v2, p0, Lcom/android/contacts/quickcontact/DataAction;->mMimeType:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/contacts/quickcontact/DataAction;->mBody:Ljava/lang/CharSequence;

    iget-object v4, v0, Lcom/android/contacts/quickcontact/DataAction;->mMimeType:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/contacts/quickcontact/DataAction;->mBody:Ljava/lang/CharSequence;

    invoke-static {v2, v3, v4, v5}, Lcom/android/contacts/ContactsUtils;->shouldCollapse(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 699
    iget-object v2, p0, Lcom/android/contacts/quickcontact/DataAction;->mMimeType:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/contacts/quickcontact/DataAction;->mMimeType:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    iget-object v3, v0, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    invoke-static {v2, v3}, Lcom/android/contacts/ContactsUtils;->areIntentActionEqual(Landroid/content/Intent;Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 703
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public bridge synthetic shouldCollapseWith(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 62
    check-cast p1, Lcom/android/contacts/quickcontact/Action;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/contacts/quickcontact/DataAction;->shouldCollapseWith(Lcom/android/contacts/quickcontact/Action;)Z

    move-result v0

    return v0
.end method
