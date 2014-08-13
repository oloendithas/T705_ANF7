.class public Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;
.super Ljava/lang/Object;
.source "PhoneNumberHelper.java"


# static fields
.field protected static final SCROLL_STATE_UNKNOWN:I = -0x1

.field private static final TAG:Ljava/lang/String; = "PhoneNumberHelper"


# instance fields
.field private final mResources:Landroid/content/res/Resources;

.field protected volatile mScrollState:I

.field private final mVoicemailNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 1
    .param p1, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->mResources:Landroid/content/res/Resources;

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->mVoicemailNumber:Ljava/lang/String;

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->mScrollState:I

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Ljava/lang/String;)V
    .locals 1
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "voicemailNumber"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->mResources:Landroid/content/res/Resources;

    .line 57
    iput-object p2, p0, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->mVoicemailNumber:Ljava/lang/String;

    .line 58
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->mScrollState:I

    .line 59
    return-void
.end method


# virtual methods
.method public canPlaceCallsTo(Ljava/lang/CharSequence;)Z
    .locals 2
    .param p1, "number"    # Ljava/lang/CharSequence;

    .prologue
    .line 63
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "-1"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "-2"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "-3"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "NTT DOCOMO"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "-4"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0e009c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0e009d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0e009e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0e03c2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0e03c4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0e03c5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "P"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "feature_kor"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->isCalledPartyBCDNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canSendSmsTo(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p1, "number"    # Ljava/lang/CharSequence;

    .prologue
    .line 82
    invoke-virtual {p0, p1}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->canPlaceCallsTo(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public getCallUri(Ljava/lang/String;Landroid/content/Context;)Landroid/net/Uri;
    .locals 3
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "mContext"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 248
    move-object v0, p1

    .line 250
    .local v0, "numberString":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->isVoicemailNumber(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 251
    const-string v1, "voicemail:x"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 256
    :goto_0
    return-object v1

    .line 253
    :cond_0
    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->isSipNumber(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 254
    const-string v1, "sip"

    invoke-static {v1, v0, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    .line 256
    :cond_1
    const-string v1, "tel"

    invoke-static {v1, v0, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0
.end method

.method public getDisplayNumber(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "number"    # Ljava/lang/CharSequence;
    .param p2, "formattedNumber"    # Ljava/lang/CharSequence;

    .prologue
    const v1, 0x7f0e009c

    .line 183
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 184
    const-string p1, ""

    .line 241
    .end local p1    # "number":Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    return-object p1

    .line 187
    .restart local p1    # "number":Ljava/lang/CharSequence;
    :cond_1
    const-string v0, "-1"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 188
    sget-boolean v0, Lcom/android/contacts/activities/DialtactsActivity;->mIsVendorLGT:Z

    if-eqz v0, :cond_2

    .line 189
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0e03c2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 191
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 194
    :cond_3
    const-string v0, "-2"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 195
    sget-boolean v0, Lcom/android/contacts/activities/DialtactsActivity;->mIsVendorKTT:Z

    if-eqz v0, :cond_4

    .line 196
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0e03cc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 197
    :cond_4
    sget-boolean v0, Lcom/android/contacts/activities/DialtactsActivity;->mIsVendorSKT:Z

    if-eqz v0, :cond_5

    .line 198
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 200
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0e009d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 203
    :cond_6
    const-string v0, "-3"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 204
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0e009e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 212
    :cond_7
    sget-boolean v0, Lcom/android/contacts/activities/DialtactsActivity;->mIsVendorLGT:Z

    if-eqz v0, :cond_8

    .line 213
    const-string v0, "-4"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 214
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 220
    :cond_8
    sget-boolean v0, Lcom/android/contacts/activities/DialtactsActivity;->mIsSamsungCorean:Z

    if-eqz v0, :cond_9

    .line 221
    const-string v0, "-5"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 222
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0e03c5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 227
    :cond_9
    sget-boolean v0, Lcom/android/contacts/activities/DialtactsActivity;->mIsSamsungCorean:Z

    if-eqz v0, :cond_a

    .line 228
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->isCalledPartyBCDNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->formatPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 235
    :cond_a
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 238
    const-string v0, "disable_format_number"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object p1, p2

    .line 241
    goto/16 :goto_0
.end method

.method public getDisplayNumber(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 9
    .param p1, "number"    # Ljava/lang/CharSequence;
    .param p2, "formattedNumber"    # Ljava/lang/CharSequence;
    .param p3, "countryIso"    # Ljava/lang/String;
    .param p4, "mContext"    # Landroid/content/Context;

    .prologue
    const v8, 0x7f0e009e

    const v7, 0x7f0e009d

    const v6, 0x7f0e009c

    .line 92
    const/4 v0, 0x0

    .line 94
    .local v0, "dispNumber":Ljava/lang/CharSequence;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 95
    const-string p1, ""

    .line 178
    .end local p1    # "number":Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    return-object p1

    .line 98
    .restart local p1    # "number":Ljava/lang/CharSequence;
    :cond_1
    const-string v3, "PhoneNumberHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDisplayNumber, number : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 104
    const-string v3, "-1"

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 105
    sget-boolean v3, Lcom/android/contacts/activities/DialtactsActivity;->mIsVendorLGT:Z

    if-eqz v3, :cond_2

    .line 106
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0e03c2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 108
    :cond_2
    const-string v3, "PhoneNumberHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDisplayNumber, unknown : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 113
    :cond_3
    const-string v3, "-2"

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 114
    sget-boolean v3, Lcom/android/contacts/activities/DialtactsActivity;->mIsVendorKTT:Z

    if-eqz v3, :cond_4

    .line 115
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0e03cc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 116
    :cond_4
    sget-boolean v3, Lcom/android/contacts/activities/DialtactsActivity;->mIsVendorSKT:Z

    if-eqz v3, :cond_5

    .line 117
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 119
    :cond_5
    const-string v3, "PhoneNumberHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDisplayNumber, private_num : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 124
    :cond_6
    const-string v3, "-3"

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 125
    const-string v3, "PhoneNumberHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDisplayNumber, payphone : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 130
    :cond_7
    sget-boolean v3, Lcom/android/contacts/activities/DialtactsActivity;->mIsVendorLGT:Z

    if-eqz v3, :cond_8

    .line 131
    const-string v3, "-4"

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 132
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 138
    :cond_8
    sget-boolean v3, Lcom/android/contacts/activities/DialtactsActivity;->mIsSamsungCorean:Z

    if-eqz v3, :cond_9

    .line 139
    const-string v3, "-5"

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 140
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0e03c5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 145
    :cond_9
    sget-boolean v3, Lcom/android/contacts/activities/DialtactsActivity;->mIsSamsungCorean:Z

    if-nez v3, :cond_a

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "disable_format_number"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 152
    :cond_a
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 153
    invoke-static {p4}, Lcom/android/contacts/ContactsUtils;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 158
    .local v2, "mCountryIso":Ljava/lang/String;
    :goto_1
    iget v3, p0, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->mScrollState:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_e

    .line 159
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 165
    :goto_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 166
    .local v1, "locale":Ljava/lang/String;
    const-string v3, "ar"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    const-string v3, "fa"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    const-string v3, "ur"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    const-string v3, "iw"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 167
    :cond_b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u202d"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u202c"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 169
    :cond_c
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 171
    const-string v3, "feature_kor"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 172
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->isCalledPartyBCDNumber(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 173
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->formatPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 156
    .end local v1    # "locale":Ljava/lang/String;
    .end local v2    # "mCountryIso":Ljava/lang/String;
    :cond_d
    move-object v2, p3

    .restart local v2    # "mCountryIso":Ljava/lang/String;
    goto :goto_1

    .line 162
    :cond_e
    move-object v0, p1

    goto :goto_2

    .restart local v1    # "locale":Ljava/lang/String;
    :cond_f
    move-object p1, v0

    .line 175
    goto/16 :goto_0

    :cond_10
    move-object p1, v0

    .line 178
    goto/16 :goto_0
.end method

.method public isSipNumber(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p1, "number"    # Ljava/lang/CharSequence;

    .prologue
    .line 284
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isVoicemailNumber(Ljava/lang/CharSequence;)Z
    .locals 2
    .param p1, "number"    # Ljava/lang/CharSequence;

    .prologue
    .line 261
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->mVoicemailNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->mVoicemailNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVoicemailNumber(Ljava/lang/CharSequence;I)Z
    .locals 5
    .param p1, "number"    # Ljava/lang/CharSequence;
    .param p2, "simId"    # I

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 265
    const/4 v0, 0x0

    .line 266
    .local v0, "voicemailNumber":Ljava/lang/String;
    const-string v3, "feature_chn_duos"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 267
    if-ne p2, v4, :cond_0

    .line 268
    invoke-static {v1}, Landroid/telephony/MultiSimTelephonyManager;->getDefault(I)Landroid/telephony/MultiSimTelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    .line 279
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    :goto_1
    return v1

    .line 270
    :cond_0
    invoke-static {v2}, Landroid/telephony/MultiSimTelephonyManager;->getDefault(I)Landroid/telephony/MultiSimTelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 272
    :cond_1
    if-ne p2, v4, :cond_2

    .line 273
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSecondary()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 275
    :cond_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getFirst()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    move v1, v2

    .line 279
    goto :goto_1
.end method

.method protected setScrollState(I)V
    .locals 0
    .param p1, "scrollState"    # I

    .prologue
    .line 288
    iput p1, p0, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->mScrollState:I

    .line 289
    return-void
.end method
