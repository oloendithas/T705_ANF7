.class public Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;
.super Ljava/lang/Object;
.source "PhoneCallDetailsHelper.java"


# static fields
.field private static final DBG:Z = true

.field private static final MAX_CALL_TYPE_ICONS:I = 0x3

.field public static final NETWORK_RESTRICTED_NUMBER:Ljava/lang/String; = "P"

.field public static final NTT_DOCOMO:Ljava/lang/String; = "NTT DOCOMO"

.field public static final NUM_LGT_ROAMING_CUSTOMER_CENTER:Ljava/lang/String; = "+82234167010"

.field public static final NUM_MOFAT_CALL_CENTER:Ljava/lang/String; = "+82232100404"

.field public static final NUM_T_ROAMING_CUSTOMER_CENTER:Ljava/lang/String; = "+82263439000"

.field public static final PAYPHONE_NUMBER:Ljava/lang/String; = "-3"

.field public static final PRIVATE_NUMBER:Ljava/lang/String; = "-2"

.field private static final TAG:Ljava/lang/String; = "PhoneCallDetailsHelper"

.field public static final UNKNOWN_MESSAGE:Ljava/lang/String; = "-5"

.field public static final UNKNOWN_NUMBER:Ljava/lang/String; = "-1"

.field public static final UNKNOWN_PHONE:Ljava/lang/String; = "-4"


# instance fields
.field private final mCallTypeHelper:Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;

.field private mCurrentTimeMillisForTest:Ljava/lang/Long;

.field private final mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

.field private final mResources:Landroid/content/res/Resources;

.field private mVoiceMailNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;)V
    .locals 0
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "callTypeHelper"    # Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;
    .param p3, "phoneNumberHelper"    # Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;->mResources:Landroid/content/res/Resources;

    .line 119
    iput-object p2, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;->mCallTypeHelper:Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;

    .line 120
    iput-object p3, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    .line 121
    return-void
.end method

.method private addBoldAndColor(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "color"    # I

    .prologue
    const/4 v4, 0x0

    .line 948
    const/16 v0, 0x12

    .line 949
    .local v0, "flags":I
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 950
    .local v1, "result":Landroid/text/SpannableString;
    new-instance v2, Landroid/text/style/StyleSpan;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v1, v2, v4, v3, v0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 951
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v2, p2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v1, v2, v4, v3, v0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 952
    return-object v1
.end method

.method private getCurrentTimeMillis()J
    .locals 2

    .prologue
    .line 903
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;->mCurrentTimeMillisForTest:Ljava/lang/Long;

    if-nez v0, :cond_0

    .line 904
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 906
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;->mCurrentTimeMillisForTest:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0
.end method

.method private setCallCountAndDate(Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;Ljava/lang/Integer;Ljava/lang/CharSequence;Ljava/lang/Integer;)V
    .locals 7
    .param p1, "views"    # Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;
    .param p2, "callCount"    # Ljava/lang/Integer;
    .param p3, "dateText"    # Ljava/lang/CharSequence;
    .param p4, "highlightColor"    # Ljava/lang/Integer;

    .prologue
    .line 915
    if-eqz p2, :cond_0

    .line 916
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0e01f3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p3, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 924
    .local v1, "text":Ljava/lang/CharSequence;
    :goto_0
    if-eqz p4, :cond_1

    .line 925
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;->addBoldAndColor(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 931
    .local v0, "formattedText":Ljava/lang/CharSequence;
    :goto_1
    return-void

    .line 919
    .end local v0    # "formattedText":Ljava/lang/CharSequence;
    .end local v1    # "text":Ljava/lang/CharSequence;
    :cond_0
    move-object v1, p3

    .restart local v1    # "text":Ljava/lang/CharSequence;
    goto :goto_0

    .line 927
    :cond_1
    move-object v0, v1

    .restart local v0    # "formattedText":Ljava/lang/CharSequence;
    goto :goto_1
.end method

.method private setUnreadColor(Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;Ljava/lang/CharSequence;Ljava/lang/Integer;)V
    .locals 3
    .param p1, "views"    # Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "highlightColor"    # Ljava/lang/Integer;

    .prologue
    .line 937
    if-eqz p3, :cond_0

    .line 938
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, p2, v1}, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;->addBoldAndColor(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 942
    .local v0, "formattedText":Ljava/lang/CharSequence;
    :goto_0
    iget-object v1, p1, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->numberView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 943
    iget-object v1, p1, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->logType:Landroid/widget/ImageView;

    const v2, 0x7f020768

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 944
    return-void

    .line 940
    .end local v0    # "formattedText":Ljava/lang/CharSequence;
    :cond_0
    move-object v0, p2

    .restart local v0    # "formattedText":Ljava/lang/CharSequence;
    goto :goto_0
.end method


# virtual methods
.method public setCallDetailsHeader(Landroid/widget/TextView;Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;)V
    .locals 6
    .param p1, "nameView"    # Landroid/widget/TextView;
    .param p2, "details"    # Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    .prologue
    .line 881
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    iget-object v3, p2, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0e02fb

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->getDisplayNumber(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 884
    .local v0, "displayNumber":Ljava/lang/CharSequence;
    iget-object v2, p2, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 885
    move-object v1, v0

    .line 890
    .local v1, "nameText":Ljava/lang/CharSequence;
    :goto_0
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 891
    return-void

    .line 887
    .end local v1    # "nameText":Ljava/lang/CharSequence;
    :cond_0
    iget-object v1, p2, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    .restart local v1    # "nameText":Ljava/lang/CharSequence;
    goto :goto_0
.end method

.method public setCurrentTimeForTest(J)V
    .locals 1
    .param p1, "currentTimeMillis"    # J

    .prologue
    .line 894
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;->mCurrentTimeMillisForTest:Ljava/lang/Long;

    .line 895
    return-void
.end method

.method public setPhoneCallDetails(Landroid/content/Context;Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;ZILjava/lang/String;)V
    .locals 16
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "views"    # Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;
    .param p3, "details"    # Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;
    .param p4, "isHighlighted"    # Z
    .param p5, "listGroupSize"    # I
    .param p6, "cnapName"    # Ljava/lang/String;

    .prologue
    .line 127
    move-object/from16 v0, p3

    iget-object v12, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->callTypes:[I

    array-length v2, v12

    .line 129
    .local v2, "count":I
    const-string v12, "phone"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/telephony/TelephonyManager;

    invoke-virtual {v12}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;->mVoiceMailNumber:Ljava/lang/String;

    .line 132
    move-object/from16 v0, p3

    iget-object v12, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->callTypes:[I

    const/4 v13, 0x0

    aget v12, v12, v13

    packed-switch v12, :pswitch_data_0

    .line 147
    :pswitch_0
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->callIndi:Landroid/widget/ImageView;

    const v13, 0x7f02072f

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 157
    :goto_0
    const/4 v12, 0x3

    if-le v2, v12, :cond_9

    .line 158
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 163
    .local v1, "callCount":Ljava/lang/Integer;
    :goto_1
    if-eqz p4, :cond_a

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;->mCallTypeHelper:Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;

    move-object/from16 v0, p3

    iget-object v13, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->callTypes:[I

    const/4 v14, 0x0

    aget v13, v13, v14

    invoke-virtual {v12, v13}, Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;->getHighlightedColor(I)Ljava/lang/Integer;

    move-result-object v4

    .line 176
    .local v4, "highlightColor":Ljava/lang/Integer;
    :goto_2
    const/4 v9, 0x0

    .line 178
    .local v9, "numberFormattedLabel":Ljava/lang/CharSequence;
    move-object/from16 v0, p3

    iget-object v12, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 179
    const-string v12, "feature_chn_duos"

    invoke-static {v12}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    move-object/from16 v0, p3

    iget-object v12, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/telephony/MultiSimPhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    :cond_0
    move-object/from16 v0, p3

    iget-object v12, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 180
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;->mResources:Landroid/content/res/Resources;

    move-object/from16 v0, p3

    iget v13, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->numberType:I

    move-object/from16 v0, p3

    iget-object v14, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->numberLabel:Ljava/lang/CharSequence;

    invoke-static {v12, v13, v14}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v9

    .line 185
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    move-object/from16 v0, p3

    iget-object v13, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    move-object/from16 v0, p3

    iget-object v14, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->formattedNumber:Ljava/lang/CharSequence;

    invoke-virtual {v12, v13, v14}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->getDisplayNumber(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 187
    .local v3, "displayNumber":Ljava/lang/CharSequence;
    const/4 v8, 0x0

    .line 189
    .local v8, "nameWithSize":Ljava/lang/StringBuffer;
    move-object v10, v3

    .line 190
    .local v10, "numberText":Ljava/lang/CharSequence;
    move-object/from16 v0, p3

    iget-object v12, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_d

    .line 191
    move-object/from16 v0, p3

    iget-object v12, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->contactUri:Landroid/net/Uri;

    if-nez v12, :cond_c

    .line 192
    move-object/from16 v0, p3

    iget-object v12, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    check-cast v12, Ljava/lang/String;

    invoke-static {v12}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v6

    .line 194
    .local v6, "isEmergencyNumber":Z
    const-string v12, "feature_chn_duos"

    invoke-static {v12}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 195
    move-object/from16 v0, p3

    iget-object v12, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    check-cast v12, Ljava/lang/String;

    move-object/from16 v0, p3

    iget v13, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->simnum:I

    add-int/lit8 v13, v13, -0x1

    invoke-static {v12, v13}, Landroid/telephony/MultiSimPhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;I)Z

    move-result v6

    .line 198
    :cond_3
    if-eqz v6, :cond_b

    .line 199
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;->mResources:Landroid/content/res/Resources;

    const v13, 0x7f0e0327

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 228
    .end local v6    # "isEmergencyNumber":Z
    .local v7, "nameText":Ljava/lang/CharSequence;
    :goto_3
    move-object/from16 v0, p3

    iget-object v12, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;->mVoiceMailNumber:Ljava/lang/String;

    invoke-static {v12, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 229
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;->mResources:Landroid/content/res/Resources;

    const v13, 0x7f0e009b

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 230
    const-string v10, ""

    .line 233
    move-object v10, v3

    .line 236
    :cond_4
    move-object/from16 v0, p3

    iget-object v12, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    const-string v13, "-1"

    invoke-virtual {v12, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5

    move-object/from16 v0, p3

    iget-object v12, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    const-string v13, "-2"

    invoke-virtual {v12, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5

    move-object/from16 v0, p3

    iget-object v12, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    const-string v13, "-3"

    invoke-virtual {v12, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5

    const-string v12, "feature_kor"

    invoke-static {v12}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6

    move-object/from16 v0, p3

    iget-object v12, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->isCalledPartyBCDNumber(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_6

    .line 242
    :cond_5
    move-object v7, v3

    .line 243
    const-string v10, ""

    .line 246
    :cond_6
    const-string v12, "PhoneCallDetailsHelper"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "nameText : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", numberText : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    const-string v12, "PhoneCallDetailsHelper"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "listGroupSize : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p5

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    move-object/from16 v0, p3

    iget-object v12, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->contactUri:Landroid/net/Uri;

    if-nez v12, :cond_7

    .line 252
    move-object/from16 v0, p3

    iget-object v12, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->callTypes:[I

    const/4 v13, 0x0

    aget v5, v12, v13

    .line 253
    .local v5, "iCallType":I
    const/4 v12, 0x2

    if-eq v5, v12, :cond_7

    if-eqz p6, :cond_7

    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v12

    if-eqz v12, :cond_7

    .line 254
    move-object/from16 v7, p6

    .line 255
    move-object/from16 v0, p3

    iget-object v10, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    .line 261
    .end local v5    # "iCallType":I
    :cond_7
    const/4 v12, 0x1

    move/from16 v0, p5

    if-le v0, v12, :cond_8

    .line 262
    new-instance v8, Ljava/lang/StringBuffer;

    .end local v8    # "nameWithSize":Ljava/lang/StringBuffer;
    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 263
    .restart local v8    # "nameWithSize":Ljava/lang/StringBuffer;
    const-string v12, "("

    invoke-virtual {v8, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 264
    const-string v12, "%d"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 265
    const-string v12, ")"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 267
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->groupCount:Landroid/widget/TextView;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->groupCount:Landroid/widget/TextView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    .line 271
    :cond_8
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->nameView:Landroid/widget/TextView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    .line 272
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->numberView:Landroid/widget/TextView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    .line 273
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->nameView:Landroid/widget/TextView;

    invoke-virtual {v12, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->numberView:Landroid/widget/TextView;

    invoke-virtual {v12, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 275
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->numberView:Landroid/widget/TextView;

    invoke-virtual {v12, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 278
    const-string v12, "ar"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f

    const-string v12, "24"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "time_12_24"

    invoke-static {v13, v14}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f

    .line 280
    new-instance v11, Ljava/text/SimpleDateFormat;

    const-string v12, "HH:mm"

    invoke-direct {v11, v12}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 281
    .local v11, "sdf":Ljava/text/SimpleDateFormat;
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->timeView:Landroid/widget/TextView;

    move-object/from16 v0, p3

    iget-wide v13, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->date:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    .end local v11    # "sdf":Ljava/text/SimpleDateFormat;
    :goto_4
    move-object/from16 v0, p3

    iget v12, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->logType:I

    sparse-switch v12, :sswitch_data_0

    .line 313
    :goto_5
    return-void

    .line 134
    .end local v1    # "callCount":Ljava/lang/Integer;
    .end local v3    # "displayNumber":Ljava/lang/CharSequence;
    .end local v4    # "highlightColor":Ljava/lang/Integer;
    .end local v7    # "nameText":Ljava/lang/CharSequence;
    .end local v8    # "nameWithSize":Ljava/lang/StringBuffer;
    .end local v9    # "numberFormattedLabel":Ljava/lang/CharSequence;
    .end local v10    # "numberText":Ljava/lang/CharSequence;
    :pswitch_1
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->callIndi:Landroid/widget/ImageView;

    const v13, 0x7f020756

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 137
    :pswitch_2
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->callIndi:Landroid/widget/ImageView;

    const v13, 0x7f020758

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 140
    :pswitch_3
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->callIndi:Landroid/widget/ImageView;

    const v13, 0x7f020755

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 143
    :pswitch_4
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->callIndi:Landroid/widget/ImageView;

    const v13, 0x7f020757

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 160
    :cond_9
    const/4 v1, 0x0

    .restart local v1    # "callCount":Ljava/lang/Integer;
    goto/16 :goto_1

    .line 163
    :cond_a
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 202
    .restart local v3    # "displayNumber":Ljava/lang/CharSequence;
    .restart local v4    # "highlightColor":Ljava/lang/Integer;
    .restart local v6    # "isEmergencyNumber":Z
    .restart local v8    # "nameWithSize":Ljava/lang/StringBuffer;
    .restart local v9    # "numberFormattedLabel":Ljava/lang/CharSequence;
    .restart local v10    # "numberText":Ljava/lang/CharSequence;
    :cond_b
    move-object v7, v3

    .line 204
    .restart local v7    # "nameText":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;->mResources:Landroid/content/res/Resources;

    const v13, 0x7f0e02d2

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_3

    .line 209
    .end local v6    # "isEmergencyNumber":Z
    .end local v7    # "nameText":Ljava/lang/CharSequence;
    :cond_c
    move-object v7, v3

    .line 210
    .restart local v7    # "nameText":Ljava/lang/CharSequence;
    const-string v10, ""

    goto/16 :goto_3

    .line 216
    .end local v7    # "nameText":Ljava/lang/CharSequence;
    :cond_d
    move-object/from16 v0, p3

    iget-object v12, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    check-cast v12, Ljava/lang/String;

    check-cast v12, Ljava/lang/String;

    move-object/from16 v0, p3

    iget-object v13, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_e

    .line 217
    move-object v7, v3

    .line 218
    .restart local v7    # "nameText":Ljava/lang/CharSequence;
    const-string v10, ""

    goto/16 :goto_3

    .line 220
    .end local v7    # "nameText":Ljava/lang/CharSequence;
    :cond_e
    move-object/from16 v0, p3

    iget-object v7, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    .restart local v7    # "nameText":Ljava/lang/CharSequence;
    goto/16 :goto_3

    .line 284
    :cond_f
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->timeView:Landroid/widget/TextView;

    move-object/from16 v0, p3

    iget-wide v13, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->date:J

    const/16 v15, 0x101

    move-object/from16 v0, p1

    invoke-static {v0, v13, v14, v15}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 294
    :sswitch_0
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->logType:Landroid/widget/ImageView;

    const v13, 0x7f020712

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_5

    .line 297
    :sswitch_1
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->logType:Landroid/widget/ImageView;

    const v13, 0x7f02070e

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_5

    .line 300
    :sswitch_2
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->logType:Landroid/widget/ImageView;

    const v13, 0x7f020701

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_5

    .line 303
    :sswitch_3
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->logType:Landroid/widget/ImageView;

    const v13, 0x7f020702

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_5

    .line 306
    :sswitch_4
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->logType:Landroid/widget/ImageView;

    const v13, 0x7f02070b

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_5

    .line 132
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch

    .line 292
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_3
        0x12c -> :sswitch_4
        0x1f4 -> :sswitch_1
        0x320 -> :sswitch_2
    .end sparse-switch
.end method

.method public setPhoneCallDetails(Landroid/content/Context;Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 29
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "views"    # Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;
    .param p3, "details"    # Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;
    .param p4, "isHighlighted"    # Z
    .param p5, "listGroupSize"    # I
    .param p6, "cnapName"    # Ljava/lang/String;
    .param p7, "firstName"    # Ljava/lang/String;
    .param p8, "lastName"    # Ljava/lang/String;
    .param p9, "bussName"    # Ljava/lang/String;
    .param p10, "cityId"    # Ljava/lang/String;

    .prologue
    .line 319
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->callTypes:[I

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    array-length v9, v0

    .line 321
    .local v9, "count":I
    const-string v24, "feature_kor"

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_0

    .line 322
    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;->mVoiceMailNumber:Ljava/lang/String;

    .line 323
    const-string v24, "feature_common_dsds_support "

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_1a

    const-string v24, "feature_marvell_dsds"

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_1a

    .line 339
    :cond_0
    :goto_0
    const-string v24, "feature_lgt"

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_1c

    .line 340
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->callTypes:[I

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget v24, v24, v25

    sparse-switch v24, :sswitch_data_0

    .line 381
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->callIndi:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    const v25, 0x7f02072f

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 382
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->callIndi:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    const/16 v25, 0x6

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 413
    :goto_1
    const/16 v24, 0x3

    move/from16 v0, v24

    if-le v9, v0, :cond_1d

    .line 414
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 419
    .local v7, "callCount":Ljava/lang/Integer;
    :goto_2
    if-eqz p4, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;->mCallTypeHelper:Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;

    move-object/from16 v24, v0

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->callTypes:[I

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aget v25, v25, v26

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;->getHighlightedColor(I)Ljava/lang/Integer;

    move-result-object v12

    .line 432
    .local v12, "highlightColor":Ljava/lang/Integer;
    :goto_3
    const/16 v20, 0x0

    .line 434
    .local v20, "numberFormattedLabel":Ljava/lang/CharSequence;
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_3

    .line 435
    const-string v24, "feature_chn_duos"

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_1

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Landroid/telephony/MultiSimPhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_2

    :cond_1
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_3

    .line 436
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;->mResources:Landroid/content/res/Resources;

    move-object/from16 v24, v0

    move-object/from16 v0, p3

    iget v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->numberType:I

    move/from16 v25, v0

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->numberLabel:Ljava/lang/CharSequence;

    move-object/from16 v26, v0

    invoke-static/range {v24 .. v26}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v20

    .line 442
    :cond_3
    const/4 v11, 0x0

    .line 445
    .local v11, "getDisplayNumber":Ljava/lang/CharSequence;
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    move-object/from16 v23, v0

    .line 446
    .local v23, "tempNumber":Ljava/lang/CharSequence;
    const-string v24, "feature_kor"

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_5

    if-eqz v23, :cond_5

    move-object/from16 v0, p3

    iget v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->logType:I

    move/from16 v24, v0

    const/16 v25, 0xc8

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_4

    move-object/from16 v0, p3

    iget v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->logType:I

    move/from16 v24, v0

    const/16 v25, 0x12c

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_5

    :cond_4
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    move-object/from16 v24, v0

    const-string v25, "-1"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_5

    .line 449
    const-string v23, "-5"

    .line 452
    :cond_5
    const-string v24, "feature_kor"

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_1f

    .line 453
    if-eqz v23, :cond_6

    .line 454
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    move-object/from16 v24, v0

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->formattedNumber:Ljava/lang/CharSequence;

    move-object/from16 v25, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->getDisplayNumber(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v11

    .line 462
    :cond_6
    :goto_4
    move-object v10, v11

    .line 464
    .local v10, "displayNumber":Ljava/lang/CharSequence;
    const/16 v19, 0x0

    .line 466
    .local v19, "nameWithSize":Ljava/lang/StringBuffer;
    move-object/from16 v21, v10

    .line 467
    .local v21, "numberText":Ljava/lang/CharSequence;
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-eqz v24, :cond_2c

    .line 468
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->contactUri:Landroid/net/Uri;

    move-object/from16 v24, v0

    if-nez v24, :cond_2b

    .line 470
    const/4 v15, 0x0

    .line 471
    .local v15, "isEmergencyNumber":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->mScrollState:I

    move/from16 v24, v0

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_7

    .line 472
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    move-object/from16 v24, v0

    check-cast v24, Ljava/lang/String;

    invoke-static/range {v24 .. v24}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v15

    .line 473
    const-string v24, "feature_common_dsds_support "

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_20

    const-string v24, "feature_marvell_dsds"

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_20

    .line 475
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    move-object/from16 v24, v0

    check-cast v24, Ljava/lang/String;

    move-object/from16 v0, p3

    iget v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->simcardId:I

    move/from16 v25, v0

    invoke-static/range {v24 .. v25}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;I)Z

    move-result v15

    .line 481
    :cond_7
    :goto_5
    const-string v24, "feature_lgt"

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_8

    const-string v25, "114"

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    move-object/from16 v24, v0

    check-cast v24, Ljava/lang/String;

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_8

    .line 483
    const/4 v15, 0x0

    .line 486
    :cond_8
    const-string v24, "feature_chn_duos_cdma_gsm"

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_9

    const-string v25, "120"

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    move-object/from16 v24, v0

    check-cast v24, Ljava/lang/String;

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_9

    .line 488
    const/4 v15, 0x1

    .line 491
    :cond_9
    if-eqz v15, :cond_21

    .line 492
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;->mResources:Landroid/content/res/Resources;

    move-object/from16 v24, v0

    const v25, 0x7f0e0327

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 587
    .end local v15    # "isEmergencyNumber":Z
    .local v18, "nameText":Ljava/lang/CharSequence;
    :cond_a
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;->mVoiceMailNumber:Ljava/lang/String;

    move-object/from16 v24, v0

    if-eqz v24, :cond_b

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;->mVoiceMailNumber:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-static/range {v24 .. v25}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v24

    if-eqz v24, :cond_b

    .line 588
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;->mResources:Landroid/content/res/Resources;

    move-object/from16 v24, v0

    const v25, 0x7f0e009b

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 589
    const-string v24, "feature_spr"

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_2e

    .line 590
    const-string v21, ""

    .line 597
    :cond_b
    :goto_7
    const-string v24, "feature_cnam"

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_33

    .line 599
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->contactUri:Landroid/net/Uri;

    move-object/from16 v24, v0

    if-nez v24, :cond_e

    .line 600
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->callTypes:[I

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget v13, v24, v25

    .line 601
    .local v13, "iCallType":I
    const/16 v24, 0x2

    move/from16 v0, v24

    if-eq v13, v0, :cond_31

    if-eqz p7, :cond_c

    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->length()I

    move-result v24

    if-nez v24, :cond_d

    :cond_c
    if-eqz p8, :cond_31

    invoke-virtual/range {p8 .. p8}, Ljava/lang/String;->length()I

    move-result v24

    if-eqz v24, :cond_31

    .line 603
    :cond_d
    if-eqz p7, :cond_2f

    if-nez p8, :cond_2f

    .line 604
    move-object/from16 v18, p7

    .line 629
    .end local v13    # "iCallType":I
    :cond_e
    :goto_8
    const-string v24, "feature_spr"

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_f

    sget-object v24, Lcom/android/contacts/activities/DialtactsActivity;->mChameleon:Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;

    if-eqz v24, :cond_f

    .line 630
    sget-object v24, Lcom/android/contacts/activities/DialtactsActivity;->mChameleon:Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->dialADCCheckNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 631
    .local v17, "mADCService":Ljava/lang/String;
    if-eqz v17, :cond_f

    .line 632
    move-object/from16 v18, v17

    .line 633
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    move-object/from16 v21, v0

    .line 637
    .end local v17    # "mADCService":Ljava/lang/String;
    :cond_f
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    move-object/from16 v24, v0

    const-string v25, "-1"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_11

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    move-object/from16 v24, v0

    const-string v25, "-2"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_11

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    move-object/from16 v24, v0

    const-string v25, "-3"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_11

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    move-object/from16 v24, v0

    const-string v25, "P"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_11

    const-string v24, "feature_lgt"

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_10

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    move-object/from16 v24, v0

    const-string v25, "-4"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_11

    :cond_10
    const-string v24, "feature_kor"

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_12

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->isCalledPartyBCDNumber(Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_12

    .line 645
    :cond_11
    move-object/from16 v18, v10

    .line 646
    const-string v21, ""

    .line 650
    :cond_12
    const-string v24, "feature_kor"

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_16

    .line 652
    const-string v8, ""

    .line 654
    .local v8, "callService":Ljava/lang/String;
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->contactUri:Landroid/net/Uri;

    move-object/from16 v24, v0

    if-nez v24, :cond_13

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->cnapName:Ljava/lang/String;

    move-object/from16 v24, v0

    if-eqz v24, :cond_13

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->cnapName:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v24

    if-eqz v24, :cond_13

    .line 655
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->cnapName:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 658
    :cond_13
    move-object/from16 v0, p3

    iget v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->logType:I

    move/from16 v24, v0

    const/16 v25, 0x64

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_34

    move-object/from16 v0, p3

    iget v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->serviceType:I

    move/from16 v24, v0

    const/16 v25, 0x15

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_34

    .line 660
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "("

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f0e0379

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ")"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 670
    :cond_14
    :goto_9
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->contactUri:Landroid/net/Uri;

    move-object/from16 v24, v0

    if-nez v24, :cond_3d

    .line 671
    move-object/from16 v0, p3

    iget v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->serviceType:I

    move/from16 v24, v0

    const/16 v25, 0x19

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_37

    move-object/from16 v0, p3

    iget v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->logType:I

    move/from16 v24, v0

    const/16 v25, 0x12c

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_15

    move-object/from16 v0, p3

    iget v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->logType:I

    move/from16 v24, v0

    const/16 v25, 0xc8

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_37

    .line 674
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;->mResources:Landroid/content/res/Resources;

    move-object/from16 v24, v0

    const v25, 0x7f0e0495

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 701
    :goto_a
    move-object/from16 v0, p3

    iget v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->serviceType:I

    move/from16 v24, v0

    const/16 v25, 0x28

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_3e

    const-string v24, "feature_skt"

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_3e

    .line 703
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;->mResources:Landroid/content/res/Resources;

    move-object/from16 v24, v0

    const v25, 0x7f0e0496

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 704
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    move-object/from16 v21, v0

    .line 713
    .end local v8    # "callService":Ljava/lang/String;
    :cond_16
    :goto_b
    const-string v24, "PhoneCallDetailsHelper"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "nameText : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", numberText : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    const-string v24, "PhoneCallDetailsHelper"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "listGroupSize : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    const/16 v24, 0x1

    move/from16 v0, p5

    move/from16 v1, v24

    if-le v0, v1, :cond_17

    .line 718
    new-instance v19, Ljava/lang/StringBuffer;

    .end local v19    # "nameWithSize":Ljava/lang/StringBuffer;
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuffer;-><init>()V

    .line 719
    .restart local v19    # "nameWithSize":Ljava/lang/StringBuffer;
    const-string v24, "("

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 720
    const-string v24, "%d"

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 721
    const-string v24, ")"

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 723
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->groupCount:Landroid/widget/TextView;

    move-object/from16 v24, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 724
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->groupCount:Landroid/widget/TextView;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setVisibility(I)V

    .line 727
    :cond_17
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->nameView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setVisibility(I)V

    .line 728
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->numberView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setVisibility(I)V

    .line 729
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->nameView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 730
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->numberView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 732
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->numberView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 734
    const-string v24, "ctc_roaming_timezone"

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_40

    invoke-static {}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->isNetworkRoaming()Z

    move-result v24

    if-eqz v24, :cond_40

    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->getTimeDisplayScheme(Landroid/content/Context;)I

    move-result v24

    if-nez v24, :cond_40

    .line 737
    const-string v24, "ar"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_3f

    const-string v24, "24"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    const-string v26, "time_12_24"

    invoke-static/range {v25 .. v26}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_3f

    .line 739
    new-instance v22, Ljava/text/SimpleDateFormat;

    const-string v24, "HH:mm"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 740
    .local v22, "sdf":Ljava/text/SimpleDateFormat;
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->timeView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    move-object/from16 v0, p3

    iget-wide v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->date:J

    move-wide/from16 v25, v0

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 756
    .end local v22    # "sdf":Ljava/text/SimpleDateFormat;
    :goto_c
    move-object/from16 v0, p3

    iget v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->logType:I

    move/from16 v24, v0

    sparse-switch v24, :sswitch_data_1

    .line 870
    :cond_18
    :goto_d
    const-string v24, "feature_view_by_vvm"

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_19

    .line 871
    if-eqz p4, :cond_19

    .line 872
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0b0019

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getColor(I)I

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 873
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2, v12}, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;->setUnreadColor(Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;Ljava/lang/CharSequence;Ljava/lang/Integer;)V

    .line 876
    :cond_19
    return-void

    .line 326
    .end local v7    # "callCount":Ljava/lang/Integer;
    .end local v10    # "displayNumber":Ljava/lang/CharSequence;
    .end local v11    # "getDisplayNumber":Ljava/lang/CharSequence;
    .end local v12    # "highlightColor":Ljava/lang/Integer;
    .end local v18    # "nameText":Ljava/lang/CharSequence;
    .end local v19    # "nameWithSize":Ljava/lang/StringBuffer;
    .end local v20    # "numberFormattedLabel":Ljava/lang/CharSequence;
    .end local v21    # "numberText":Ljava/lang/CharSequence;
    .end local v23    # "tempNumber":Ljava/lang/CharSequence;
    :cond_1a
    const-string v24, "feature_common_use_multisim"

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_1b

    .line 327
    move-object/from16 v0, p3

    iget v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->simcardId:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/telephony/MultiSimTelephonyManager;->getDefault(I)Landroid/telephony/MultiSimTelephonyManager;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;->mVoiceMailNumber:Ljava/lang/String;

    goto/16 :goto_0

    .line 329
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->mScrollState:I

    move/from16 v24, v0

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_0

    .line 330
    const-string v24, "phone"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/telephony/TelephonyManager;

    invoke-virtual/range {v24 .. v24}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;->mVoiceMailNumber:Ljava/lang/String;

    .line 331
    const-string v24, "feature_chn_duos_cdma_gsm"

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_0

    .line 332
    const-string v24, "phone2"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/telephony/TelephonyManager;

    invoke-virtual/range {v24 .. v24}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;->mVoiceMailNumber:Ljava/lang/String;

    goto/16 :goto_0

    .line 343
    :sswitch_0
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->callIndi:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    const v25, 0x7f020756

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 344
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->callIndi:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 347
    :sswitch_1
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->callIndi:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    const v25, 0x7f020758

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 348
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->callIndi:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    const/16 v25, 0x2

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 351
    :sswitch_2
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->callIndi:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    const v25, 0x7f020755

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 352
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->callIndi:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    const/16 v25, 0x3

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 355
    :sswitch_3
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->callIndi:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    const v25, 0x7f020757

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 356
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->callIndi:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    const/16 v25, 0x5

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 359
    :sswitch_4
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->callIndi:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    const v25, 0x7f020756

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 360
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->callIndi:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    const/16 v25, 0xd

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 364
    :sswitch_5
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->callIndi:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    const v25, 0x7f020758

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 365
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->callIndi:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    const/16 v25, 0xb

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 368
    :sswitch_6
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->callIndi:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    const v25, 0x7f020758

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 369
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->callIndi:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    const/16 v25, 0x32

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 372
    :sswitch_7
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->callIndi:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    const v25, 0x7f020755

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 373
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->callIndi:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    const/16 v25, 0xe

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 376
    :sswitch_8
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->callIndi:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    const v25, 0x7f020757

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 377
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->callIndi:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    const/16 v25, 0xf

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 389
    :cond_1c
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->callTypes:[I

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget v24, v24, v25

    packed-switch v24, :pswitch_data_0

    .line 405
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->callIndi:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    const v25, 0x7f02072f

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 392
    :pswitch_0
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->callIndi:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    const v25, 0x7f020756

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 395
    :pswitch_1
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->callIndi:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    const v25, 0x7f020758

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 398
    :pswitch_2
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->callIndi:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    const v25, 0x7f020755

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 401
    :pswitch_3
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->callIndi:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    const v25, 0x7f020757

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 416
    :cond_1d
    const/4 v7, 0x0

    .restart local v7    # "callCount":Ljava/lang/Integer;
    goto/16 :goto_2

    .line 419
    :cond_1e
    const/4 v12, 0x0

    goto/16 :goto_3

    .line 457
    .restart local v11    # "getDisplayNumber":Ljava/lang/CharSequence;
    .restart local v12    # "highlightColor":Ljava/lang/Integer;
    .restart local v20    # "numberFormattedLabel":Ljava/lang/CharSequence;
    .restart local v23    # "tempNumber":Ljava/lang/CharSequence;
    :cond_1f
    if-eqz v23, :cond_6

    .line 458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    move-object/from16 v24, v0

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->formattedNumber:Ljava/lang/CharSequence;

    move-object/from16 v25, v0

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->countryIso:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    move-object/from16 v4, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->getDisplayNumber(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v11

    .line 459
    const-string v24, "PhoneCallDetailsHelper"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "setPhoneCallDetails, getDisplayNumber : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 476
    .restart local v10    # "displayNumber":Ljava/lang/CharSequence;
    .restart local v15    # "isEmergencyNumber":Z
    .restart local v19    # "nameWithSize":Ljava/lang/StringBuffer;
    .restart local v21    # "numberText":Ljava/lang/CharSequence;
    :cond_20
    const-string v24, "feature_chn_duos"

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_7

    .line 477
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    move-object/from16 v24, v0

    check-cast v24, Ljava/lang/String;

    move-object/from16 v0, p3

    iget v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->simnum:I

    move/from16 v25, v0

    add-int/lit8 v25, v25, -0x1

    invoke-static/range {v24 .. v25}, Landroid/telephony/MultiSimPhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;I)Z

    move-result v15

    goto/16 :goto_5

    .line 495
    :cond_21
    move-object/from16 v18, v10

    .line 498
    .restart local v18    # "nameText":Ljava/lang/CharSequence;
    const-string v24, "feature_cnam"

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_29

    .line 499
    const/4 v14, 0x0

    .line 501
    .local v14, "isDisableCityID":Z
    const-string v24, "feature_vzw"

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_24

    .line 502
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->callTypes:[I

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget v24, v24, v25

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_25

    if-eqz p7, :cond_22

    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->length()I

    move-result v24

    if-nez v24, :cond_23

    :cond_22
    if-eqz p8, :cond_25

    invoke-virtual/range {p8 .. p8}, Ljava/lang/String;->length()I

    move-result v24

    if-eqz v24, :cond_25

    .line 503
    :cond_23
    const/4 v14, 0x1

    .line 513
    :cond_24
    :goto_e
    if-nez v14, :cond_a

    .line 514
    invoke-static/range {p10 .. p10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_27

    .line 515
    move-object/from16 v21, p10

    .line 517
    const-string v24, "PhoneCallDetailsHelper"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "setText:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 505
    :cond_25
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->callTypes:[I

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget v24, v24, v25

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_26

    if-eqz p9, :cond_26

    invoke-virtual/range {p9 .. p9}, Ljava/lang/String;->length()I

    move-result v24

    if-eqz v24, :cond_26

    .line 506
    const/4 v14, 0x1

    goto :goto_e

    .line 508
    :cond_26
    if-eqz p6, :cond_24

    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v24

    if-eqz v24, :cond_24

    .line 509
    const/4 v14, 0x1

    goto :goto_e

    .line 542
    :cond_27
    const-string v24, "feature_usa_regional"

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_28

    .line 543
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;->mResources:Landroid/content/res/Resources;

    move-object/from16 v24, v0

    const v25, 0x7f0e009c

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 545
    :cond_28
    const-string v24, "PhoneCallDetailsHelper"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "setText:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 548
    .end local v14    # "isDisableCityID":Z
    :cond_29
    const-string v24, "feature_kor"

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_2a

    .line 549
    move-object/from16 v21, v10

    goto/16 :goto_6

    .line 552
    :cond_2a
    const-string v21, ""

    .line 553
    const-string v24, "activity"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager;

    .line 554
    .local v6, "am":Landroid/app/ActivityManager;
    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-virtual {v6, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v16

    .line 555
    .local v16, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/16 v24, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/app/ActivityManager$RunningTaskInfo;

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    .line 556
    .local v5, "ClassName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;->mResources:Landroid/content/res/Resources;

    move-object/from16 v24, v0

    const v25, 0x7f0e0326

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_6

    .line 562
    .end local v5    # "ClassName":Ljava/lang/String;
    .end local v6    # "am":Landroid/app/ActivityManager;
    .end local v15    # "isEmergencyNumber":Z
    .end local v16    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v18    # "nameText":Ljava/lang/CharSequence;
    :cond_2b
    move-object/from16 v18, v10

    .line 563
    .restart local v18    # "nameText":Ljava/lang/CharSequence;
    const-string v24, "activity"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager;

    .line 564
    .restart local v6    # "am":Landroid/app/ActivityManager;
    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-virtual {v6, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v16

    .line 565
    .restart local v16    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/16 v24, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/app/ActivityManager$RunningTaskInfo;

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    .line 566
    .restart local v5    # "ClassName":Ljava/lang/String;
    move-object/from16 v21, v10

    .line 567
    goto/16 :goto_6

    .line 569
    .end local v5    # "ClassName":Ljava/lang/String;
    .end local v6    # "am":Landroid/app/ActivityManager;
    .end local v16    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v18    # "nameText":Ljava/lang/CharSequence;
    :cond_2c
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    move-object/from16 v24, v0

    check-cast v24, Ljava/lang/String;

    check-cast v24, Ljava/lang/String;

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    move-object/from16 v25, v0

    check-cast v25, Ljava/lang/String;

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_2d

    .line 570
    move-object/from16 v18, v10

    .line 571
    .restart local v18    # "nameText":Ljava/lang/CharSequence;
    move-object/from16 v21, v10

    goto/16 :goto_6

    .line 573
    .end local v18    # "nameText":Ljava/lang/CharSequence;
    :cond_2d
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    .line 574
    .restart local v18    # "nameText":Ljava/lang/CharSequence;
    const-string v24, "activity"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager;

    .line 575
    .restart local v6    # "am":Landroid/app/ActivityManager;
    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-virtual {v6, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v16

    .line 576
    .restart local v16    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/16 v24, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/app/ActivityManager$RunningTaskInfo;

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    .line 577
    .restart local v5    # "ClassName":Ljava/lang/String;
    move-object/from16 v21, v10

    goto/16 :goto_6

    .line 592
    .end local v5    # "ClassName":Ljava/lang/String;
    .end local v6    # "am":Landroid/app/ActivityManager;
    .end local v16    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_2e
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    move-object/from16 v21, v0

    goto/16 :goto_7

    .line 605
    .restart local v13    # "iCallType":I
    :cond_2f
    if-nez p7, :cond_30

    if-eqz p8, :cond_30

    .line 606
    move-object/from16 v18, p8

    goto/16 :goto_8

    .line 608
    :cond_30
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_8

    .line 611
    :cond_31
    const/16 v24, 0x2

    move/from16 v0, v24

    if-eq v13, v0, :cond_32

    if-eqz p9, :cond_32

    invoke-virtual/range {p9 .. p9}, Ljava/lang/String;->length()I

    move-result v24

    if-eqz v24, :cond_32

    .line 612
    move-object/from16 v18, p9

    goto/16 :goto_8

    .line 615
    :cond_32
    if-eqz p6, :cond_e

    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v24

    if-eqz v24, :cond_e

    .line 616
    move-object/from16 v18, p6

    goto/16 :goto_8

    .line 619
    .end local v13    # "iCallType":I
    :cond_33
    const-string v24, "feature_cnap"

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_e

    .line 620
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->contactUri:Landroid/net/Uri;

    move-object/from16 v24, v0

    if-nez v24, :cond_e

    .line 621
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->callTypes:[I

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget v13, v24, v25

    .line 623
    .restart local v13    # "iCallType":I
    const/16 v24, 0x2

    move/from16 v0, v24

    if-eq v13, v0, :cond_e

    if-eqz p6, :cond_e

    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v24

    if-eqz v24, :cond_e

    .line 624
    move-object/from16 v18, p6

    goto/16 :goto_8

    .line 661
    .end local v13    # "iCallType":I
    .restart local v8    # "callService":Ljava/lang/String;
    :cond_34
    move-object/from16 v0, p3

    iget v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->logType:I

    move/from16 v24, v0

    const/16 v25, 0x64

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_35

    move-object/from16 v0, p3

    iget v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->logType:I

    move/from16 v24, v0

    const/16 v25, 0x3e8

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_36

    :cond_35
    move-object/from16 v0, p3

    iget v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->serviceType:I

    move/from16 v24, v0

    const/16 v25, 0x16

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_36

    .line 664
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0e03a2

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_9

    .line 665
    :cond_36
    move-object/from16 v0, p3

    iget v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->logType:I

    move/from16 v24, v0

    const/16 v25, 0x1f4

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_14

    move-object/from16 v0, p3

    iget v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->serviceType:I

    move/from16 v24, v0

    const/16 v25, 0x15

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_14

    .line 667
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0e03a3

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_9

    .line 675
    :cond_37
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v24

    const-string v25, "+82263439000"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_38

    .line 676
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;->mResources:Landroid/content/res/Resources;

    move-object/from16 v24, v0

    const v25, 0x7f0e03a4

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 677
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    move-object/from16 v21, v0

    goto/16 :goto_a

    .line 678
    :cond_38
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v24

    const-string v25, "+82232100404"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_3a

    .line 679
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;->mResources:Landroid/content/res/Resources;

    move-object/from16 v24, v0

    const v25, 0x7f0e03a5

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 680
    const-string v24, "feature_lgt"

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_39

    .line 681
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v24

    const-string v25, "+82"

    const-string v26, "0"

    invoke-virtual/range {v24 .. v26}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->formatPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_a

    .line 683
    :cond_39
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    move-object/from16 v21, v0

    goto/16 :goto_a

    .line 686
    :cond_3a
    const-string v24, "feature_lgt"

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_3c

    .line 687
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v24

    const-string v25, "+82234167010"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_3b

    .line 688
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v24

    const-string v25, "+82"

    const-string v26, "0"

    invoke-virtual/range {v24 .. v26}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->formatPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 689
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v24

    const-string v25, "+82"

    const-string v26, "0"

    invoke-virtual/range {v24 .. v26}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->formatPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_a

    .line 691
    :cond_3b
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_a

    .line 694
    :cond_3c
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_a

    .line 698
    :cond_3d
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_a

    .line 705
    :cond_3e
    move-object/from16 v0, p3

    iget v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->serviceType:I

    move/from16 v24, v0

    const/16 v25, 0x29

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_16

    const-string v24, "feature_skt"

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_16

    .line 707
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;->mResources:Landroid/content/res/Resources;

    move-object/from16 v24, v0

    const v25, 0x7f0e0494

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_b

    .line 743
    .end local v8    # "callService":Ljava/lang/String;
    :cond_3f
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->timeView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    move-object/from16 v0, p3

    iget-wide v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->date:J

    move-wide/from16 v25, v0

    const/16 v27, 0x101

    const-string v28, "Asia/Shanghai"

    move-object/from16 v0, p1

    move-wide/from16 v1, v25

    move/from16 v3, v27

    move-object/from16 v4, v28

    invoke-static {v0, v1, v2, v3, v4}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->formatDateTime(Landroid/content/Context;JILjava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_c

    .line 746
    :cond_40
    const-string v24, "ar"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_41

    const-string v24, "24"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    const-string v26, "time_12_24"

    invoke-static/range {v25 .. v26}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_41

    .line 748
    new-instance v22, Ljava/text/SimpleDateFormat;

    const-string v24, "HH:mm"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 749
    .restart local v22    # "sdf":Ljava/text/SimpleDateFormat;
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->timeView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    move-object/from16 v0, p3

    iget-wide v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->date:J

    move-wide/from16 v25, v0

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_c

    .line 752
    .end local v22    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_41
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->timeView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    move-object/from16 v0, p3

    iget-wide v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->date:J

    move-wide/from16 v25, v0

    const/16 v27, 0x101

    move-object/from16 v0, p1

    move-wide/from16 v1, v25

    move/from16 v3, v27

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_c

    .line 758
    :sswitch_9
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->logType:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    const v25, 0x7f02076e

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 760
    const-string v24, "feature_lgt"

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_18

    .line 761
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->callTypes:[I

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget v24, v24, v25

    sparse-switch v24, :sswitch_data_2

    goto/16 :goto_d

    .line 767
    :sswitch_a
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->logType:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    const v25, 0x7f020762

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 769
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->logType:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    const/16 v25, 0x64

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_d

    .line 772
    :sswitch_b
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->logType:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    const v25, 0x7f02075d

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 773
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->logType:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    const/16 v25, 0x64

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_d

    .line 780
    :sswitch_c
    const-string v24, "feature_skt"

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_42

    .line 781
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->logType:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    const v25, 0x7f02076c

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_d

    .line 782
    :cond_42
    const-string v24, "feature_kt"

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_43

    .line 783
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->logType:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    const v25, 0x7f02076a

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_d

    .line 784
    :cond_43
    const-string v24, "feature_lgt"

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_44

    .line 785
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->logType:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    const v25, 0x7f02076b

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_d

    .line 787
    :cond_44
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->logType:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    const v25, 0x7f020769

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_d

    .line 791
    :sswitch_d
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->logType:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    const v25, 0x7f02075e

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_d

    .line 795
    :sswitch_e
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->logType:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    const v25, 0x7f020773

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_d

    .line 798
    :sswitch_f
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->logType:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    const v25, 0x7f02075b

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_d

    .line 801
    :sswitch_10
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->logType:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    const v25, 0x7f02075c

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_d

    .line 804
    :sswitch_11
    const-string v24, "feature_lgt"

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_45

    move-object/from16 v0, p3

    iget v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->serviceType:I

    move/from16 v24, v0

    const/16 v25, 0x14

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_45

    .line 806
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->logType:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    const v25, 0x7f020765

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_d

    .line 808
    :cond_45
    const-string v24, "feature_vzw"

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_46

    const-string v24, "feature_vzw_sed"

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_46

    .line 809
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->logType:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    const v25, 0x7f020761

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_d

    .line 811
    :cond_46
    const-string v24, "feature_usa_message_icon"

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_47

    .line 812
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->logType:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    const v25, 0x7f020760

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_d

    .line 815
    :cond_47
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->logType:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    const v25, 0x7f02075f

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_d

    .line 820
    :sswitch_12
    const-string v24, "feature_cdma_layout"

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_48

    const-string v24, "feature_gsm_layout"

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_4b

    .line 821
    :cond_48
    const-string v24, "feature_vzw"

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_49

    const-string v24, "feature_vzw_sed"

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_49

    const-string v24, "feature_not_change_message_icon"

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_49

    .line 822
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->logType:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    const v25, 0x7f020767

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_d

    .line 824
    :cond_49
    const-string v24, "feature_usa_message_icon"

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_4a

    .line 825
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->logType:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    const v25, 0x7f020766

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_d

    .line 828
    :cond_4a
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->logType:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    const v25, 0x7f020764

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_d

    .line 830
    :cond_4b
    const-string v24, "feature_lgt"

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_4c

    move-object/from16 v0, p3

    iget v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->serviceType:I

    move/from16 v24, v0

    const/16 v25, 0x14

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_4c

    .line 832
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->logType:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    const v25, 0x7f020765

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_d

    .line 834
    :cond_4c
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->logType:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    const v25, 0x7f020764

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_d

    .line 838
    :sswitch_13
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isRCSeFeatureEnabled()Z

    move-result v24

    if-eqz v24, :cond_18

    .line 839
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->logType:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    const v25, 0x7f020763

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_d

    .line 843
    :sswitch_14
    const-string v24, "feature_kor"

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_51

    .line 844
    const-string v24, "feature_skt"

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_4e

    .line 845
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->logType:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    const v25, 0x7f020772

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 864
    :cond_4d
    :goto_f
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->logType:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    const/16 v25, 0x3e8

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_d

    .line 847
    :cond_4e
    const-string v24, "feature_kt"

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_50

    .line 848
    const-string v24, "feature_wb_amr"

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_4f

    .line 849
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->logType:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    const v25, 0x7f02076e

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_f

    .line 851
    :cond_4f
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->logType:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    const v25, 0x7f02076f

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_f

    .line 854
    :cond_50
    const-string v24, "feature_lgt"

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_4d

    .line 855
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->logType:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    const v25, 0x7f020770

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_f

    .line 858
    :cond_51
    const-string v24, "feature_usa"

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_52

    .line 859
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->logType:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    const v25, 0x7f02076e

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_f

    .line 861
    :cond_52
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->logType:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    const v25, 0x7f020771

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_f

    .line 340
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_0
        0x5 -> :sswitch_3
        0xb -> :sswitch_5
        0xc -> :sswitch_5
        0xd -> :sswitch_4
        0xe -> :sswitch_7
        0xf -> :sswitch_8
        0x32 -> :sswitch_6
    .end sparse-switch

    .line 756
    :sswitch_data_1
    .sparse-switch
        0x64 -> :sswitch_9
        0x78 -> :sswitch_f
        0xc8 -> :sswitch_11
        0x12c -> :sswitch_12
        0x1f4 -> :sswitch_c
        0x1fe -> :sswitch_10
        0x320 -> :sswitch_d
        0x384 -> :sswitch_e
        0x3b6 -> :sswitch_e
        0x3e8 -> :sswitch_14
        0x44c -> :sswitch_13
    .end sparse-switch

    .line 389
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 761
    :sswitch_data_2
    .sparse-switch
        0xb -> :sswitch_a
        0xc -> :sswitch_a
        0xd -> :sswitch_a
        0xe -> :sswitch_a
        0xf -> :sswitch_a
        0x32 -> :sswitch_b
    .end sparse-switch
.end method

.method protected setScrollState(I)V
    .locals 1
    .param p1, "scrollState"    # I

    .prologue
    .line 956
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->setScrollState(I)V

    .line 957
    return-void
.end method
