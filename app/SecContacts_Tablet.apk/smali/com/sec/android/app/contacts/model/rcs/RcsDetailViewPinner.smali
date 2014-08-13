.class public Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinner;
.super Ljava/lang/Object;
.source "RcsDetailViewPinner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinner$RcsServiceObserver;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field isRcs:Z

.field mContext:Landroid/content/Context;

.field mFtBar:Landroid/widget/LinearLayout;

.field mFtButton:Landroid/widget/Button;

.field mFtIntent:Landroid/content/Intent;

.field mImBar:Landroid/widget/LinearLayout;

.field mImButton:Landroid/widget/Button;

.field mImIntent:Landroid/content/Intent;

.field mIsFTEnabled:Z

.field mIsIMEnabled:Z

.field mIsObserverRegisted:Z

.field private mQueryUri:Landroid/net/Uri;

.field private mRcsServiceObserver:Landroid/database/ContentObserver;

.field private mTelNumber:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const-class v0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinner;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinner;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinner;->isRcs:Z

    .line 40
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinner;->mIsObserverRegisted:Z

    .line 42
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinner;->mIsIMEnabled:Z

    .line 44
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinner;->mIsFTEnabled:Z

    .line 46
    iput-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinner;->mImIntent:Landroid/content/Intent;

    .line 48
    iput-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinner;->mFtIntent:Landroid/content/Intent;

    .line 50
    iput-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinner;->mImButton:Landroid/widget/Button;

    .line 52
    iput-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinner;->mFtButton:Landroid/widget/Button;

    .line 55
    iput-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinner;->mImBar:Landroid/widget/LinearLayout;

    .line 56
    iput-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinner;->mFtBar:Landroid/widget/LinearLayout;

    .line 64
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinner;->mTelNumber:Ljava/lang/String;

    .line 89
    iput-object p1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinner;->mContext:Landroid/content/Context;

    .line 90
    new-instance v0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinner$RcsServiceObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinner$RcsServiceObserver;-><init>(Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinner;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinner;->mRcsServiceObserver:Landroid/database/ContentObserver;

    .line 92
    return-void
.end method

.method private normalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "telNumber"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 272
    sget-object v0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinner;->TAG:Ljava/lang/String;

    const-string v1, "Hardcoded normalization !"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    const-string v0, " "

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 278
    const-string v0, "-"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 279
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinner;->isIntenationalFormat(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 281
    const-string v0, "+34"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 282
    :cond_0
    return-object p1
.end method


# virtual methods
.method public generateTelUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "telNumber"    # Ljava/lang/String;

    .prologue
    .line 251
    sget-object v2, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinner;->TAG:Ljava/lang/String;

    const-string v3, "generateTelUri(%s)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    if-nez p1, :cond_0

    .line 253
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Null telephone number"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 259
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "tel:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 261
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinner;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 263
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 266
    .local v0, "result":Ljava/lang/String;
    sget-object v2, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinner;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    return-object v0
.end method

.method public isIntenationalFormat(Ljava/lang/String;)Z
    .locals 3
    .param p1, "telNumber"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 286
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2b

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public pinFillDataAtTheEnd(Ljava/lang/String;)V
    .locals 2
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 100
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinner;->generateTelUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinner;->mTelNumber:Ljava/lang/String;

    .line 103
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinner;->query()Landroid/database/Cursor;

    move-result-object v0

    .line 104
    .local v0, "c":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 106
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 108
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinner;->isRcs:Z

    .line 109
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinner;->registerObserver()V

    .line 110
    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinner;->readDataFromQuery(Landroid/database/Cursor;)V

    .line 116
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 120
    :cond_0
    return-void

    .line 114
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinner;->isRcs:Z

    goto :goto_0
.end method

.method public pinOnDestroy()V
    .locals 2

    .prologue
    .line 212
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinner;->mIsObserverRegisted:Z

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinner;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinner;->mRcsServiceObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 215
    :cond_0
    return-void
.end method

.method query()Landroid/database/Cursor;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 124
    sget-object v0, Lcom/sec/android/app/contacts/model/rcs/ServiceProviderFields;->SIP_LOOKUP_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinner;->mTelNumber:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinner;->mQueryUri:Landroid/net/Uri;

    .line 127
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinner;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinner;->mQueryUri:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 131
    .local v6, "ret":Landroid/database/Cursor;
    return-object v6
.end method

.method readDataFromQuery(Landroid/database/Cursor;)V
    .locals 14
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 165
    iput-boolean v11, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinner;->mIsIMEnabled:Z

    .line 166
    iput-boolean v11, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinner;->mIsFTEnabled:Z

    .line 167
    iput-object v13, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinner;->mImIntent:Landroid/content/Intent;

    .line 168
    iput-object v13, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinner;->mFtIntent:Landroid/content/Intent;

    .line 170
    if-eqz p1, :cond_3

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 171
    const-string v11, "feature_tag"

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 172
    .local v7, "serviceTagNo":I
    const-string v11, "is_enabled"

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 173
    .local v1, "enabledNo":I
    const-string v11, "int_name"

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 174
    .local v6, "intentNameNo":I
    const-string v11, "int_category"

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 177
    .local v5, "intentCategoryNo":I
    const-string v11, "sip_uri"

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 181
    .local v9, "sipUriNo":I
    :cond_0
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 182
    .local v10, "tag":Ljava/lang/String;
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 184
    .local v0, "enabled":I
    if-lez v0, :cond_2

    .line 186
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 187
    .local v8, "sipUri":Ljava/lang/String;
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 188
    .local v3, "intentAction":Ljava/lang/String;
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 190
    .local v4, "intentCategory":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-direct {v2, v3, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 191
    .local v2, "i":Landroid/content/Intent;
    invoke-virtual {v2, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 193
    const-string v11, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcse.im\""

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 194
    iput-boolean v12, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinner;->mIsIMEnabled:Z

    .line 195
    iput-object v2, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinner;->mImIntent:Landroid/content/Intent;

    .line 199
    :cond_1
    const-string v11, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcse.ft\""

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 200
    iput-object v2, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinner;->mFtIntent:Landroid/content/Intent;

    .line 201
    iput-boolean v12, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinner;->mIsFTEnabled:Z

    .line 204
    .end local v2    # "i":Landroid/content/Intent;
    .end local v3    # "intentAction":Ljava/lang/String;
    .end local v4    # "intentCategory":Ljava/lang/String;
    .end local v8    # "sipUri":Ljava/lang/String;
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-nez v11, :cond_0

    .line 206
    .end local v0    # "enabled":I
    .end local v1    # "enabledNo":I
    .end local v5    # "intentCategoryNo":I
    .end local v6    # "intentNameNo":I
    .end local v7    # "serviceTagNo":I
    .end local v9    # "sipUriNo":I
    .end local v10    # "tag":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method registerObserver()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 136
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinner;->mIsObserverRegisted:Z

    if-nez v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinner;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinner;->mQueryUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinner;->mRcsServiceObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 139
    iput-boolean v3, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinner;->mIsObserverRegisted:Z

    .line 141
    :cond_0
    return-void
.end method
