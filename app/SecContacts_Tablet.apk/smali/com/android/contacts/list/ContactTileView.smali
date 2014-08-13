.class public Lcom/android/contacts/list/ContactTileView;
.super Landroid/widget/FrameLayout;
.source "ContactTileView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/list/ContactTileView$Listener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCallButtonLayout:Landroid/view/View;

.field private mCallImage:Landroid/widget/ImageView;

.field private mCallPhoneNumber:Ljava/lang/String;

.field private mContactLink:Ljava/lang/String;

.field private mDetailContainer:Landroid/view/View;

.field private mDisplayName:Ljava/lang/String;

.field mEabPresenceIcon:Landroid/widget/ImageView;

.field private mGridCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private mHasEmail:Z

.field private mHasPhoneNumber:Ljava/lang/Boolean;

.field private mHorizontalDivider:Landroid/view/View;

.field private mIsPhone:Z

.field private mIsStarred:I

.field private mIsUserProfile:I

.field private mIsVoLTEEnabled:Z

.field private mListCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private mListHoverManager:Lcom/sec/android/app/contacts/ListHoverManager;

.field private mListener:Lcom/android/contacts/list/ContactTileView$Listener;

.field private mLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mLookupKey:Ljava/lang/String;

.field private mLookupUri:Landroid/net/Uri;

.field private mName:Landroid/widget/TextView;

.field private mPhoneLabel:Landroid/widget/TextView;

.field private mPhoneNumber:Landroid/widget/TextView;

.field private mPhoto:Landroid/widget/ImageView;

.field private mPhotoManager:Lcom/android/contacts/ContactPhotoManager;

.field private mPushState:Landroid/view/View;

.field private mQuickContact:Landroid/widget/QuickContactBadge;

.field private mSetDoubleLine:Z

.field private mStarredCallButton:Landroid/widget/ImageButton;

.field private mStarredCallButtonContainer:Landroid/view/View;

.field private mStatus:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 94
    const-class v0, Lcom/android/contacts/list/ContactTileView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/list/ContactTileView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 137
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 104
    iput-object v2, p0, Lcom/android/contacts/list/ContactTileView;->mPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    .line 109
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mHasPhoneNumber:Ljava/lang/Boolean;

    .line 119
    iput-boolean v1, p0, Lcom/android/contacts/list/ContactTileView;->mHasEmail:Z

    .line 123
    iput-boolean v1, p0, Lcom/android/contacts/list/ContactTileView;->mIsVoLTEEnabled:Z

    .line 125
    iput-boolean v1, p0, Lcom/android/contacts/list/ContactTileView;->mSetDoubleLine:Z

    .line 126
    iput-object v2, p0, Lcom/android/contacts/list/ContactTileView;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 138
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/list/ContactTileView;)Lcom/android/contacts/list/ContactTileView$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/ContactTileView;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mListener:Lcom/android/contacts/list/ContactTileView$Listener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/contacts/list/ContactTileView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/ContactTileView;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lcom/android/contacts/list/ContactTileView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/contacts/list/ContactTileView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/ContactTileView;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getEabPresenceIcon(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "status"    # I

    .prologue
    .line 743
    sget-boolean v0, Lcom/android/contacts/ContactsApplication;->TAG_IMS_FEATURE_ENABLED:Z

    if-eqz v0, :cond_0

    .line 744
    packed-switch p1, :pswitch_data_0

    .line 754
    :pswitch_0
    sget-object v0, Lcom/android/contacts/list/ContactTileView;->TAG:Ljava/lang/String;

    const-string v1, "EAB status is not on, so showing lte_not_connected icon"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0203e9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 758
    :goto_0
    return-object v0

    .line 750
    :pswitch_1
    sget-object v0, Lcom/android/contacts/list/ContactTileView;->TAG:Ljava/lang/String;

    const-string v1, "EAB status is on, so showing the lte_connected icon"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0203e8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 758
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 744
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getCheckBox()Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .locals 1

    .prologue
    .line 485
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mPushState:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 486
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mGridCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 488
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mListCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    goto :goto_0
.end method

.method public getContactLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 796
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mContactLink:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 800
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getEabPresence(J)I
    .locals 10
    .param p1, "contactid"    # J

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x0

    .line 704
    const-string v8, ""

    .line 705
    .local v8, "rawcontactid":Ljava/lang/String;
    sget-object v1, Lcom/android/contacts/list/ContactTileView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "contactid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    const-string v6, "1"

    .line 707
    .local v6, "capability":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/contacts/list/ContactTileView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 708
    .local v0, "resolver":Landroid/content/ContentResolver;
    sget-boolean v1, Lcom/android/contacts/ContactsApplication;->TAG_IMS_FEATURE_ENABLED:Z

    if-eqz v1, :cond_3

    .line 709
    sget-object v1, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->capabilitymap:Ljava/util/HashMap;

    if-eqz v1, :cond_2

    .line 710
    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "contact_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 713
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_2

    .line 715
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 716
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 717
    sget-object v1, Lcom/android/contacts/list/ContactTileView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bind view cursor No of rows :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    :cond_0
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 720
    if-eqz v8, :cond_4

    const-string v1, ""

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->capabilitymap:Ljava/util/HashMap;

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 722
    sget-object v1, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->capabilitymap:Ljava/util/HashMap;

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 723
    const-string v6, "0"

    .line 730
    :cond_1
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 734
    .end local v7    # "cursor":Landroid/database/Cursor;
    :cond_2
    sget-object v1, Lcom/android/contacts/list/ContactTileView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Value of capability :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    :cond_3
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 728
    .restart local v7    # "cursor":Landroid/database/Cursor;
    :cond_4
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0
.end method

.method public getEmailAddress(Landroid/net/Uri;)Ljava/lang/String;
    .locals 12
    .param p1, "contactUri"    # Landroid/net/Uri;

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x3

    const/4 v9, 0x1

    const/4 v3, 0x0

    .line 396
    if-nez p1, :cond_1

    .line 397
    sget-object v0, Lcom/android/contacts/list/ContactTileView;->TAG:Ljava/lang/String;

    const-string v2, "Contact URI is null."

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    :cond_0
    :goto_0
    return-object v3

    .line 401
    :cond_1
    const-string v0, "entities"

    invoke-static {p1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 402
    .local v1, "uri":Landroid/net/Uri;
    sget-object v0, Lcom/android/contacts/list/ContactTileView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSweepActionStarted() / uri = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const-string v4, "data1"

    aput-object v4, v2, v9

    const-string v4, "is_super_primary"

    aput-object v4, v2, v11

    const-string v4, "mimetype"

    aput-object v4, v2, v10

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 413
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_6

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_6

    .line 415
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 417
    const-string v0, "vnd.android.cursor.item/email_v2"

    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 421
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 422
    .local v7, "isSuperPrimary":I
    if-eqz v7, :cond_2

    .line 423
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 424
    .local v8, "sendEmailAddress":Ljava/lang/String;
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v3, v8

    .line 425
    goto :goto_0

    .line 434
    .end local v7    # "isSuperPrimary":I
    .end local v8    # "sendEmailAddress":Ljava/lang/String;
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 436
    :cond_4
    const-string v0, "vnd.android.cursor.item/email_v2"

    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 437
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 438
    .restart local v8    # "sendEmailAddress":Ljava/lang/String;
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v3, v8

    .line 439
    goto/16 :goto_0

    .line 441
    .end local v8    # "sendEmailAddress":Ljava/lang/String;
    :cond_5
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_4

    .line 443
    :cond_6
    if-eqz v6, :cond_0

    .line 444
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method public getEnableTouchScreenHeight()I
    .locals 6

    .prologue
    .line 330
    iget-object v2, p0, Lcom/android/contacts/list/ContactTileView;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 331
    .local v1, "wm":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 332
    .local v0, "dsp":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x3feae147ae147ae1L

    mul-double/2addr v2, v4

    double-to-int v2, v2

    return v2
.end method

.method public getLookupKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 788
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mLookupKey:Ljava/lang/String;

    return-object v0
.end method

.method public getLookupUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 784
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mLookupUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getNameView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 450
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mName:Landroid/widget/TextView;

    return-object v0
.end method

.method public getPhoneNumber(Landroid/net/Uri;)Ljava/lang/String;
    .locals 12
    .param p1, "contactUri"    # Landroid/net/Uri;

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x3

    const/4 v9, 0x1

    const/4 v3, 0x0

    .line 341
    if-nez p1, :cond_1

    .line 342
    sget-object v0, Lcom/android/contacts/list/ContactTileView;->TAG:Ljava/lang/String;

    const-string v2, "Contact URI is null."

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    :cond_0
    :goto_0
    return-object v3

    .line 346
    :cond_1
    const-string v0, "entities"

    invoke-static {p1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 347
    .local v1, "uri":Landroid/net/Uri;
    sget-object v0, Lcom/android/contacts/list/ContactTileView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSweepActionStarted() / uri = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const-string v4, "data1"

    aput-object v4, v2, v9

    const-string v4, "is_super_primary"

    aput-object v4, v2, v11

    const-string v4, "mimetype"

    aput-object v4, v2, v10

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 358
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_6

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_6

    .line 360
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 362
    const-string v0, "vnd.android.cursor.item/phone_v2"

    invoke-interface {v7, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 366
    invoke-interface {v7, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 367
    .local v8, "isSuperPrimary":I
    if-eqz v8, :cond_2

    .line 368
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 369
    .local v6, "callPhoneNumber":Ljava/lang/String;
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v3, v6

    .line 370
    goto :goto_0

    .line 379
    .end local v6    # "callPhoneNumber":Ljava/lang/String;
    .end local v8    # "isSuperPrimary":I
    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 381
    :cond_4
    const-string v0, "vnd.android.cursor.item/phone_v2"

    invoke-interface {v7, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 382
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 383
    .restart local v6    # "callPhoneNumber":Ljava/lang/String;
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v3, v6

    .line 384
    goto/16 :goto_0

    .line 386
    .end local v6    # "callPhoneNumber":Ljava/lang/String;
    :cond_5
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_4

    .line 388
    :cond_6
    if-eqz v7, :cond_0

    .line 389
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method public hasEmail()Z
    .locals 1

    .prologue
    .line 828
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactTileView;->mHasEmail:Z

    return v0
.end method

.method public hasPhoneNumber()Z
    .locals 1

    .prologue
    .line 824
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mHasPhoneNumber:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public hideGridCheckBox()V
    .locals 2

    .prologue
    .line 479
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mGridCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mGridCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    .line 482
    :cond_0
    return-void
.end method

.method public hideListCheckBox()V
    .locals 2

    .prologue
    .line 467
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mListCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    if-eqz v0, :cond_0

    .line 468
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mListCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    .line 470
    :cond_0
    return-void
.end method

.method protected isDarkTheme()Z
    .locals 1

    .prologue
    .line 808
    const/4 v0, 0x0

    return v0
.end method

.method protected isDefaultIconHires()I
    .locals 1

    .prologue
    .line 804
    const/4 v0, -0x1

    return v0
.end method

.method public isStarred()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 820
    iget v1, p0, Lcom/android/contacts/list/ContactTileView;->mIsStarred:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUserProfile()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 792
    iget v1, p0, Lcom/android/contacts/list/ContactTileView;->mIsUserProfile:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isdoubleline()Z
    .locals 1

    .prologue
    .line 816
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactTileView;->mSetDoubleLine:Z

    return v0
.end method

.method public loadFromContact(Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;I)V
    .locals 12
    .param p1, "entry"    # Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;
    .param p2, "viewType"    # I

    .prologue
    .line 508
    const/4 v8, 0x2

    .line 509
    .local v8, "FREQUENT":I
    if-eqz p1, :cond_14

    .line 510
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mName:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 511
    iget-object v0, p1, Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mDisplayName:Ljava/lang/String;

    .line 513
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 514
    .local v11, "prefs":Landroid/content/SharedPreferences;
    if-ne p2, v8, :cond_0

    const-string v0, "huge_font"

    const/4 v1, 0x0

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 516
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactTileView;->mContext:Landroid/content/Context;

    const v2, 0x7f110052

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 519
    :cond_0
    iget-object v0, p1, Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;->lookupKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mLookupKey:Ljava/lang/String;

    .line 520
    iget-object v0, p1, Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;->lookupKeyUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mLookupUri:Landroid/net/Uri;

    .line 536
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mStatus:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 537
    if-eq p2, v8, :cond_1

    .line 538
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mName:Landroid/widget/TextView;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/contacts/list/ContactTileView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c00dc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 541
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mPhoneLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 542
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mPhoneLabel:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;->phoneLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 545
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mPhoneNumber:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 547
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mPhoneNumber:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 550
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactTileView;->setVisibility(I)V

    .line 552
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    if-eqz v0, :cond_d

    .line 553
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mPhoto:Landroid/widget/ImageView;

    if-eqz v0, :cond_a

    .line 555
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonblet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 556
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    iget-object v1, p0, Lcom/android/contacts/list/ContactTileView;->mPhoto:Landroid/widget/ImageView;

    iget-object v2, p1, Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;->photoUri:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileView;->isDefaultIconHires()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileView;->isDarkTheme()Z

    move-result v4

    iget-wide v5, p1, Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;->contactId:J

    const/4 v7, 0x1

    invoke-virtual/range {v0 .. v7}, Lcom/android/contacts/ContactPhotoManager;->loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;IZJZ)V

    .line 563
    :goto_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mQuickContact:Landroid/widget/QuickContactBadge;

    if-eqz v0, :cond_4

    .line 564
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mQuickContact:Landroid/widget/QuickContactBadge;

    iget-object v1, p0, Lcom/android/contacts/list/ContactTileView;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 586
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mPushState:Landroid/view/View;

    if-eqz v0, :cond_e

    .line 587
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mPushState:Landroid/view/View;

    iget-object v1, p1, Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 592
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mStarredCallButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mStarredCallButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/contacts/list/ContactTileView;->mIsPhone:Z

    if-eqz v0, :cond_6

    .line 593
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mStarredCallButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/contacts/list/ContactTileView;->mContext:Landroid/content/Context;

    const v2, 0x7f0e031f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 594
    iget v0, p1, Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;->hasPhoneNumber:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    .line 595
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mStarredCallButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 596
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mStarredCallButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mStarredCallButtonContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 617
    :cond_6
    if-eq p2, v8, :cond_7

    .line 619
    :try_start_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonblet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 621
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactTileView;->mSetDoubleLine:Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 639
    :cond_7
    :goto_3
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mCallButtonLayout:Landroid/view/View;

    if-eqz v0, :cond_8

    .line 640
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mCallButtonLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 642
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Contact_EnableCallButtonInList"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 644
    iget v0, p1, Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;->hasPhoneNumber:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 670
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mCallButtonLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 675
    :cond_8
    iget v0, p1, Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;->isUserProfile:I

    iput v0, p0, Lcom/android/contacts/list/ContactTileView;->mIsUserProfile:I

    .line 676
    iget-object v0, p1, Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;->contactLink:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mContactLink:Ljava/lang/String;

    .line 678
    iget v0, p1, Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;->starred:I

    iput v0, p0, Lcom/android/contacts/list/ContactTileView;->mIsStarred:I

    .line 679
    iget v0, p1, Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;->hasPhoneNumber:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    const/4 v0, 0x1

    :goto_4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mHasPhoneNumber:Ljava/lang/Boolean;

    .line 680
    iget v0, p1, Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;->hasEmail:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    const/4 v0, 0x1

    :goto_5
    iput-boolean v0, p0, Lcom/android/contacts/list/ContactTileView;->mHasEmail:Z

    .line 686
    .end local v11    # "prefs":Landroid/content/SharedPreferences;
    :goto_6
    return-void

    .line 559
    .restart local v11    # "prefs":Landroid/content/SharedPreferences;
    :cond_9
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    iget-object v1, p0, Lcom/android/contacts/list/ContactTileView;->mPhoto:Landroid/widget/ImageView;

    iget-object v2, p1, Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;->photoUri:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileView;->isDefaultIconHires()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileView;->isDarkTheme()Z

    move-result v4

    iget-wide v5, p1, Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;->contactId:J

    invoke-virtual/range {v0 .. v6}, Lcom/android/contacts/ContactPhotoManager;->loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;IZJ)V

    goto/16 :goto_0

    .line 566
    :cond_a
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mQuickContact:Landroid/widget/QuickContactBadge;

    if-eqz v0, :cond_4

    .line 567
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mQuickContact:Landroid/widget/QuickContactBadge;

    iget-object v1, p0, Lcom/android/contacts/list/ContactTileView;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 569
    iget-wide v0, p1, Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;->photoId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_b

    .line 570
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    iget-object v1, p0, Lcom/android/contacts/list/ContactTileView;->mQuickContact:Landroid/widget/QuickContactBadge;

    iget-wide v2, p1, Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;->photoId:J

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileView;->isDarkTheme()Z

    move-result v4

    iget-wide v5, p1, Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;->contactId:J

    invoke-virtual/range {v0 .. v6}, Lcom/android/contacts/ContactPhotoManager;->loadThumbnail(Landroid/widget/ImageView;JZJ)V

    goto/16 :goto_1

    .line 573
    :cond_b
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonblet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 574
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    iget-object v1, p0, Lcom/android/contacts/list/ContactTileView;->mQuickContact:Landroid/widget/QuickContactBadge;

    iget-object v2, p1, Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;->photoUri:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileView;->isDefaultIconHires()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileView;->isDarkTheme()Z

    move-result v4

    iget-wide v5, p1, Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;->contactId:J

    const/4 v7, 0x1

    invoke-virtual/range {v0 .. v7}, Lcom/android/contacts/ContactPhotoManager;->loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;IZJZ)V

    goto/16 :goto_1

    .line 577
    :cond_c
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    iget-object v1, p0, Lcom/android/contacts/list/ContactTileView;->mQuickContact:Landroid/widget/QuickContactBadge;

    iget-object v2, p1, Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;->photoUri:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileView;->isDefaultIconHires()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileView;->isDarkTheme()Z

    move-result v4

    iget-wide v5, p1, Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;->contactId:J

    invoke-virtual/range {v0 .. v6}, Lcom/android/contacts/ContactPhotoManager;->loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;IZJ)V

    goto/16 :goto_1

    .line 583
    :cond_d
    sget-object v0, Lcom/android/contacts/list/ContactTileView;->TAG:Ljava/lang/String;

    const-string v1, "contactPhotoManager not set"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 588
    :cond_e
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mQuickContact:Landroid/widget/QuickContactBadge;

    if-eqz v0, :cond_5

    .line 589
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mQuickContact:Landroid/widget/QuickContactBadge;

    iget-object v1, p1, Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/QuickContactBadge;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 623
    :cond_f
    :try_start_1
    iget-object v0, p1, Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;->name:Ljava/lang/String;

    const-string v1, "KSC5601"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    .line 625
    .local v9, "getbyte":[B
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mStarredCallButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mStarredCallButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_10

    .line 626
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    .line 630
    .local v10, "maxsize":I
    :goto_7
    array-length v0, v9

    if-le v0, v10, :cond_11

    .line 631
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactTileView;->mSetDoubleLine:Z

    goto/16 :goto_3

    .line 636
    .end local v9    # "getbyte":[B
    .end local v10    # "maxsize":I
    :catch_0
    move-exception v0

    goto/16 :goto_3

    .line 628
    .restart local v9    # "getbyte":[B
    :cond_10
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    .restart local v10    # "maxsize":I
    goto :goto_7

    .line 633
    :cond_11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactTileView;->mSetDoubleLine:Z
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    .line 679
    .end local v9    # "getbyte":[B
    .end local v10    # "maxsize":I
    :cond_12
    const/4 v0, 0x0

    goto/16 :goto_4

    .line 680
    :cond_13
    const/4 v0, 0x0

    goto/16 :goto_5

    .line 682
    .end local v11    # "prefs":Landroid/content/SharedPreferences;
    :cond_14
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactTileView;->setVisibility(I)V

    goto/16 :goto_6
.end method

.method protected onFinishInflate()V
    .locals 11

    .prologue
    const/4 v8, 0x0

    const/4 v10, 0x0

    .line 170
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 171
    const v7, 0x7f0901bc

    invoke-virtual {p0, v7}, Lcom/android/contacts/list/ContactTileView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/contacts/list/ContactTileView;->mName:Landroid/widget/TextView;

    .line 172
    const v7, 0x7f0901b7

    invoke-virtual {p0, v7}, Lcom/android/contacts/list/ContactTileView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/contacts/list/ContactTileView;->mDetailContainer:Landroid/view/View;

    .line 173
    const v7, 0x7f0901b4

    invoke-virtual {p0, v7}, Lcom/android/contacts/list/ContactTileView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/QuickContactBadge;

    iput-object v7, p0, Lcom/android/contacts/list/ContactTileView;->mQuickContact:Landroid/widget/QuickContactBadge;

    .line 174
    const v7, 0x7f0901d1

    invoke-virtual {p0, v7}, Lcom/android/contacts/list/ContactTileView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/android/contacts/list/ContactTileView;->mPhoto:Landroid/widget/ImageView;

    .line 175
    const v7, 0x7f0901bd

    invoke-virtual {p0, v7}, Lcom/android/contacts/list/ContactTileView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/contacts/list/ContactTileView;->mStatus:Landroid/widget/TextView;

    .line 176
    const v7, 0x7f0901c2

    invoke-virtual {p0, v7}, Lcom/android/contacts/list/ContactTileView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/contacts/list/ContactTileView;->mPhoneLabel:Landroid/widget/TextView;

    .line 177
    const v7, 0x7f0901c1

    invoke-virtual {p0, v7}, Lcom/android/contacts/list/ContactTileView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/contacts/list/ContactTileView;->mPhoneNumber:Landroid/widget/TextView;

    .line 178
    const v7, 0x7f0901d4

    invoke-virtual {p0, v7}, Lcom/android/contacts/list/ContactTileView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/contacts/list/ContactTileView;->mPushState:Landroid/view/View;

    .line 179
    const v7, 0x7f0901be

    invoke-virtual {p0, v7}, Lcom/android/contacts/list/ContactTileView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/contacts/list/ContactTileView;->mHorizontalDivider:Landroid/view/View;

    .line 180
    const v7, 0x7f0901b9

    invoke-virtual {p0, v7}, Lcom/android/contacts/list/ContactTileView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/android/contacts/list/ContactTileView;->mCallImage:Landroid/widget/ImageView;

    .line 183
    const v7, 0x7f0901d5

    invoke-virtual {p0, v7}, Lcom/android/contacts/list/ContactTileView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v7, p0, Lcom/android/contacts/list/ContactTileView;->mGridCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 184
    const v7, 0x7f0901b5

    invoke-virtual {p0, v7}, Lcom/android/contacts/list/ContactTileView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v7, p0, Lcom/android/contacts/list/ContactTileView;->mListCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 186
    iget-object v7, p0, Lcom/android/contacts/list/ContactTileView;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/contacts/list/ContactTileView;->mIsPhone:Z

    .line 188
    iget-boolean v7, p0, Lcom/android/contacts/list/ContactTileView;->mIsPhone:Z

    if-eqz v7, :cond_5

    .line 189
    const v7, 0x7f0901b8

    invoke-virtual {p0, v7}, Lcom/android/contacts/list/ContactTileView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/contacts/list/ContactTileView;->mCallButtonLayout:Landroid/view/View;

    .line 190
    const v7, 0x7f0901d6

    invoke-virtual {p0, v7}, Lcom/android/contacts/list/ContactTileView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageButton;

    iput-object v7, p0, Lcom/android/contacts/list/ContactTileView;->mStarredCallButton:Landroid/widget/ImageButton;

    .line 191
    const v7, 0x7f0901d2

    invoke-virtual {p0, v7}, Lcom/android/contacts/list/ContactTileView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/contacts/list/ContactTileView;->mStarredCallButtonContainer:Landroid/view/View;

    .line 199
    :goto_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_Contact_DisableContactPhoto"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 200
    iget-object v7, p0, Lcom/android/contacts/list/ContactTileView;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/android/contacts/list/ContactTileView;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 201
    :cond_0
    const v7, 0x7f0901b6

    invoke-virtual {p0, v7}, Lcom/android/contacts/list/ContactTileView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 202
    .local v2, "imageContainer":Landroid/view/View;
    const v7, 0x7f0901bb

    invoke-virtual {p0, v7}, Lcom/android/contacts/list/ContactTileView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    .line 203
    .local v6, "textItem":Landroid/widget/RelativeLayout;
    if-eqz v2, :cond_1

    if-eqz v6, :cond_1

    .line 204
    const/16 v7, 0x8

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 205
    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getPaddingTop()I

    move-result v7

    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getPaddingRight()I

    move-result v8

    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getPaddingBottom()I

    move-result v9

    invoke-virtual {v6, v10, v7, v8, v9}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 210
    .end local v2    # "imageContainer":Landroid/view/View;
    .end local v6    # "textItem":Landroid/widget/RelativeLayout;
    :cond_1
    new-instance v4, Lcom/android/contacts/list/ContactTileView$1;

    invoke-direct {v4, p0}, Lcom/android/contacts/list/ContactTileView$1;-><init>(Lcom/android/contacts/list/ContactTileView;)V

    .line 219
    .local v4, "listener":Landroid/view/View$OnClickListener;
    new-instance v1, Lcom/android/contacts/list/ContactTileView$2;

    invoke-direct {v1, p0}, Lcom/android/contacts/list/ContactTileView$2;-><init>(Lcom/android/contacts/list/ContactTileView;)V

    .line 228
    .local v1, "contextListener":Landroid/view/View$OnCreateContextMenuListener;
    new-instance v3, Lcom/android/contacts/list/ContactTileView$3;

    invoke-direct {v3, p0}, Lcom/android/contacts/list/ContactTileView$3;-><init>(Lcom/android/contacts/list/ContactTileView;)V

    .line 242
    .local v3, "keylistener":Landroid/view/View$OnKeyListener;
    new-instance v7, Lcom/android/contacts/list/ContactTileView$4;

    invoke-direct {v7, p0}, Lcom/android/contacts/list/ContactTileView$4;-><init>(Lcom/android/contacts/list/ContactTileView;)V

    iput-object v7, p0, Lcom/android/contacts/list/ContactTileView;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 255
    iget-object v7, p0, Lcom/android/contacts/list/ContactTileView;->mCallButtonLayout:Landroid/view/View;

    if-eqz v7, :cond_3

    .line 256
    iget-object v7, p0, Lcom/android/contacts/list/ContactTileView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v8, "com.sec.feature.hovering_ui"

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 257
    iget-object v7, p0, Lcom/android/contacts/list/ContactTileView;->mCallButtonLayout:Landroid/view/View;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/view/View;->setHoverPopupType(I)V

    .line 258
    iget-object v7, p0, Lcom/android/contacts/list/ContactTileView;->mCallButtonLayout:Landroid/view/View;

    iget-object v8, p0, Lcom/android/contacts/list/ContactTileView;->mContext:Landroid/content/Context;

    const v9, 0x7f0e031f

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 261
    :cond_2
    iget-object v7, p0, Lcom/android/contacts/list/ContactTileView;->mCallButtonLayout:Landroid/view/View;

    new-instance v8, Lcom/android/contacts/list/ContactTileView$5;

    invoke-direct {v8, p0}, Lcom/android/contacts/list/ContactTileView$5;-><init>(Lcom/android/contacts/list/ContactTileView;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 305
    :cond_3
    iget-object v7, p0, Lcom/android/contacts/list/ContactTileView;->mPushState:Landroid/view/View;

    if-eqz v7, :cond_6

    .line 306
    iget-object v7, p0, Lcom/android/contacts/list/ContactTileView;->mPushState:Landroid/view/View;

    invoke-virtual {v7, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 307
    iget-object v7, p0, Lcom/android/contacts/list/ContactTileView;->mPushState:Landroid/view/View;

    invoke-virtual {v7, v3}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 308
    iget-object v7, p0, Lcom/android/contacts/list/ContactTileView;->mPushState:Landroid/view/View;

    invoke-virtual {v7, v1}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 309
    iget-object v7, p0, Lcom/android/contacts/list/ContactTileView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 310
    .local v0, "config":Landroid/content/res/Configuration;
    iget v7, v0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_4

    iget v7, v0, Landroid/content/res/Configuration;->navigation:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_4

    .line 312
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_Contact_EnableBackupSvc4Ctc"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 314
    iget-object v7, p0, Lcom/android/contacts/list/ContactTileView;->mPushState:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 316
    .local v5, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    iget-object v7, p0, Lcom/android/contacts/list/ContactTileView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c00db

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-virtual {v5, v10, v10, v10, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 318
    iget-object v7, p0, Lcom/android/contacts/list/ContactTileView;->mPushState:Landroid/view/View;

    invoke-virtual {v7, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 326
    .end local v0    # "config":Landroid/content/res/Configuration;
    .end local v5    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_4
    :goto_1
    return-void

    .line 193
    .end local v1    # "contextListener":Landroid/view/View$OnCreateContextMenuListener;
    .end local v3    # "keylistener":Landroid/view/View$OnKeyListener;
    .end local v4    # "listener":Landroid/view/View$OnClickListener;
    :cond_5
    iput-object v8, p0, Lcom/android/contacts/list/ContactTileView;->mCallButtonLayout:Landroid/view/View;

    .line 194
    iput-object v8, p0, Lcom/android/contacts/list/ContactTileView;->mStarredCallButton:Landroid/widget/ImageButton;

    .line 195
    iput-object v8, p0, Lcom/android/contacts/list/ContactTileView;->mStarredCallButtonContainer:Landroid/view/View;

    goto/16 :goto_0

    .line 322
    .restart local v1    # "contextListener":Landroid/view/View$OnCreateContextMenuListener;
    .restart local v3    # "keylistener":Landroid/view/View$OnKeyListener;
    .restart local v4    # "listener":Landroid/view/View$OnClickListener;
    :cond_6
    invoke-virtual {p0, v4}, Lcom/android/contacts/list/ContactTileView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 323
    invoke-virtual {p0, v3}, Lcom/android/contacts/list/ContactTileView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 324
    invoke-virtual {p0, v1}, Lcom/android/contacts/list/ContactTileView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    goto :goto_1
.end method

.method public setEabPresence(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v3, -0x2

    .line 145
    sget-boolean v1, Lcom/android/contacts/ContactsApplication;->TAG_IMS_FEATURE_ENABLED:Z

    if-eqz v1, :cond_1

    .line 146
    if-eqz p1, :cond_2

    .line 147
    iget-object v1, p0, Lcom/android/contacts/list/ContactTileView;->mEabPresenceIcon:Landroid/widget/ImageView;

    if-nez v1, :cond_0

    .line 148
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/contacts/list/ContactTileView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/contacts/list/ContactTileView;->mEabPresenceIcon:Landroid/widget/ImageView;

    .line 149
    const/4 v0, 0x0

    .line 151
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .end local v0    # "params":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v1, 0x15

    invoke-direct {v0, v3, v3, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 154
    .restart local v0    # "params":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/android/contacts/list/ContactTileView;->mEabPresenceIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0}, Lcom/android/contacts/list/ContactTileView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 156
    .end local v0    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/list/ContactTileView;->mEabPresenceIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 157
    iget-object v1, p0, Lcom/android/contacts/list/ContactTileView;->mEabPresenceIcon:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 158
    iget-object v1, p0, Lcom/android/contacts/list/ContactTileView;->mEabPresenceIcon:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 165
    :cond_1
    :goto_0
    return-void

    .line 160
    :cond_2
    iget-object v1, p0, Lcom/android/contacts/list/ContactTileView;->mEabPresenceIcon:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 161
    iget-object v1, p0, Lcom/android/contacts/list/ContactTileView;->mEabPresenceIcon:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setHorizontalDividerVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 780
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mHorizontalDivider:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mHorizontalDivider:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 781
    :cond_0
    return-void
.end method

.method public setItemSelected(Z)V
    .locals 3
    .param p1, "selected"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 453
    iget-object v2, p0, Lcom/android/contacts/list/ContactTileView;->mPushState:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 454
    iget-object v2, p0, Lcom/android/contacts/list/ContactTileView;->mGridCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/contacts/list/ContactTileView;->mGridCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    if-eqz p1, :cond_1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 458
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 454
    goto :goto_0

    .line 456
    :cond_2
    iget-object v2, p0, Lcom/android/contacts/list/ContactTileView;->mListCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/contacts/list/ContactTileView;->mListCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    if-eqz p1, :cond_3

    :goto_2
    invoke-virtual {v2, v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method public setListener(Lcom/android/contacts/list/ContactTileView$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/contacts/list/ContactTileView$Listener;

    .prologue
    .line 776
    iput-object p1, p0, Lcom/android/contacts/list/ContactTileView;->mListener:Lcom/android/contacts/list/ContactTileView$Listener;

    .line 777
    return-void
.end method

.method public setPhotoManager(Lcom/android/contacts/ContactPhotoManager;)V
    .locals 0
    .param p1, "photoManager"    # Lcom/android/contacts/ContactPhotoManager;

    .prologue
    .line 492
    iput-object p1, p0, Lcom/android/contacts/list/ContactTileView;->mPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    .line 493
    return-void
.end method

.method setStarredCallButtonEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    const/16 v1, 0x8

    .line 764
    if-eqz p1, :cond_2

    const/4 v0, 0x0

    .line 766
    .local v0, "visibility":I
    :goto_0
    iget-object v2, p0, Lcom/android/contacts/list/ContactTileView;->mStarredCallButton:Landroid/widget/ImageButton;

    if-eqz v2, :cond_0

    .line 767
    iget-object v2, p0, Lcom/android/contacts/list/ContactTileView;->mStarredCallButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, p1}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 768
    iget-object v2, p0, Lcom/android/contacts/list/ContactTileView;->mStarredCallButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 770
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/list/ContactTileView;->mStarredCallButtonContainer:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 771
    iget-object v1, p0, Lcom/android/contacts/list/ContactTileView;->mStarredCallButtonContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 773
    :cond_1
    return-void

    .end local v0    # "visibility":I
    :cond_2
    move v0, v1

    .line 764
    goto :goto_0
.end method

.method public setVoLTEEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 812
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactTileView;->mIsVoLTEEnabled:Z

    .line 813
    return-void
.end method

.method public showEabPresence(J)V
    .locals 5
    .param p1, "contactid"    # J

    .prologue
    .line 690
    sget-object v2, Lcom/android/contacts/list/ContactTileView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showEabPresence -  contactid - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    const/4 v0, 0x0

    .line 692
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/list/ContactTileView;->getEabPresence(J)I

    move-result v1

    .line 693
    .local v1, "presence":I
    iget-object v2, p0, Lcom/android/contacts/list/ContactTileView;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/android/contacts/list/ContactTileView;->getEabPresenceIcon(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 694
    sget-boolean v2, Lcom/android/contacts/ContactsApplication;->TAG_IMS_FEATURE_ENABLED:Z

    if-eqz v2, :cond_0

    .line 695
    if-nez v1, :cond_1

    .line 696
    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactTileView;->setEabPresence(Landroid/graphics/drawable/Drawable;)V

    .line 701
    :cond_0
    :goto_0
    return-void

    .line 698
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/contacts/list/ContactTileView;->setEabPresence(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public showGridCheckBox()V
    .locals 2

    .prologue
    .line 473
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mGridCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mGridCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mGridCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    .line 476
    :cond_0
    return-void
.end method

.method public showListCheckBox()V
    .locals 2

    .prologue
    .line 461
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mListCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mListCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 462
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileView;->mListCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    .line 464
    :cond_0
    return-void
.end method
