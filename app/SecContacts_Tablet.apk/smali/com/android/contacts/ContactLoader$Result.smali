.class public final Lcom/android/contacts/ContactLoader$Result;
.super Ljava/lang/Object;
.source "ContactLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/ContactLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Result"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/ContactLoader$Result$Status;
    }
.end annotation


# instance fields
.field private final mAltDisplayName:Ljava/lang/String;

.field private mAreWritableContact:Z

.field private mBlackList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mChatOnData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mCustomAlerttone:Ljava/lang/String;

.field private mCustomAlerttoneName:Ljava/lang/String;

.field private final mCustomRingtone:Ljava/lang/String;

.field private mCustomRingtoneName:Ljava/lang/String;

.field private mCustomVibrationName:Ljava/lang/String;

.field private mCustomVibrationUri:Ljava/lang/String;

.field private mDirectoryAccountName:Ljava/lang/String;

.field private mDirectoryAccountType:Ljava/lang/String;

.field private mDirectoryDisplayName:Ljava/lang/String;

.field private mDirectoryExportSupport:I

.field private final mDirectoryId:J

.field private mDirectoryType:Ljava/lang/String;

.field private final mDisplayName:Ljava/lang/String;

.field private final mDisplayNameSource:I

.field private final mEntities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Entity;",
            ">;"
        }
    .end annotation
.end field

.field private final mException:Ljava/lang/Exception;

.field private mGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/GroupMetaData;",
            ">;"
        }
    .end annotation
.end field

.field private final mId:J

.field private mInvitableAccountTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/model/AccountType;",
            ">;"
        }
    .end annotation
.end field

.field private mIsChangedNamecard:Z

.field private mIsContainEmergencyGroup:Z

.field private mIsEasyMode:Z

.field private mIsGooglePlus:Z

.field private mIsPhoneReadOnly:Z

.field private final mIsPrivateContact:Z

.field private final mIsSim:Z

.field private final mIsUserProfile:Z

.field private final mLookupKey:Ljava/lang/String;

.field private final mLookupUri:Landroid/net/Uri;

.field private final mNameRawContactId:J

.field private mNamecardDataId:I

.field private final mPhoneticName:Ljava/lang/String;

.field private mPhotoBinaryData:[B

.field private final mPhotoId:J

.field private final mPhotoUri:Ljava/lang/String;

.field private final mPresence:Ljava/lang/Integer;

.field private final mRequestedUri:Landroid/net/Uri;

.field private final mSendToVoicemail:Z

.field private final mStarred:Z

.field private final mStatus:Lcom/android/contacts/ContactLoader$Result$Status;

.field private final mStatuses:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Lcom/android/contacts/util/DataStatus;",
            ">;"
        }
    .end annotation
.end field

.field private mStreamItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/util/StreamItemEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mUri:Landroid/net/Uri;


# direct methods
.method private constructor <init>(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;JLjava/lang/String;JJIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Integer;ZLjava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 2
    .param p1, "requestedUri"    # Landroid/net/Uri;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "lookupUri"    # Landroid/net/Uri;
    .param p4, "directoryId"    # J
    .param p6, "lookupKey"    # Ljava/lang/String;
    .param p7, "id"    # J
    .param p9, "nameRawContactId"    # J
    .param p11, "displayNameSource"    # I
    .param p12, "photoId"    # J
    .param p14, "photoUri"    # Ljava/lang/String;
    .param p15, "displayName"    # Ljava/lang/String;
    .param p16, "altDisplayName"    # Ljava/lang/String;
    .param p17, "phoneticName"    # Ljava/lang/String;
    .param p18, "starred"    # Z
    .param p19, "presence"    # Ljava/lang/Integer;
    .param p20, "sendToVoicemail"    # Z
    .param p21, "customRingtone"    # Ljava/lang/String;
    .param p22, "isUserProfile"    # Z
    .param p23, "isSim"    # Z
    .param p24, "customRingtoneName"    # Ljava/lang/String;
    .param p25, "customVibrationName"    # Ljava/lang/String;
    .param p26, "customVibrationUri"    # Ljava/lang/String;
    .param p27, "customAlerttone"    # Ljava/lang/String;
    .param p28, "customAlerttoneName"    # Ljava/lang/String;
    .param p29, "isprivatecontact"    # Z
    .param p30, "namecardDataId"    # I

    .prologue
    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    sget-object v1, Lcom/android/contacts/ContactLoader$Result$Status;->LOADED:Lcom/android/contacts/ContactLoader$Result$Status;

    iput-object v1, p0, Lcom/android/contacts/ContactLoader$Result;->mStatus:Lcom/android/contacts/ContactLoader$Result$Status;

    .line 266
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/contacts/ContactLoader$Result;->mException:Ljava/lang/Exception;

    .line 267
    iput-object p1, p0, Lcom/android/contacts/ContactLoader$Result;->mRequestedUri:Landroid/net/Uri;

    .line 268
    iput-object p3, p0, Lcom/android/contacts/ContactLoader$Result;->mLookupUri:Landroid/net/Uri;

    .line 269
    iput-object p2, p0, Lcom/android/contacts/ContactLoader$Result;->mUri:Landroid/net/Uri;

    .line 270
    iput-wide p4, p0, Lcom/android/contacts/ContactLoader$Result;->mDirectoryId:J

    .line 271
    iput-object p6, p0, Lcom/android/contacts/ContactLoader$Result;->mLookupKey:Ljava/lang/String;

    .line 272
    iput-wide p7, p0, Lcom/android/contacts/ContactLoader$Result;->mId:J

    .line 273
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/contacts/ContactLoader$Result;->mEntities:Ljava/util/ArrayList;

    .line 274
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/contacts/ContactLoader$Result;->mStreamItems:Ljava/util/ArrayList;

    .line 275
    new-instance v1, Landroid/util/LongSparseArray;

    invoke-direct {v1}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/contacts/ContactLoader$Result;->mStatuses:Landroid/util/LongSparseArray;

    .line 276
    iput-wide p9, p0, Lcom/android/contacts/ContactLoader$Result;->mNameRawContactId:J

    .line 277
    iput p11, p0, Lcom/android/contacts/ContactLoader$Result;->mDisplayNameSource:I

    .line 278
    iput-wide p12, p0, Lcom/android/contacts/ContactLoader$Result;->mPhotoId:J

    .line 279
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mPhotoUri:Ljava/lang/String;

    .line 280
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mDisplayName:Ljava/lang/String;

    .line 281
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mAltDisplayName:Ljava/lang/String;

    .line 282
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mPhoneticName:Ljava/lang/String;

    .line 283
    move/from16 v0, p18

    iput-boolean v0, p0, Lcom/android/contacts/ContactLoader$Result;->mStarred:Z

    .line 284
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mPresence:Ljava/lang/Integer;

    .line 285
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/contacts/ContactLoader$Result;->mInvitableAccountTypes:Ljava/util/ArrayList;

    .line 286
    move/from16 v0, p20

    iput-boolean v0, p0, Lcom/android/contacts/ContactLoader$Result;->mSendToVoicemail:Z

    .line 287
    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mCustomRingtone:Ljava/lang/String;

    .line 288
    move-object/from16 v0, p24

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mCustomRingtoneName:Ljava/lang/String;

    .line 289
    move-object/from16 v0, p25

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mCustomVibrationName:Ljava/lang/String;

    .line 290
    move-object/from16 v0, p26

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mCustomVibrationUri:Ljava/lang/String;

    .line 291
    move-object/from16 v0, p27

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mCustomAlerttone:Ljava/lang/String;

    .line 292
    move-object/from16 v0, p28

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mCustomAlerttoneName:Ljava/lang/String;

    .line 293
    move/from16 v0, p22

    iput-boolean v0, p0, Lcom/android/contacts/ContactLoader$Result;->mIsUserProfile:Z

    .line 294
    move/from16 v0, p23

    iput-boolean v0, p0, Lcom/android/contacts/ContactLoader$Result;->mIsSim:Z

    .line 295
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/contacts/ContactLoader$Result;->mBlackList:Ljava/util/ArrayList;

    .line 296
    move/from16 v0, p29

    iput-boolean v0, p0, Lcom/android/contacts/ContactLoader$Result;->mIsPrivateContact:Z

    .line 297
    move/from16 v0, p30

    iput v0, p0, Lcom/android/contacts/ContactLoader$Result;->mNamecardDataId:I

    .line 298
    return-void
.end method

.method synthetic constructor <init>(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;JLjava/lang/String;JJIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Integer;ZLjava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILcom/android/contacts/ContactLoader$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/net/Uri;
    .param p2, "x1"    # Landroid/net/Uri;
    .param p3, "x2"    # Landroid/net/Uri;
    .param p4, "x3"    # J
    .param p6, "x4"    # Ljava/lang/String;
    .param p7, "x5"    # J
    .param p9, "x6"    # J
    .param p11, "x7"    # I
    .param p12, "x8"    # J
    .param p14, "x9"    # Ljava/lang/String;
    .param p15, "x10"    # Ljava/lang/String;
    .param p16, "x11"    # Ljava/lang/String;
    .param p17, "x12"    # Ljava/lang/String;
    .param p18, "x13"    # Z
    .param p19, "x14"    # Ljava/lang/Integer;
    .param p20, "x15"    # Z
    .param p21, "x16"    # Ljava/lang/String;
    .param p22, "x17"    # Z
    .param p23, "x18"    # Z
    .param p24, "x19"    # Ljava/lang/String;
    .param p25, "x20"    # Ljava/lang/String;
    .param p26, "x21"    # Ljava/lang/String;
    .param p27, "x22"    # Ljava/lang/String;
    .param p28, "x23"    # Ljava/lang/String;
    .param p29, "x24"    # Z
    .param p30, "x25"    # I
    .param p31, "x26"    # Lcom/android/contacts/ContactLoader$1;

    .prologue
    .line 143
    invoke-direct/range {p0 .. p30}, Lcom/android/contacts/ContactLoader$Result;-><init>(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;JLjava/lang/String;JJIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Integer;ZLjava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    return-void
.end method

.method private constructor <init>(Landroid/net/Uri;Lcom/android/contacts/ContactLoader$Result$Status;Ljava/lang/Exception;)V
    .locals 5
    .param p1, "requestedUri"    # Landroid/net/Uri;
    .param p2, "status"    # Lcom/android/contacts/ContactLoader$Result$Status;
    .param p3, "exception"    # Ljava/lang/Exception;

    .prologue
    const-wide/16 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    sget-object v0, Lcom/android/contacts/ContactLoader$Result$Status;->ERROR:Lcom/android/contacts/ContactLoader$Result$Status;

    if-ne p2, v0, :cond_0

    if-nez p3, :cond_0

    .line 210
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ERROR result must have exception"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 212
    :cond_0
    iput-object p2, p0, Lcom/android/contacts/ContactLoader$Result;->mStatus:Lcom/android/contacts/ContactLoader$Result$Status;

    .line 213
    iput-object p3, p0, Lcom/android/contacts/ContactLoader$Result;->mException:Ljava/lang/Exception;

    .line 214
    iput-object p1, p0, Lcom/android/contacts/ContactLoader$Result;->mRequestedUri:Landroid/net/Uri;

    .line 215
    iput-object v1, p0, Lcom/android/contacts/ContactLoader$Result;->mLookupUri:Landroid/net/Uri;

    .line 216
    iput-object v1, p0, Lcom/android/contacts/ContactLoader$Result;->mUri:Landroid/net/Uri;

    .line 217
    iput-wide v3, p0, Lcom/android/contacts/ContactLoader$Result;->mDirectoryId:J

    .line 218
    iput-object v1, p0, Lcom/android/contacts/ContactLoader$Result;->mLookupKey:Ljava/lang/String;

    .line 219
    iput-wide v3, p0, Lcom/android/contacts/ContactLoader$Result;->mId:J

    .line 220
    iput-object v1, p0, Lcom/android/contacts/ContactLoader$Result;->mEntities:Ljava/util/ArrayList;

    .line 221
    iput-object v1, p0, Lcom/android/contacts/ContactLoader$Result;->mStreamItems:Ljava/util/ArrayList;

    .line 222
    iput-object v1, p0, Lcom/android/contacts/ContactLoader$Result;->mStatuses:Landroid/util/LongSparseArray;

    .line 223
    iput-wide v3, p0, Lcom/android/contacts/ContactLoader$Result;->mNameRawContactId:J

    .line 224
    iput v2, p0, Lcom/android/contacts/ContactLoader$Result;->mDisplayNameSource:I

    .line 225
    iput-wide v3, p0, Lcom/android/contacts/ContactLoader$Result;->mPhotoId:J

    .line 226
    iput-object v1, p0, Lcom/android/contacts/ContactLoader$Result;->mPhotoUri:Ljava/lang/String;

    .line 227
    iput-object v1, p0, Lcom/android/contacts/ContactLoader$Result;->mDisplayName:Ljava/lang/String;

    .line 228
    iput-object v1, p0, Lcom/android/contacts/ContactLoader$Result;->mAltDisplayName:Ljava/lang/String;

    .line 229
    iput-object v1, p0, Lcom/android/contacts/ContactLoader$Result;->mPhoneticName:Ljava/lang/String;

    .line 230
    iput-boolean v2, p0, Lcom/android/contacts/ContactLoader$Result;->mStarred:Z

    .line 231
    iput-object v1, p0, Lcom/android/contacts/ContactLoader$Result;->mPresence:Ljava/lang/Integer;

    .line 232
    iput-object v1, p0, Lcom/android/contacts/ContactLoader$Result;->mInvitableAccountTypes:Ljava/util/ArrayList;

    .line 233
    iput-boolean v2, p0, Lcom/android/contacts/ContactLoader$Result;->mSendToVoicemail:Z

    .line 234
    iput-object v1, p0, Lcom/android/contacts/ContactLoader$Result;->mCustomRingtone:Ljava/lang/String;

    .line 235
    iput-object v1, p0, Lcom/android/contacts/ContactLoader$Result;->mCustomRingtoneName:Ljava/lang/String;

    .line 236
    iput-object v1, p0, Lcom/android/contacts/ContactLoader$Result;->mCustomVibrationName:Ljava/lang/String;

    .line 237
    iput-object v1, p0, Lcom/android/contacts/ContactLoader$Result;->mCustomVibrationUri:Ljava/lang/String;

    .line 238
    iput-object v1, p0, Lcom/android/contacts/ContactLoader$Result;->mCustomAlerttone:Ljava/lang/String;

    .line 239
    iput-object v1, p0, Lcom/android/contacts/ContactLoader$Result;->mCustomAlerttoneName:Ljava/lang/String;

    .line 240
    iput-boolean v2, p0, Lcom/android/contacts/ContactLoader$Result;->mIsUserProfile:Z

    .line 241
    iput-boolean v2, p0, Lcom/android/contacts/ContactLoader$Result;->mIsSim:Z

    .line 242
    iput-object v1, p0, Lcom/android/contacts/ContactLoader$Result;->mBlackList:Ljava/util/ArrayList;

    .line 243
    iput-boolean v2, p0, Lcom/android/contacts/ContactLoader$Result;->mIsPrivateContact:Z

    .line 244
    iput-boolean v2, p0, Lcom/android/contacts/ContactLoader$Result;->mIsChangedNamecard:Z

    .line 245
    iput v2, p0, Lcom/android/contacts/ContactLoader$Result;->mNamecardDataId:I

    .line 246
    return-void
.end method

.method private constructor <init>(Landroid/net/Uri;Lcom/android/contacts/ContactLoader$Result;)V
    .locals 2
    .param p1, "requestedUri"    # Landroid/net/Uri;
    .param p2, "from"    # Lcom/android/contacts/ContactLoader$Result;

    .prologue
    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 301
    iput-object p1, p0, Lcom/android/contacts/ContactLoader$Result;->mRequestedUri:Landroid/net/Uri;

    .line 303
    iget-object v0, p2, Lcom/android/contacts/ContactLoader$Result;->mStatus:Lcom/android/contacts/ContactLoader$Result$Status;

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mStatus:Lcom/android/contacts/ContactLoader$Result$Status;

    .line 304
    iget-object v0, p2, Lcom/android/contacts/ContactLoader$Result;->mException:Ljava/lang/Exception;

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mException:Ljava/lang/Exception;

    .line 305
    iget-object v0, p2, Lcom/android/contacts/ContactLoader$Result;->mLookupUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mLookupUri:Landroid/net/Uri;

    .line 306
    iget-object v0, p2, Lcom/android/contacts/ContactLoader$Result;->mUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mUri:Landroid/net/Uri;

    .line 307
    iget-wide v0, p2, Lcom/android/contacts/ContactLoader$Result;->mDirectoryId:J

    iput-wide v0, p0, Lcom/android/contacts/ContactLoader$Result;->mDirectoryId:J

    .line 308
    iget-object v0, p2, Lcom/android/contacts/ContactLoader$Result;->mLookupKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mLookupKey:Ljava/lang/String;

    .line 309
    iget-wide v0, p2, Lcom/android/contacts/ContactLoader$Result;->mId:J

    iput-wide v0, p0, Lcom/android/contacts/ContactLoader$Result;->mId:J

    .line 310
    iget-wide v0, p2, Lcom/android/contacts/ContactLoader$Result;->mNameRawContactId:J

    iput-wide v0, p0, Lcom/android/contacts/ContactLoader$Result;->mNameRawContactId:J

    .line 311
    iget v0, p2, Lcom/android/contacts/ContactLoader$Result;->mDisplayNameSource:I

    iput v0, p0, Lcom/android/contacts/ContactLoader$Result;->mDisplayNameSource:I

    .line 312
    iget-wide v0, p2, Lcom/android/contacts/ContactLoader$Result;->mPhotoId:J

    iput-wide v0, p0, Lcom/android/contacts/ContactLoader$Result;->mPhotoId:J

    .line 313
    iget-object v0, p2, Lcom/android/contacts/ContactLoader$Result;->mPhotoUri:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mPhotoUri:Ljava/lang/String;

    .line 314
    iget-object v0, p2, Lcom/android/contacts/ContactLoader$Result;->mDisplayName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mDisplayName:Ljava/lang/String;

    .line 315
    iget-object v0, p2, Lcom/android/contacts/ContactLoader$Result;->mAltDisplayName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mAltDisplayName:Ljava/lang/String;

    .line 316
    iget-object v0, p2, Lcom/android/contacts/ContactLoader$Result;->mPhoneticName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mPhoneticName:Ljava/lang/String;

    .line 317
    iget-boolean v0, p2, Lcom/android/contacts/ContactLoader$Result;->mStarred:Z

    iput-boolean v0, p0, Lcom/android/contacts/ContactLoader$Result;->mStarred:Z

    .line 318
    iget-object v0, p2, Lcom/android/contacts/ContactLoader$Result;->mPresence:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mPresence:Ljava/lang/Integer;

    .line 319
    iget-object v0, p2, Lcom/android/contacts/ContactLoader$Result;->mEntities:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mEntities:Ljava/util/ArrayList;

    .line 320
    iget-object v0, p2, Lcom/android/contacts/ContactLoader$Result;->mStreamItems:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mStreamItems:Ljava/util/ArrayList;

    .line 321
    iget-object v0, p2, Lcom/android/contacts/ContactLoader$Result;->mStatuses:Landroid/util/LongSparseArray;

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mStatuses:Landroid/util/LongSparseArray;

    .line 322
    iget-object v0, p2, Lcom/android/contacts/ContactLoader$Result;->mInvitableAccountTypes:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mInvitableAccountTypes:Ljava/util/ArrayList;

    .line 324
    iget-object v0, p2, Lcom/android/contacts/ContactLoader$Result;->mDirectoryDisplayName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mDirectoryDisplayName:Ljava/lang/String;

    .line 325
    iget-object v0, p2, Lcom/android/contacts/ContactLoader$Result;->mDirectoryType:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mDirectoryType:Ljava/lang/String;

    .line 326
    iget-object v0, p2, Lcom/android/contacts/ContactLoader$Result;->mDirectoryAccountType:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mDirectoryAccountType:Ljava/lang/String;

    .line 327
    iget-object v0, p2, Lcom/android/contacts/ContactLoader$Result;->mDirectoryAccountName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mDirectoryAccountName:Ljava/lang/String;

    .line 328
    iget v0, p2, Lcom/android/contacts/ContactLoader$Result;->mDirectoryExportSupport:I

    iput v0, p0, Lcom/android/contacts/ContactLoader$Result;->mDirectoryExportSupport:I

    .line 330
    iget-object v0, p2, Lcom/android/contacts/ContactLoader$Result;->mGroups:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mGroups:Ljava/util/ArrayList;

    .line 332
    iget-object v0, p2, Lcom/android/contacts/ContactLoader$Result;->mPhotoBinaryData:[B

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mPhotoBinaryData:[B

    .line 333
    iget-boolean v0, p2, Lcom/android/contacts/ContactLoader$Result;->mSendToVoicemail:Z

    iput-boolean v0, p0, Lcom/android/contacts/ContactLoader$Result;->mSendToVoicemail:Z

    .line 334
    iget-object v0, p2, Lcom/android/contacts/ContactLoader$Result;->mCustomRingtone:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mCustomRingtone:Ljava/lang/String;

    .line 335
    iget-object v0, p2, Lcom/android/contacts/ContactLoader$Result;->mCustomRingtoneName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mCustomRingtoneName:Ljava/lang/String;

    .line 336
    iget-object v0, p2, Lcom/android/contacts/ContactLoader$Result;->mCustomVibrationName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mCustomVibrationName:Ljava/lang/String;

    .line 337
    iget-object v0, p2, Lcom/android/contacts/ContactLoader$Result;->mCustomVibrationUri:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mCustomVibrationUri:Ljava/lang/String;

    .line 338
    iget-object v0, p2, Lcom/android/contacts/ContactLoader$Result;->mCustomAlerttone:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mCustomAlerttone:Ljava/lang/String;

    .line 339
    iget-object v0, p2, Lcom/android/contacts/ContactLoader$Result;->mCustomAlerttoneName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mCustomAlerttoneName:Ljava/lang/String;

    .line 340
    iget-object v0, p2, Lcom/android/contacts/ContactLoader$Result;->mChatOnData:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mChatOnData:Ljava/util/HashMap;

    .line 341
    iget-boolean v0, p2, Lcom/android/contacts/ContactLoader$Result;->mIsUserProfile:Z

    iput-boolean v0, p0, Lcom/android/contacts/ContactLoader$Result;->mIsUserProfile:Z

    .line 342
    iget-boolean v0, p2, Lcom/android/contacts/ContactLoader$Result;->mIsSim:Z

    iput-boolean v0, p0, Lcom/android/contacts/ContactLoader$Result;->mIsSim:Z

    .line 343
    iget-boolean v0, p2, Lcom/android/contacts/ContactLoader$Result;->mIsGooglePlus:Z

    iput-boolean v0, p0, Lcom/android/contacts/ContactLoader$Result;->mIsGooglePlus:Z

    .line 344
    iget-boolean v0, p2, Lcom/android/contacts/ContactLoader$Result;->mIsPhoneReadOnly:Z

    iput-boolean v0, p0, Lcom/android/contacts/ContactLoader$Result;->mIsPhoneReadOnly:Z

    .line 345
    iget-boolean v0, p2, Lcom/android/contacts/ContactLoader$Result;->mIsContainEmergencyGroup:Z

    iput-boolean v0, p0, Lcom/android/contacts/ContactLoader$Result;->mIsContainEmergencyGroup:Z

    .line 346
    iget-boolean v0, p2, Lcom/android/contacts/ContactLoader$Result;->mIsEasyMode:Z

    iput-boolean v0, p0, Lcom/android/contacts/ContactLoader$Result;->mIsEasyMode:Z

    .line 347
    iget-boolean v0, p2, Lcom/android/contacts/ContactLoader$Result;->mAreWritableContact:Z

    iput-boolean v0, p0, Lcom/android/contacts/ContactLoader$Result;->mAreWritableContact:Z

    .line 348
    iget-object v0, p2, Lcom/android/contacts/ContactLoader$Result;->mBlackList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mBlackList:Ljava/util/ArrayList;

    .line 349
    iget-boolean v0, p2, Lcom/android/contacts/ContactLoader$Result;->mIsPrivateContact:Z

    iput-boolean v0, p0, Lcom/android/contacts/ContactLoader$Result;->mIsPrivateContact:Z

    .line 350
    return-void
.end method

.method synthetic constructor <init>(Landroid/net/Uri;Lcom/android/contacts/ContactLoader$Result;Lcom/android/contacts/ContactLoader$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/net/Uri;
    .param p2, "x1"    # Lcom/android/contacts/ContactLoader$Result;
    .param p3, "x2"    # Lcom/android/contacts/ContactLoader$1;

    .prologue
    .line 143
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/ContactLoader$Result;-><init>(Landroid/net/Uri;Lcom/android/contacts/ContactLoader$Result;)V

    return-void
.end method

.method static synthetic access$100(Landroid/net/Uri;Ljava/lang/Exception;)Lcom/android/contacts/ContactLoader$Result;
    .locals 1
    .param p0, "x0"    # Landroid/net/Uri;
    .param p1, "x1"    # Ljava/lang/Exception;

    .prologue
    .line 143
    invoke-static {p0, p1}, Lcom/android/contacts/ContactLoader$Result;->forError(Landroid/net/Uri;Ljava/lang/Exception;)Lcom/android/contacts/ContactLoader$Result;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/contacts/ContactLoader$Result;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/ContactLoader$Result;
    .param p1, "x1"    # Z

    .prologue
    .line 143
    iput-boolean p1, p0, Lcom/android/contacts/ContactLoader$Result;->mIsEasyMode:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/contacts/ContactLoader$Result;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/ContactLoader$Result;

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mEntities:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/contacts/ContactLoader$Result;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/ContactLoader$Result;
    .param p1, "x1"    # Z

    .prologue
    .line 143
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactLoader$Result;->setAreWritableAccount(Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/contacts/ContactLoader$Result;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/ContactLoader$Result;
    .param p1, "x1"    # Z

    .prologue
    .line 143
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactLoader$Result;->setIsGooglePlus(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/contacts/ContactLoader$Result;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/ContactLoader$Result;
    .param p1, "x1"    # Z

    .prologue
    .line 143
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactLoader$Result;->setIsPhoneReadOnly(Z)V

    return-void
.end method

.method static synthetic access$1502(Lcom/android/contacts/ContactLoader$Result;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/ContactLoader$Result;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/android/contacts/ContactLoader$Result;->mGroups:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/contacts/ContactLoader$Result;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/ContactLoader$Result;

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/android/contacts/ContactLoader$Result;->mIsContainEmergencyGroup:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/android/contacts/ContactLoader$Result;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/ContactLoader$Result;
    .param p1, "x1"    # Z

    .prologue
    .line 143
    iput-boolean p1, p0, Lcom/android/contacts/ContactLoader$Result;->mIsContainEmergencyGroup:Z

    return p1
.end method

.method static synthetic access$1702(Lcom/android/contacts/ContactLoader$Result;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/ContactLoader$Result;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/android/contacts/ContactLoader$Result;->mStreamItems:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/contacts/ContactLoader$Result;Ljava/util/HashMap;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/ContactLoader$Result;
    .param p1, "x1"    # Ljava/util/HashMap;

    .prologue
    .line 143
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactLoader$Result;->setChatOnData(Ljava/util/HashMap;)V

    return-void
.end method

.method static synthetic access$200(Landroid/net/Uri;)Lcom/android/contacts/ContactLoader$Result;
    .locals 1
    .param p0, "x0"    # Landroid/net/Uri;

    .prologue
    .line 143
    invoke-static {p0}, Lcom/android/contacts/ContactLoader$Result;->forNotFound(Landroid/net/Uri;)Lcom/android/contacts/ContactLoader$Result;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/contacts/ContactLoader$Result;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/ContactLoader$Result;

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/android/contacts/ContactLoader$Result;->mIsChangedNamecard:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/contacts/ContactLoader$Result;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/ContactLoader$Result;

    .prologue
    .line 143
    iget v0, p0, Lcom/android/contacts/ContactLoader$Result;->mNamecardDataId:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/contacts/ContactLoader$Result;[B)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/ContactLoader$Result;
    .param p1, "x1"    # [B

    .prologue
    .line 143
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactLoader$Result;->setPhotoBinaryData([B)V

    return-void
.end method

.method static synthetic access$602(Lcom/android/contacts/ContactLoader$Result;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/ContactLoader$Result;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/android/contacts/ContactLoader$Result;->mInvitableAccountTypes:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/contacts/ContactLoader$Result;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/ContactLoader$Result;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # I

    .prologue
    .line 143
    invoke-direct/range {p0 .. p5}, Lcom/android/contacts/ContactLoader$Result;->setDirectoryMetaData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/contacts/ContactLoader$Result;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/ContactLoader$Result;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 143
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactLoader$Result;->addBlackListData(Ljava/lang/String;)V

    return-void
.end method

.method private addBlackListData(Ljava/lang/String;)V
    .locals 1
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 636
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mBlackList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 637
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mBlackList:Ljava/util/ArrayList;

    .line 639
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mBlackList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 640
    return-void
.end method

.method private static forError(Landroid/net/Uri;Ljava/lang/Exception;)Lcom/android/contacts/ContactLoader$Result;
    .locals 2
    .param p0, "requestedUri"    # Landroid/net/Uri;
    .param p1, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 249
    new-instance v0, Lcom/android/contacts/ContactLoader$Result;

    sget-object v1, Lcom/android/contacts/ContactLoader$Result$Status;->ERROR:Lcom/android/contacts/ContactLoader$Result$Status;

    invoke-direct {v0, p0, v1, p1}, Lcom/android/contacts/ContactLoader$Result;-><init>(Landroid/net/Uri;Lcom/android/contacts/ContactLoader$Result$Status;Ljava/lang/Exception;)V

    return-object v0
.end method

.method private static forNotFound(Landroid/net/Uri;)Lcom/android/contacts/ContactLoader$Result;
    .locals 3
    .param p0, "requestedUri"    # Landroid/net/Uri;

    .prologue
    .line 253
    new-instance v0, Lcom/android/contacts/ContactLoader$Result;

    sget-object v1, Lcom/android/contacts/ContactLoader$Result$Status;->NOT_FOUND:Lcom/android/contacts/ContactLoader$Result$Status;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/contacts/ContactLoader$Result;-><init>(Landroid/net/Uri;Lcom/android/contacts/ContactLoader$Result$Status;Ljava/lang/Exception;)V

    return-object v0
.end method

.method private setAreWritableAccount(Z)V
    .locals 0
    .param p1, "areWritable"    # Z

    .prologue
    .line 380
    iput-boolean p1, p0, Lcom/android/contacts/ContactLoader$Result;->mAreWritableContact:Z

    .line 381
    return-void
.end method

.method private setChatOnData(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 370
    .local p1, "chatOnData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[Ljava/lang/Boolean;>;"
    iput-object p1, p0, Lcom/android/contacts/ContactLoader$Result;->mChatOnData:Ljava/util/HashMap;

    .line 371
    return-void
.end method

.method private setDirectoryMetaData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "directoryType"    # Ljava/lang/String;
    .param p3, "accountType"    # Ljava/lang/String;
    .param p4, "accountName"    # Ljava/lang/String;
    .param p5, "exportSupport"    # I

    .prologue
    .line 357
    iput-object p1, p0, Lcom/android/contacts/ContactLoader$Result;->mDirectoryDisplayName:Ljava/lang/String;

    .line 358
    iput-object p2, p0, Lcom/android/contacts/ContactLoader$Result;->mDirectoryType:Ljava/lang/String;

    .line 359
    iput-object p3, p0, Lcom/android/contacts/ContactLoader$Result;->mDirectoryAccountType:Ljava/lang/String;

    .line 360
    iput-object p4, p0, Lcom/android/contacts/ContactLoader$Result;->mDirectoryAccountName:Ljava/lang/String;

    .line 361
    iput p5, p0, Lcom/android/contacts/ContactLoader$Result;->mDirectoryExportSupport:I

    .line 362
    return-void
.end method

.method private setIsGooglePlus(Z)V
    .locals 0
    .param p1, "isGooglePlus"    # Z

    .prologue
    .line 375
    iput-boolean p1, p0, Lcom/android/contacts/ContactLoader$Result;->mIsGooglePlus:Z

    .line 376
    return-void
.end method

.method private setIsPhoneReadOnly(Z)V
    .locals 0
    .param p1, "isPhoneReadOnly"    # Z

    .prologue
    .line 385
    iput-boolean p1, p0, Lcom/android/contacts/ContactLoader$Result;->mIsPhoneReadOnly:Z

    .line 386
    return-void
.end method

.method private setPhotoBinaryData([B)V
    .locals 0
    .param p1, "photoBinaryData"    # [B

    .prologue
    .line 365
    iput-object p1, p0, Lcom/android/contacts/ContactLoader$Result;->mPhotoBinaryData:[B

    .line 366
    return-void
.end method


# virtual methods
.method public areWritable()Z
    .locals 1

    .prologue
    .line 601
    iget-boolean v0, p0, Lcom/android/contacts/ContactLoader$Result;->mAreWritableContact:Z

    return v0
.end method

.method public createEntityDeltaList()Lcom/android/contacts/model/EntityDeltaList;
    .locals 1

    .prologue
    .line 421
    invoke-virtual {p0}, Lcom/android/contacts/ContactLoader$Result;->getEntities()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 422
    invoke-virtual {p0}, Lcom/android/contacts/ContactLoader$Result;->getEntities()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/model/EntityDeltaList;->fromIterator(Ljava/util/Iterator;)Lcom/android/contacts/model/EntityDeltaList;

    move-result-object v0

    .line 424
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAltDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 488
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mAltDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getBlackList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 669
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mBlackList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getChatOnData()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 699
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mChatOnData:Ljava/util/HashMap;

    return-object v0
.end method

.method public getContentValues()Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 605
    iget-object v7, p0, Lcom/android/contacts/ContactLoader$Result;->mEntities:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_0

    .line 606
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "Cannot extract content values from an aggregated contact"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 610
    :cond_0
    iget-object v7, p0, Lcom/android/contacts/ContactLoader$Result;->mEntities:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Entity;

    .line 611
    .local v0, "entity":Landroid/content/Entity;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 612
    .local v4, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-virtual {v0}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v6

    .line 613
    .local v6, "subValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Entity$NamedContentValues;>;"
    if-eqz v6, :cond_2

    .line 614
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 615
    .local v5, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_2

    .line 616
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Entity$NamedContentValues;

    .line 617
    .local v2, "pair":Landroid/content/Entity$NamedContentValues;
    sget-object v7, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iget-object v8, v2, Landroid/content/Entity$NamedContentValues;->uri:Landroid/net/Uri;

    invoke-virtual {v7, v8}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 618
    iget-object v7, v2, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 615
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 625
    .end local v1    # "i":I
    .end local v2    # "pair":Landroid/content/Entity$NamedContentValues;
    .end local v5    # "size":I
    :cond_2
    iget-wide v7, p0, Lcom/android/contacts/ContactLoader$Result;->mPhotoId:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-nez v7, :cond_3

    iget-object v7, p0, Lcom/android/contacts/ContactLoader$Result;->mPhotoBinaryData:[B

    if-eqz v7, :cond_3

    .line 626
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 627
    .local v3, "photo":Landroid/content/ContentValues;
    const-string v7, "mimetype"

    const-string v8, "vnd.android.cursor.item/photo"

    invoke-virtual {v3, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    const-string v7, "data15"

    iget-object v8, p0, Lcom/android/contacts/ContactLoader$Result;->mPhotoBinaryData:[B

    invoke-virtual {v3, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 629
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 632
    .end local v3    # "photo":Landroid/content/ContentValues;
    :cond_3
    return-object v4
.end method

.method public getCustomAlerttone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 655
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mCustomAlerttone:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomAlerttoneName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 689
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mCustomAlerttoneName:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomRingtone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 651
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mCustomRingtone:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomRingtoneName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 679
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mCustomRingtoneName:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomVibrationName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 684
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mCustomVibrationName:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomVibrationUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 694
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mCustomVibrationUri:Ljava/lang/String;

    return-object v0
.end method

.method public getDirectoryAccountName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 577
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mDirectoryAccountName:Ljava/lang/String;

    return-object v0
.end method

.method public getDirectoryAccountType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 573
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mDirectoryAccountType:Ljava/lang/String;

    return-object v0
.end method

.method public getDirectoryDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 565
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mDirectoryDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getDirectoryExportSupport()I
    .locals 1

    .prologue
    .line 561
    iget v0, p0, Lcom/android/contacts/ContactLoader$Result;->mDirectoryExportSupport:I

    return v0
.end method

.method public getDirectoryId()J
    .locals 2

    .prologue
    .line 520
    iget-wide v0, p0, Lcom/android/contacts/ContactLoader$Result;->mDirectoryId:J

    return-wide v0
.end method

.method public getDirectoryType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 569
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mDirectoryType:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 484
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayNameSource()I
    .locals 1

    .prologue
    .line 472
    iget v0, p0, Lcom/android/contacts/ContactLoader$Result;->mDisplayNameSource:I

    return v0
.end method

.method public getEntities()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Entity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 508
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mEntities:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getException()Ljava/lang/Exception;
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mException:Ljava/lang/Exception;

    return-object v0
.end method

.method public getFirstWritableRawContactId(Landroid/content/Context;)J
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v7, -0x1

    .line 542
    invoke-virtual {p0}, Lcom/android/contacts/ContactLoader$Result;->isDirectoryEntry()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 557
    :cond_0
    :goto_0
    return-wide v7

    .line 545
    :cond_1
    invoke-static {p1}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v1

    .line 546
    .local v1, "accountTypes":Lcom/android/contacts/model/AccountTypeManager;
    invoke-virtual {p0}, Lcom/android/contacts/ContactLoader$Result;->getEntities()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Entity;

    .line 547
    .local v3, "entity":Landroid/content/Entity;
    invoke-virtual {v3}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v6

    .line 548
    .local v6, "values":Landroid/content/ContentValues;
    const-string v9, "account_type"

    invoke-virtual {v6, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 549
    .local v5, "type":Ljava/lang/String;
    const-string v9, "data_set"

    invoke-virtual {v6, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 551
    .local v2, "dataSet":Ljava/lang/String;
    invoke-virtual {v1, v5, v2}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/AccountType;

    move-result-object v0

    .line 552
    .local v0, "accountType":Lcom/android/contacts/model/AccountType;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/contacts/model/AccountType;->areContactsWritable()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 553
    const-string v7, "_id"

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    goto :goto_0
.end method

.method public getGroupMetaData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/GroupMetaData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 643
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mGroups:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 431
    iget-wide v0, p0, Lcom/android/contacts/ContactLoader$Result;->mId:J

    return-wide v0
.end method

.method public getInvitableAccountTypes()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/model/AccountType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 504
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mInvitableAccountTypes:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLookupKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mLookupKey:Ljava/lang/String;

    return-object v0
.end method

.method public getLookupUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mLookupUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getNameRawContactId()J
    .locals 2

    .prologue
    .line 468
    iget-wide v0, p0, Lcom/android/contacts/ContactLoader$Result;->mNameRawContactId:J

    return-wide v0
.end method

.method public getPhoneticName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 492
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mPhoneticName:Ljava/lang/String;

    return-object v0
.end method

.method public getPhotoBinaryData()[B
    .locals 1

    .prologue
    .line 581
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mPhotoBinaryData:[B

    return-object v0
.end method

.method public getPhotoId()J
    .locals 2

    .prologue
    .line 476
    iget-wide v0, p0, Lcom/android/contacts/ContactLoader$Result;->mPhotoId:J

    return-wide v0
.end method

.method public getPhotoUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mPhotoUri:Ljava/lang/String;

    return-object v0
.end method

.method public getPresence()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mPresence:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRequestedUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mRequestedUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getStarred()Z
    .locals 1

    .prologue
    .line 496
    iget-boolean v0, p0, Lcom/android/contacts/ContactLoader$Result;->mStarred:Z

    return v0
.end method

.method public getStatuses()Landroid/util/LongSparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/LongSparseArray",
            "<",
            "Lcom/android/contacts/util/DataStatus;",
            ">;"
        }
    .end annotation

    .prologue
    .line 516
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mStatuses:Landroid/util/LongSparseArray;

    return-object v0
.end method

.method public getStreamItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/util/StreamItemEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 512
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mStreamItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public isBridgedContact()Z
    .locals 5

    .prologue
    .line 707
    invoke-virtual {p0}, Lcom/android/contacts/ContactLoader$Result;->getEntities()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Entity;

    .line 708
    .local v0, "entity":Landroid/content/Entity;
    invoke-virtual {v0}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v3

    .line 709
    .local v3, "values":Landroid/content/ContentValues;
    const-string v4, "account_type"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 710
    .local v2, "type":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "vnd.sec.contact.phone_knox"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "vnd.sec.contact.phone_personal"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 712
    :cond_1
    const/4 v4, 0x1

    .line 715
    .end local v0    # "entity":Landroid/content/Entity;
    .end local v2    # "type":Ljava/lang/String;
    .end local v3    # "values":Landroid/content/ContentValues;
    :goto_0
    return v4

    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public isChangedNamecard()Z
    .locals 1

    .prologue
    .line 719
    iget-boolean v0, p0, Lcom/android/contacts/ContactLoader$Result;->mIsChangedNamecard:Z

    return v0
.end method

.method public isContainEmergencyGroup()Z
    .locals 1

    .prologue
    .line 593
    iget-boolean v0, p0, Lcom/android/contacts/ContactLoader$Result;->mIsContainEmergencyGroup:Z

    return v0
.end method

.method public isDirectoryEntry()Z
    .locals 4

    .prologue
    .line 524
    iget-wide v0, p0, Lcom/android/contacts/ContactLoader$Result;->mDirectoryId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/contacts/ContactLoader$Result;->mDirectoryId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/contacts/ContactLoader$Result;->mDirectoryId:J

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEasyMode()Z
    .locals 1

    .prologue
    .line 597
    iget-boolean v0, p0, Lcom/android/contacts/ContactLoader$Result;->mIsEasyMode:Z

    return v0
.end method

.method public isError()Z
    .locals 2

    .prologue
    .line 442
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mStatus:Lcom/android/contacts/ContactLoader$Result$Status;

    sget-object v1, Lcom/android/contacts/ContactLoader$Result$Status;->ERROR:Lcom/android/contacts/ContactLoader$Result$Status;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGooglePlus()Z
    .locals 1

    .prologue
    .line 585
    iget-boolean v0, p0, Lcom/android/contacts/ContactLoader$Result;->mIsGooglePlus:Z

    return v0
.end method

.method public isLoaded()Z
    .locals 2

    .prologue
    .line 464
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mStatus:Lcom/android/contacts/ContactLoader$Result$Status;

    sget-object v1, Lcom/android/contacts/ContactLoader$Result$Status;->LOADED:Lcom/android/contacts/ContactLoader$Result$Status;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNotFound()Z
    .locals 2

    .prologue
    .line 456
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$Result;->mStatus:Lcom/android/contacts/ContactLoader$Result$Status;

    sget-object v1, Lcom/android/contacts/ContactLoader$Result$Status;->NOT_FOUND:Lcom/android/contacts/ContactLoader$Result$Status;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPhoneReadOnly()Z
    .locals 1

    .prologue
    .line 589
    iget-boolean v0, p0, Lcom/android/contacts/ContactLoader$Result;->mIsPhoneReadOnly:Z

    return v0
.end method

.method public isPrivateContact()Z
    .locals 1

    .prologue
    .line 702
    iget-boolean v0, p0, Lcom/android/contacts/ContactLoader$Result;->mIsPrivateContact:Z

    return v0
.end method

.method public isSendToVoicemail()Z
    .locals 1

    .prologue
    .line 647
    iget-boolean v0, p0, Lcom/android/contacts/ContactLoader$Result;->mSendToVoicemail:Z

    return v0
.end method

.method public isSim()Z
    .locals 1

    .prologue
    .line 674
    iget-boolean v0, p0, Lcom/android/contacts/ContactLoader$Result;->mIsSim:Z

    return v0
.end method

.method public isUserProfile()Z
    .locals 1

    .prologue
    .line 659
    iget-boolean v0, p0, Lcom/android/contacts/ContactLoader$Result;->mIsUserProfile:Z

    return v0
.end method

.method public isWritableContact(Landroid/content/Context;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 533
    invoke-virtual {p0, p1}, Lcom/android/contacts/ContactLoader$Result;->getFirstWritableRawContactId(Landroid/content/Context;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setIsChangedNamecard(Z)V
    .locals 0
    .param p1, "isChanged"    # Z

    .prologue
    .line 723
    iput-boolean p1, p0, Lcom/android/contacts/ContactLoader$Result;->mIsChangedNamecard:Z

    .line 724
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 664
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{requested="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/ContactLoader$Result;->mRequestedUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",lookupkey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/ContactLoader$Result;->mLookupKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/ContactLoader$Result;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/ContactLoader$Result;->mStatus:Lcom/android/contacts/ContactLoader$Result$Status;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
