.class public Lcom/android/keyguard/sec/KeyguardProperties;
.super Ljava/lang/Object;
.source "KeyguardProperties.java"


# static fields
.field private static mDisplayPlmnByCsc:Z

.field private static mDisplayPlmnBySalesCode:Z

.field private static mDisplayPlmnBySalesCodeChecked:Z

.field private static mDisplayPlmnNByCscChecked:Z

.field private static mIsAusFeature:Z

.field private static mIsAusFeatureChecked:Z

.field private static mIsChinaFeature:Z

.field private static mIsChinaFeatureChecked:Z

.field private static mIsDcmFeature:Z

.field private static mIsDirectCallToEcc:Z

.field private static mIsDirectCallToEccChecked:Z

.field private static mIsDirectCallToEccWithQwerty:Z

.field private static mIsDirectCallToEccWithQwertyChecked:Z

.field private static mIsGermanyFeature:Z

.field private static mIsGermanyFeatureChecked:Z

.field private static mIsGgsmPerformancePatchEnabled:Z

.field private static mIsGgsmTablet:Z

.field private static mIsGgsmTabletEnabledSpass:Z

.field private static mIsHKFeature:Z

.field private static mIsHKFeatureChecked:Z

.field private static mIsJapanFeature:Z

.field private static mIsJapanFeatureChecked:Z

.field private static mIsKeyguardLocalConfigLoaded:Z

.field private static mIsKoreaFeature:Z

.field private static mIsKoreaFeatureChecked:Z

.field private static mIsMagazineCardSupport:Z

.field private static mIsPreImplementationForTest:Z

.field private static mIsRippleInkEffectEnabled:Z

.field private static mIsSCafeConfigLoaded:Z

.field private static mIsShowNonSecureLockscrenBeforeTimeout:Z

.field private static mIsShowNonSecureLockscrenBeforeTimeoutChecked:Z

.field private static mIsSktModel:Z

.field private static mIsSktModelChecked:Z

.field private static mIsToggleSeekBarAndTitle:Z

.field private static mIsUsaFeature:Z

.field private static mIsUsaFeatureChecked:Z

.field private static mIsUseFavoriteAppWidget:Z

.field private static mIsUsePreviousMusicWidget:Z

.field private static mSCafeCream:Ljava/lang/String;

.field private static mSCafeExtra:Ljava/lang/String;

.field private static mSCafeName:Ljava/lang/String;

.field private static mSCafeShot:Ljava/lang/String;

.field private static mSCafeSize:Ljava/lang/String;

.field private static mSCafeSyrup:Ljava/lang/String;

.field private static mUseJellyBeanGUI:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 54
    sput-boolean v1, Lcom/android/keyguard/sec/KeyguardProperties;->mDisplayPlmnBySalesCode:Z

    .line 55
    sput-boolean v1, Lcom/android/keyguard/sec/KeyguardProperties;->mDisplayPlmnBySalesCodeChecked:Z

    .line 56
    sput-boolean v1, Lcom/android/keyguard/sec/KeyguardProperties;->mDisplayPlmnByCsc:Z

    .line 57
    sput-boolean v1, Lcom/android/keyguard/sec/KeyguardProperties;->mDisplayPlmnNByCscChecked:Z

    .line 113
    sput-boolean v1, Lcom/android/keyguard/sec/KeyguardProperties;->mIsKoreaFeature:Z

    .line 114
    sput-boolean v1, Lcom/android/keyguard/sec/KeyguardProperties;->mIsKoreaFeatureChecked:Z

    .line 115
    sput-boolean v1, Lcom/android/keyguard/sec/KeyguardProperties;->mIsChinaFeature:Z

    .line 116
    sput-boolean v1, Lcom/android/keyguard/sec/KeyguardProperties;->mIsChinaFeatureChecked:Z

    .line 117
    sput-boolean v1, Lcom/android/keyguard/sec/KeyguardProperties;->mIsHKFeature:Z

    .line 118
    sput-boolean v1, Lcom/android/keyguard/sec/KeyguardProperties;->mIsHKFeatureChecked:Z

    .line 119
    sput-boolean v1, Lcom/android/keyguard/sec/KeyguardProperties;->mIsAusFeature:Z

    .line 120
    sput-boolean v1, Lcom/android/keyguard/sec/KeyguardProperties;->mIsAusFeatureChecked:Z

    .line 121
    sput-boolean v1, Lcom/android/keyguard/sec/KeyguardProperties;->mIsGermanyFeature:Z

    .line 122
    sput-boolean v1, Lcom/android/keyguard/sec/KeyguardProperties;->mIsGermanyFeatureChecked:Z

    .line 123
    sput-boolean v1, Lcom/android/keyguard/sec/KeyguardProperties;->mIsUsaFeature:Z

    .line 124
    sput-boolean v1, Lcom/android/keyguard/sec/KeyguardProperties;->mIsUsaFeatureChecked:Z

    .line 125
    sput-boolean v1, Lcom/android/keyguard/sec/KeyguardProperties;->mIsJapanFeature:Z

    .line 126
    sput-boolean v1, Lcom/android/keyguard/sec/KeyguardProperties;->mIsJapanFeatureChecked:Z

    .line 127
    sput-boolean v1, Lcom/android/keyguard/sec/KeyguardProperties;->mIsDcmFeature:Z

    .line 128
    sput-boolean v1, Lcom/android/keyguard/sec/KeyguardProperties;->mIsSktModel:Z

    .line 129
    sput-boolean v1, Lcom/android/keyguard/sec/KeyguardProperties;->mIsSktModelChecked:Z

    .line 339
    sput-boolean v1, Lcom/android/keyguard/sec/KeyguardProperties;->mIsKeyguardLocalConfigLoaded:Z

    .line 340
    sput-boolean v1, Lcom/android/keyguard/sec/KeyguardProperties;->mIsGgsmTablet:Z

    .line 341
    sput-boolean v1, Lcom/android/keyguard/sec/KeyguardProperties;->mIsGgsmTabletEnabledSpass:Z

    .line 342
    sput-boolean v1, Lcom/android/keyguard/sec/KeyguardProperties;->mIsMagazineCardSupport:Z

    .line 343
    sput-boolean v1, Lcom/android/keyguard/sec/KeyguardProperties;->mIsGgsmPerformancePatchEnabled:Z

    .line 344
    sput-boolean v1, Lcom/android/keyguard/sec/KeyguardProperties;->mIsPreImplementationForTest:Z

    .line 345
    sput-boolean v1, Lcom/android/keyguard/sec/KeyguardProperties;->mIsUsePreviousMusicWidget:Z

    .line 346
    sput-boolean v1, Lcom/android/keyguard/sec/KeyguardProperties;->mIsUseFavoriteAppWidget:Z

    .line 347
    sput-boolean v1, Lcom/android/keyguard/sec/KeyguardProperties;->mIsRippleInkEffectEnabled:Z

    .line 349
    sput-boolean v1, Lcom/android/keyguard/sec/KeyguardProperties;->mIsDirectCallToEcc:Z

    .line 350
    sput-boolean v1, Lcom/android/keyguard/sec/KeyguardProperties;->mIsDirectCallToEccChecked:Z

    .line 351
    sput-boolean v1, Lcom/android/keyguard/sec/KeyguardProperties;->mIsDirectCallToEccWithQwerty:Z

    .line 352
    sput-boolean v1, Lcom/android/keyguard/sec/KeyguardProperties;->mIsDirectCallToEccWithQwertyChecked:Z

    .line 354
    sput-boolean v1, Lcom/android/keyguard/sec/KeyguardProperties;->mUseJellyBeanGUI:Z

    .line 355
    sput-boolean v1, Lcom/android/keyguard/sec/KeyguardProperties;->mIsToggleSeekBarAndTitle:Z

    .line 501
    sput-boolean v1, Lcom/android/keyguard/sec/KeyguardProperties;->mIsSCafeConfigLoaded:Z

    .line 502
    const-string v0, ""

    sput-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mSCafeName:Ljava/lang/String;

    .line 503
    const-string v0, ""

    sput-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mSCafeSize:Ljava/lang/String;

    .line 504
    const-string v0, ""

    sput-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mSCafeShot:Ljava/lang/String;

    .line 505
    const-string v0, ""

    sput-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mSCafeSyrup:Ljava/lang/String;

    .line 506
    const-string v0, ""

    sput-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mSCafeCream:Ljava/lang/String;

    .line 507
    const-string v0, ""

    sput-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mSCafeExtra:Ljava/lang/String;

    .line 635
    sput-boolean v1, Lcom/android/keyguard/sec/KeyguardProperties;->mIsShowNonSecureLockscrenBeforeTimeout:Z

    .line 637
    sput-boolean v1, Lcom/android/keyguard/sec/KeyguardProperties;->mIsShowNonSecureLockscrenBeforeTimeoutChecked:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDateFormat(Ljava/util/Calendar;Landroid/content/Context;)Ljava/lang/CharSequence;
    .registers 18
    .param p0, "calendar"    # Ljava/util/Calendar;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 743
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 744
    .local v1, "dummyCal":Ljava/util/Calendar;
    const/16 v2, 0xd05

    const/16 v3, 0xa

    const/16 v4, 0x16

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Ljava/util/Calendar;->set(IIIIII)V

    .line 746
    const-string v2, ""

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Landroid/text/format/DateFormat;->getDateFormatForSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/text/DateFormat;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v13

    .line 747
    .local v13, "regionalDateFormat":Ljava/lang/String;
    const-string v2, "MM-dd-yyyy"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Landroid/text/format/DateFormat;->getDateFormatForSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/text/DateFormat;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v14

    .line 748
    .local v14, "regionalDateFormat2":Ljava/lang/String;
    const-string v12, ""

    .line 749
    .local v12, "month":Ljava/lang/String;
    const-string v8, ""

    .line 750
    .local v8, "date":Ljava/lang/String;
    const/4 v9, 0x0

    .line 751
    .local v9, "dateFormatSwitch":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_36
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v10, v2, :cond_5f

    .line 752
    invoke-virtual {v14, v10}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2f

    if-eq v2, v3, :cond_54

    invoke-virtual {v14, v10}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2d

    if-eq v2, v3, :cond_54

    invoke-virtual {v14, v10}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_59

    .line 753
    :cond_54
    add-int/lit8 v9, v9, 0x1

    .line 751
    :cond_56
    add-int/lit8 v10, v10, 0x1

    goto :goto_36

    .line 757
    :cond_59
    packed-switch v9, :pswitch_data_10c

    .line 766
    :goto_5c
    const/4 v2, 0x2

    if-ne v9, v2, :cond_56

    .line 770
    :cond_5f
    const-string v15, ""

    .line 771
    .local v15, "returnDateFormat":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v2}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_e4

    const/4 v11, 0x1

    .line 773
    .local v11, "isRTLlanguage":Z
    :goto_73
    invoke-virtual {v13, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v13, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ge v2, v3, :cond_f0

    .line 774
    if-eqz v11, :cond_e6

    const v2, 0x7f060025

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 780
    :goto_88
    const-string v2, "KeyguardProperties"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "regionalDateFormat = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isRTLlanguage = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " returnDateFormat = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    if-nez p0, :cond_106

    .line 786
    .end local v15    # "returnDateFormat":Ljava/lang/String;
    :goto_b6
    return-object v15

    .line 759
    .end local v11    # "isRTLlanguage":Z
    :pswitch_b7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v14, v10}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 760
    goto :goto_5c

    .line 762
    :pswitch_cd
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v14, v10}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_5c

    .line 771
    .restart local v15    # "returnDateFormat":Ljava/lang/String;
    :cond_e4
    const/4 v11, 0x0

    goto :goto_73

    .line 774
    .restart local v11    # "isRTLlanguage":Z
    :cond_e6
    const v2, 0x7f060024

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    goto :goto_88

    .line 777
    :cond_f0
    if-eqz v11, :cond_fc

    const v2, 0x7f060024

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    :goto_fb
    goto :goto_88

    :cond_fc
    const v2, 0x7f060025

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    goto :goto_fb

    .line 786
    :cond_106
    invoke-static/range {v15 .. v16}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v15

    goto :goto_b6

    .line 757
    nop

    :pswitch_data_10c
    .packed-switch 0x0
        :pswitch_b7
        :pswitch_cd
    .end packed-switch
.end method

.method public static isATTFeature()Z
    .registers 3

    .prologue
    .line 595
    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 596
    .local v0, "SalesCode":Ljava/lang/String;
    const-string v2, "ro.csc.country_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 597
    .local v1, "countryCode":Ljava/lang/String;
    const-string v2, "USA"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 598
    const-string v2, "ATT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 599
    const/4 v2, 0x1

    .line 602
    :goto_1d
    return v2

    :cond_1e
    const/4 v2, 0x0

    goto :goto_1d
.end method

.method public static isArcMotionEnabled()Z
    .registers 2

    .prologue
    .line 572
    const-string v1, "ro.build.product"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 574
    .local v0, "ProductCode":Ljava/lang/String;
    const-string v1, "flte"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    const-string v1, "flteskt"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    const-string v1, "fltektt"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    const-string v1, "fltelgt"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 575
    :cond_26
    const/4 v1, 0x1

    .line 577
    :goto_27
    return v1

    :cond_28
    const/4 v1, 0x0

    goto :goto_27
.end method

.method public static isAusFeature()Z
    .registers 4

    .prologue
    const/4 v3, 0x1

    .line 253
    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 254
    .local v1, "salesCode":Ljava/lang/String;
    const-string v2, "ro.csc.country_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 256
    .local v0, "CountryCode":Ljava/lang/String;
    sget-boolean v2, Lcom/android/keyguard/sec/KeyguardProperties;->mIsAusFeatureChecked:Z

    if-nez v2, :cond_5d

    .line 257
    const-string v2, "Australia"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_59

    const-string v2, "TEL"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_59

    const-string v2, "VAU"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_59

    const-string v2, "HUT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_59

    const-string v2, "BST"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_59

    const-string v2, "OPS"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_59

    const-string v2, "OPP"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_59

    const-string v2, "TLP"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_59

    const-string v2, "XSA"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 262
    :cond_59
    sput-boolean v3, Lcom/android/keyguard/sec/KeyguardProperties;->mIsAusFeature:Z

    .line 265
    :cond_5b
    sput-boolean v3, Lcom/android/keyguard/sec/KeyguardProperties;->mIsAusFeatureChecked:Z

    .line 268
    :cond_5d
    sget-boolean v2, Lcom/android/keyguard/sec/KeyguardProperties;->mIsAusFeature:Z

    return v2
.end method

.method public static isAutoWipeFeature()Z
    .registers 3

    .prologue
    .line 656
    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 657
    .local v0, "SalesCode":Ljava/lang/String;
    const-string v2, "ro.csc.country_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 659
    .local v1, "countryCode":Ljava/lang/String;
    const-string v2, "USA"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 660
    const-string v2, "VZW"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 661
    const/4 v2, 0x1

    .line 664
    :goto_1d
    return v2

    :cond_1e
    const/4 v2, 0x0

    goto :goto_1d
.end method

.method public static isCTCFeature()Z
    .registers 2

    .prologue
    .line 232
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 233
    .local v0, "SalesCode":Ljava/lang/String;
    const-string v1, "CTC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 234
    const/4 v1, 0x1

    .line 236
    :goto_f
    return v1

    :cond_10
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public static isCUFeature()Z
    .registers 2

    .prologue
    .line 224
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 225
    .local v0, "SalesCode":Ljava/lang/String;
    const-string v1, "CHU"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 226
    const/4 v1, 0x1

    .line 228
    :goto_f
    return v1

    :cond_10
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public static isChinaFeature()Z
    .registers 3

    .prologue
    const/4 v2, 0x1

    .line 197
    sget-boolean v1, Lcom/android/keyguard/sec/KeyguardProperties;->mIsChinaFeatureChecked:Z

    if-nez v1, :cond_37

    .line 198
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 199
    .local v0, "SalesCode":Ljava/lang/String;
    const-string v1, "CTC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_33

    const-string v1, "CHM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_33

    const-string v1, "CHN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_33

    const-string v1, "CHU"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_33

    const-string v1, "CHC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 202
    :cond_33
    sput-boolean v2, Lcom/android/keyguard/sec/KeyguardProperties;->mIsChinaFeature:Z

    .line 205
    :cond_35
    sput-boolean v2, Lcom/android/keyguard/sec/KeyguardProperties;->mIsChinaFeatureChecked:Z

    .line 208
    :cond_37
    sget-boolean v1, Lcom/android/keyguard/sec/KeyguardProperties;->mIsChinaFeature:Z

    return v1
.end method

.method public static isDirectCallToEcc()Z
    .registers 2

    .prologue
    .line 460
    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->mIsDirectCallToEccChecked:Z

    if-nez v0, :cond_13

    .line 461
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_LockScreen_DirectCallToEcc"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->mIsDirectCallToEcc:Z

    .line 464
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->mIsDirectCallToEccChecked:Z

    .line 467
    :cond_13
    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->mIsDirectCallToEcc:Z

    return v0
.end method

.method public static isExclusivePatentFamily()Z
    .registers 1

    .prologue
    .line 791
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isAusFeature()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isGermanyFeature()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static isGermanyFeature()Z
    .registers 4

    .prologue
    const/4 v3, 0x1

    .line 272
    sget-boolean v2, Lcom/android/keyguard/sec/KeyguardProperties;->mIsGermanyFeatureChecked:Z

    if-nez v2, :cond_25

    .line 273
    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 274
    .local v1, "SalesCode":Ljava/lang/String;
    const-string v2, "ro.csc.country_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 275
    .local v0, "CountryCode":Ljava/lang/String;
    const-string v2, "Germany"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    const-string v2, "DBT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 276
    :cond_21
    sput-boolean v3, Lcom/android/keyguard/sec/KeyguardProperties;->mIsGermanyFeature:Z

    .line 279
    :cond_23
    sput-boolean v3, Lcom/android/keyguard/sec/KeyguardProperties;->mIsGermanyFeatureChecked:Z

    .line 282
    :cond_25
    sget-boolean v2, Lcom/android/keyguard/sec/KeyguardProperties;->mIsGermanyFeature:Z

    return v2
.end method

.method public static isGgsmPerformancePatchEnabled()Z
    .registers 1

    .prologue
    .line 421
    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->mIsGgsmPerformancePatchEnabled:Z

    return v0
.end method

.method public static isGgsmTablet()Z
    .registers 1

    .prologue
    .line 409
    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->mIsGgsmTablet:Z

    return v0
.end method

.method public static isGgsmTabletEnabledSpass()Z
    .registers 1

    .prologue
    .line 413
    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->mIsGgsmTabletEnabledSpass:Z

    return v0
.end method

.method public static isHKFeature()Z
    .registers 3

    .prologue
    const/4 v2, 0x1

    .line 212
    sget-boolean v1, Lcom/android/keyguard/sec/KeyguardProperties;->mIsHKFeatureChecked:Z

    if-nez v1, :cond_17

    .line 213
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 214
    .local v0, "SalesCode":Ljava/lang/String;
    const-string v1, "TGY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 215
    sput-boolean v2, Lcom/android/keyguard/sec/KeyguardProperties;->mIsHKFeature:Z

    .line 218
    :cond_15
    sput-boolean v2, Lcom/android/keyguard/sec/KeyguardProperties;->mIsHKFeatureChecked:Z

    .line 220
    :cond_17
    sget-boolean v1, Lcom/android/keyguard/sec/KeyguardProperties;->mIsHKFeature:Z

    return v1
.end method

.method public static isIgnoreNationalRoaming()Z
    .registers 3

    .prologue
    .line 709
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 711
    .local v0, "salesCode":Ljava/lang/String;
    const-string v1, "XEO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    const-string v1, "PRT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    :cond_16
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isNationalRoaming()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 712
    const-string v1, "KeyguardProperties"

    const-string v2, "isIgnoreNationalRoaming() = true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    const/4 v1, 0x1

    .line 716
    :goto_24
    return v1

    .line 715
    :cond_25
    const-string v1, "KeyguardProperties"

    const-string v2, "isIgnoreNationalRoaming() = false"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    const/4 v1, 0x0

    goto :goto_24
.end method

.method public static isJapanFeature()Z
    .registers 3

    .prologue
    const/4 v2, 0x1

    .line 310
    sget-boolean v1, Lcom/android/keyguard/sec/KeyguardProperties;->mIsJapanFeatureChecked:Z

    if-nez v1, :cond_29

    .line 311
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 313
    .local v0, "SalesCode":Ljava/lang/String;
    const-string v1, "KDI"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    const-string v1, "DCM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 314
    :cond_1b
    sput-boolean v2, Lcom/android/keyguard/sec/KeyguardProperties;->mIsJapanFeature:Z

    .line 316
    const-string v1, "DCM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 317
    sput-boolean v2, Lcom/android/keyguard/sec/KeyguardProperties;->mIsDcmFeature:Z

    .line 320
    :cond_27
    sput-boolean v2, Lcom/android/keyguard/sec/KeyguardProperties;->mIsJapanFeatureChecked:Z

    .line 323
    :cond_29
    sget-boolean v1, Lcom/android/keyguard/sec/KeyguardProperties;->mIsJapanFeature:Z

    return v1
.end method

.method public static isKoreaFeature()Z
    .registers 3

    .prologue
    const/4 v2, 0x1

    .line 132
    sget-boolean v1, Lcom/android/keyguard/sec/KeyguardProperties;->mIsKoreaFeatureChecked:Z

    if-nez v1, :cond_67

    .line 133
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, "SalesCode":Ljava/lang/String;
    const-string v1, "SKT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_63

    const-string v1, "SKC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_63

    const-string v1, "SKO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_63

    const-string v1, "KTT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_63

    const-string v1, "KTC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_63

    const-string v1, "KTO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_63

    const-string v1, "LGT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_63

    const-string v1, "LUC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_63

    const-string v1, "LUO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_63

    const-string v1, "ANY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_63

    const-string v1, "KOO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_65

    .line 140
    :cond_63
    sput-boolean v2, Lcom/android/keyguard/sec/KeyguardProperties;->mIsKoreaFeature:Z

    .line 143
    :cond_65
    sput-boolean v2, Lcom/android/keyguard/sec/KeyguardProperties;->mIsKoreaFeatureChecked:Z

    .line 146
    :cond_67
    sget-boolean v1, Lcom/android/keyguard/sec/KeyguardProperties;->mIsKoreaFeature:Z

    return v1
.end method

.method public static isKoreaPatentIssue(Landroid/app/PendingIntent;)Z
    .registers 4
    .param p0, "pendingIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 161
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, "SalesCode":Ljava/lang/String;
    const-string v1, "SKT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5e

    const-string v1, "SKC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5e

    const-string v1, "SKO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5e

    const-string v1, "KTT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5e

    const-string v1, "KTC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5e

    const-string v1, "KTO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5e

    const-string v1, "LGT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5e

    const-string v1, "LUC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5e

    const-string v1, "LUO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5e

    const-string v1, "ANY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5e

    const-string v1, "KOO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6c

    :cond_5e
    const-string v1, "com.sec.android.widgetapp.notificationwidget"

    invoke-virtual {p0}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6c

    .line 168
    const/4 v1, 0x1

    .line 170
    :goto_6b
    return v1

    :cond_6c
    const/4 v1, 0x0

    goto :goto_6b
.end method

.method public static isMUMLook2013()Z
    .registers 3

    .prologue
    .line 556
    const-string v2, "ro.product.name"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 557
    .local v1, "mProductName":Ljava/lang/String;
    const-string v2, "lt02"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 558
    .local v0, "isMUMRectangular":Z
    if-eqz v0, :cond_10

    .line 559
    const/4 v2, 0x1

    .line 561
    :goto_f
    return v2

    :cond_10
    const/4 v2, 0x0

    goto :goto_f
.end method

.method public static isMagazineCardSupport()Z
    .registers 1

    .prologue
    .line 417
    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->mIsMagazineCardSupport:Z

    return v0
.end method

.method private static isModelNameInLocalConfig(Landroid/content/Context;ILjava/lang/String;)Z
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "configResId"    # I
    .param p2, "deviceNameToFind"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 385
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 386
    .local v1, "deviceListInConfig":[Ljava/lang/String;
    if-eqz v1, :cond_e

    array-length v6, v1

    if-nez v6, :cond_f

    .line 397
    :cond_e
    :goto_e
    return v5

    .line 389
    :cond_f
    move-object v0, v1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_12
    if-ge v3, v4, :cond_e

    aget-object v2, v0, v3

    .line 390
    .local v2, "deviceNameInConfig":Ljava/lang/String;
    if-eqz v2, :cond_1e

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_21

    .line 389
    :cond_1e
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 393
    :cond_21
    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1e

    .line 394
    const/4 v5, 0x1

    goto :goto_e
.end method

.method public static isMultiSIMDevice()Z
    .registers 1

    .prologue
    .line 249
    const/4 v0, 0x0

    return v0
.end method

.method public static isNationalRoaming()Z
    .registers 8

    .prologue
    const/4 v7, 0x3

    const/4 v4, 0x0

    .line 721
    const-string v5, "gsm.sim.operator.numeric"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 722
    .local v3, "simNumeric":Ljava/lang/String;
    const-string v5, "gsm.operator.numeric"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 724
    .local v1, "plmnNumeric":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_2d

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_2d

    .line 725
    invoke-virtual {v3, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 726
    .local v2, "simMCC":Ljava/lang/String;
    invoke-virtual {v1, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 728
    .local v0, "plmnMCC":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 729
    const/4 v4, 0x1

    .line 735
    .end local v0    # "plmnMCC":Ljava/lang/String;
    .end local v2    # "simMCC":Ljava/lang/String;
    :cond_2d
    return v4
.end method

.method public static isPreImplementationForTest()Z
    .registers 1

    .prologue
    .line 437
    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->mIsPreImplementationForTest:Z

    return v0
.end method

.method public static isPresidentialCMASFeature()Z
    .registers 3

    .prologue
    .line 581
    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 582
    .local v0, "SalesCode":Ljava/lang/String;
    const-string v2, "ro.csc.country_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 584
    .local v1, "countryCode":Ljava/lang/String;
    const-string v2, "USA"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 585
    const-string v2, "SPR"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3c

    const-string v2, "BST"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3c

    const-string v2, "TFN"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3c

    const-string v2, "VMU"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3c

    const-string v2, "XAS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 588
    :cond_3c
    const/4 v2, 0x1

    .line 591
    :goto_3d
    return v2

    :cond_3e
    const/4 v2, 0x0

    goto :goto_3d
.end method

.method public static isPreviousLook()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 546
    const-string v3, "americano"

    sget-object v4, Lcom/android/keyguard/sec/KeyguardProperties;->mSCafeName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    move v0, v2

    .line 549
    .local v0, "isPreviousLookEnabled":Z
    :goto_d
    if-eqz v0, :cond_12

    .line 552
    :goto_f
    return v1

    .end local v0    # "isPreviousLookEnabled":Z
    :cond_10
    move v0, v1

    .line 546
    goto :goto_d

    .restart local v0    # "isPreviousLookEnabled":Z
    :cond_12
    move v1, v2

    .line 552
    goto :goto_f
.end method

.method public static isRippleInkEffectEnabled()Z
    .registers 1

    .prologue
    .line 449
    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->mIsRippleInkEffectEnabled:Z

    return v0
.end method

.method public static isSIMToastEnabled()Z
    .registers 2

    .prologue
    .line 795
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 797
    .local v0, "SalesCode":Ljava/lang/String;
    const-string v1, "ATT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    const-string v1, "TEL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 798
    :cond_16
    const/4 v1, 0x1

    .line 800
    :goto_17
    return v1

    :cond_18
    const/4 v1, 0x0

    goto :goto_17
.end method

.method public static isShortcutDAWithPendingIntent(Landroid/app/PendingIntent;)Z
    .registers 3
    .param p0, "pendingIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 701
    const-string v0, "com.sec.android.widgetapp.notificationwidget"

    invoke-virtual {p0}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 702
    const/4 v0, 0x1

    .line 704
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static isShortcutResize()Z
    .registers 1

    .prologue
    .line 680
    const/4 v0, 0x0

    return v0
.end method

.method public static isSktModel()Z
    .registers 3

    .prologue
    const/4 v2, 0x1

    .line 150
    sget-boolean v1, Lcom/android/keyguard/sec/KeyguardProperties;->mIsSktModelChecked:Z

    if-nez v1, :cond_27

    .line 151
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, "SalesCode":Ljava/lang/String;
    const-string v1, "SKT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    const-string v1, "SKC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    const-string v1, "SKO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 153
    :cond_23
    sput-boolean v2, Lcom/android/keyguard/sec/KeyguardProperties;->mIsSktModel:Z

    .line 155
    :cond_25
    sput-boolean v2, Lcom/android/keyguard/sec/KeyguardProperties;->mIsSktModelChecked:Z

    .line 157
    :cond_27
    sget-boolean v1, Lcom/android/keyguard/sec/KeyguardProperties;->mIsSktModel:Z

    return v1
.end method

.method public static isTablet()Z
    .registers 1

    .prologue
    .line 696
    invoke-static {}, Landroid/util/GeneralUtil;->isTablet()Z

    move-result v0

    return v0
.end method

.method public static isToggleSeekBarAndTitle()Z
    .registers 1

    .prologue
    .line 405
    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->mIsToggleSeekBarAndTitle:Z

    return v0
.end method

.method public static isUSAFeature()Z
    .registers 3

    .prologue
    .line 617
    const-string v2, "ro.csc.country_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 618
    .local v1, "countryCode":Ljava/lang/String;
    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 619
    .local v0, "SalesCode":Ljava/lang/String;
    const-string v2, "USA"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_96

    .line 620
    const-string v2, "VZW"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_94

    const-string v2, "ATT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_94

    const-string v2, "SPR"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_94

    const-string v2, "BST"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_94

    const-string v2, "VMU"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_94

    const-string v2, "TMB"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_94

    const-string v2, "CRI"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_94

    const-string v2, "VMU"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_94

    const-string v2, "MTR"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_94

    const-string v2, "USC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_94

    const-string v2, "TFN"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_94

    const-string v2, "XAS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_94

    const-string v2, "AIO"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_94

    const-string v2, "CSP"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_94

    const-string v2, "XAR"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_94

    const-string v2, "LRA"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_96

    .line 628
    :cond_94
    const/4 v2, 0x1

    .line 631
    :goto_95
    return v2

    :cond_96
    const/4 v2, 0x0

    goto :goto_95
.end method

.method public static isUSIMPersoFeatureEnable()Z
    .registers 1

    .prologue
    .line 672
    const/4 v0, 0x0

    return v0
.end method

.method public static isUseJellyBeanGUI()Z
    .registers 1

    .prologue
    .line 401
    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->mUseJellyBeanGUI:Z

    return v0
.end method

.method public static isUsePreviousMusicWidget()Z
    .registers 1

    .prologue
    .line 441
    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->mIsUsePreviousMusicWidget:Z

    return v0
.end method

.method public static isVZWFeature()Z
    .registers 3

    .prologue
    .line 606
    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 607
    .local v0, "SalesCode":Ljava/lang/String;
    const-string v2, "ro.csc.country_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 608
    .local v1, "countryCode":Ljava/lang/String;
    const-string v2, "USA"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 609
    const-string v2, "VZW"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 610
    const/4 v2, 0x1

    .line 613
    :goto_1d
    return v2

    :cond_1e
    const/4 v2, 0x0

    goto :goto_1d
.end method

.method public static isWidgetNavDisabled()Z
    .registers 2

    .prologue
    .line 804
    const-string v1, "ro.build.product"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 806
    .local v0, "ProductCode":Ljava/lang/String;
    const-string v1, "lt03ltetmo"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 807
    const/4 v1, 0x1

    .line 809
    :goto_f
    return v1

    :cond_10
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public static loadSCafeConfig(Landroid/content/Context;)V
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 510
    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->mIsSCafeConfigLoaded:Z

    if-nez v0, :cond_37

    .line 511
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->mIsSCafeConfigLoaded:Z

    .line 512
    const-string v0, "ro.build.scafe"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mSCafeName:Ljava/lang/String;

    .line 513
    const-string v0, "ro.build.scafe.size"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mSCafeSize:Ljava/lang/String;

    .line 514
    const-string v0, "ro.build.scafe.shot"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mSCafeShot:Ljava/lang/String;

    .line 515
    const-string v0, "ro.build.scafe.syrup"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mSCafeSyrup:Ljava/lang/String;

    .line 516
    const-string v0, "ro.build.scafe.cream"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mSCafeCream:Ljava/lang/String;

    .line 517
    const-string v0, "ro.build.scafe.extra"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mSCafeExtra:Ljava/lang/String;

    .line 519
    :cond_37
    return-void
.end method

.method public static loadWholeKeyguardLocalConfig(Landroid/content/Context;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 358
    if-nez p0, :cond_4

    .line 382
    :cond_3
    :goto_3
    return-void

    .line 361
    :cond_4
    sget-boolean v3, Lcom/android/keyguard/sec/KeyguardProperties;->mIsKeyguardLocalConfigLoaded:Z

    if-nez v3, :cond_3

    .line 362
    sput-boolean v2, Lcom/android/keyguard/sec/KeyguardProperties;->mIsKeyguardLocalConfigLoaded:Z

    .line 364
    const-string v3, "ro.product.device"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 365
    .local v0, "deviceName":Ljava/lang/String;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 368
    const v3, 0x7f0a0017

    invoke-static {p0, v3, v0}, Lcom/android/keyguard/sec/KeyguardProperties;->isModelNameInLocalConfig(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v3

    sput-boolean v3, Lcom/android/keyguard/sec/KeyguardProperties;->mIsGgsmTablet:Z

    .line 369
    const v3, 0x7f0a0018

    invoke-static {p0, v3, v0}, Lcom/android/keyguard/sec/KeyguardProperties;->isModelNameInLocalConfig(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v3

    sput-boolean v3, Lcom/android/keyguard/sec/KeyguardProperties;->mIsGgsmTabletEnabledSpass:Z

    .line 370
    const v3, 0x7f0a0019

    invoke-static {p0, v3, v0}, Lcom/android/keyguard/sec/KeyguardProperties;->isModelNameInLocalConfig(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v3

    sput-boolean v3, Lcom/android/keyguard/sec/KeyguardProperties;->mUseJellyBeanGUI:Z

    .line 371
    const v3, 0x7f0a001a

    invoke-static {p0, v3, v0}, Lcom/android/keyguard/sec/KeyguardProperties;->isModelNameInLocalConfig(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v3

    sput-boolean v3, Lcom/android/keyguard/sec/KeyguardProperties;->mIsGgsmPerformancePatchEnabled:Z

    .line 372
    const v3, 0x7f0a001b

    invoke-static {p0, v3, v0}, Lcom/android/keyguard/sec/KeyguardProperties;->isModelNameInLocalConfig(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v3

    sput-boolean v3, Lcom/android/keyguard/sec/KeyguardProperties;->mIsPreImplementationForTest:Z

    .line 373
    const v3, 0x7f0a001c

    invoke-static {p0, v3, v0}, Lcom/android/keyguard/sec/KeyguardProperties;->isModelNameInLocalConfig(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v3

    sput-boolean v3, Lcom/android/keyguard/sec/KeyguardProperties;->mIsUsePreviousMusicWidget:Z

    .line 374
    const v3, 0x7f0a001f

    invoke-static {p0, v3, v0}, Lcom/android/keyguard/sec/KeyguardProperties;->isModelNameInLocalConfig(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v3

    sput-boolean v3, Lcom/android/keyguard/sec/KeyguardProperties;->mIsUseFavoriteAppWidget:Z

    .line 375
    const v3, 0x7f0a001d

    invoke-static {p0, v3, v0}, Lcom/android/keyguard/sec/KeyguardProperties;->isModelNameInLocalConfig(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v3

    sput-boolean v3, Lcom/android/keyguard/sec/KeyguardProperties;->mIsRippleInkEffectEnabled:Z

    .line 376
    const v3, 0x7f0a001e

    invoke-static {p0, v3, v0}, Lcom/android/keyguard/sec/KeyguardProperties;->isModelNameInLocalConfig(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v3

    sput-boolean v3, Lcom/android/keyguard/sec/KeyguardProperties;->mIsToggleSeekBarAndTitle:Z

    .line 378
    const-string v3, "magazinecardservice"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/magazinecard/MagazineCardManager;

    .line 379
    .local v1, "mcm":Lcom/samsung/android/magazinecard/MagazineCardManager;
    if-eqz v1, :cond_7c

    invoke-virtual {v1}, Lcom/samsung/android/magazinecard/MagazineCardManager;->isServiceEnabled()Z

    move-result v3

    if-ne v3, v2, :cond_7c

    :goto_79
    sput-boolean v2, Lcom/android/keyguard/sec/KeyguardProperties;->mIsMagazineCardSupport:Z

    goto :goto_3

    :cond_7c
    const/4 v2, 0x0

    goto :goto_79
.end method

.method public static shouldShowPopupForDualClock(Landroid/content/Context;)Z
    .registers 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, -0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 174
    const-string v6, "phone"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 177
    .local v3, "tManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "my_profile_enabled"

    invoke-static {v6, v7, v4, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-ne v6, v4, :cond_74

    move v2, v4

    .line 179
    .local v2, "isProfileOn":Z
    :goto_18
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "dualclock_menu_settings"

    invoke-static {v6, v7, v5, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-ne v6, v4, :cond_76

    move v0, v4

    .line 181
    .local v0, "isDualClockOn":Z
    :goto_25
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "homecity_timezone"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_78

    move v1, v4

    .line 184
    .local v1, "isHometimeExist":Z
    :goto_32
    const-string v6, "KeyguardProperties"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "is Romaing on : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n dualClock on : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n is homtime null : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n isProfile on : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isIgnoreNationalRoaming()Z

    move-result v6

    if-eqz v6, :cond_7a

    move v4, v5

    .line 192
    :cond_73
    :goto_73
    return v4

    .end local v0    # "isDualClockOn":Z
    .end local v1    # "isHometimeExist":Z
    .end local v2    # "isProfileOn":Z
    :cond_74
    move v2, v5

    .line 177
    goto :goto_18

    .restart local v2    # "isProfileOn":Z
    :cond_76
    move v0, v5

    .line 179
    goto :goto_25

    .restart local v0    # "isDualClockOn":Z
    :cond_78
    move v1, v5

    .line 181
    goto :goto_32

    .line 189
    .restart local v1    # "isHometimeExist":Z
    :cond_7a
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isKoreaFeature()Z

    move-result v6

    if-eqz v6, :cond_8c

    .line 190
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v6

    if-eqz v6, :cond_8a

    if-eqz v0, :cond_8a

    if-nez v1, :cond_73

    :cond_8a
    move v4, v5

    goto :goto_73

    .line 192
    :cond_8c
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v6

    if-eqz v6, :cond_98

    if-eqz v0, :cond_98

    if-eqz v1, :cond_98

    if-eqz v2, :cond_73

    :cond_98
    move v4, v5

    goto :goto_73
.end method

.method public static showNonSecureLockscrenBeforeTimeout()Z
    .registers 3

    .prologue
    const/4 v2, 0x1

    .line 640
    sget-boolean v1, Lcom/android/keyguard/sec/KeyguardProperties;->mIsShowNonSecureLockscrenBeforeTimeoutChecked:Z

    if-nez v1, :cond_17

    .line 641
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 642
    .local v0, "SalesCode":Ljava/lang/String;
    const-string v1, "ATT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 643
    sput-boolean v2, Lcom/android/keyguard/sec/KeyguardProperties;->mIsShowNonSecureLockscrenBeforeTimeout:Z

    .line 645
    :cond_15
    sput-boolean v2, Lcom/android/keyguard/sec/KeyguardProperties;->mIsShowNonSecureLockscrenBeforeTimeoutChecked:Z

    .line 647
    :cond_17
    sget-boolean v1, Lcom/android/keyguard/sec/KeyguardProperties;->mIsShowNonSecureLockscrenBeforeTimeout:Z

    return v1
.end method

.method public static useIndependentLockTimeout()Z
    .registers 1

    .prologue
    .line 651
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->showNonSecureLockscrenBeforeTimeout()Z

    move-result v0

    return v0
.end method
