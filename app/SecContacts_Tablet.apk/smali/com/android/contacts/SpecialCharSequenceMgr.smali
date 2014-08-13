.class public Lcom/android/contacts/SpecialCharSequenceMgr;
.super Ljava/lang/Object;
.source "SpecialCharSequenceMgr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;,
        Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;
    }
.end annotation


# static fields
.field private static final ADN_NAME_COLUMN_NAME:Ljava/lang/String; = "name"

.field private static final ADN_PHONE_NUMBER_COLUMN_NAME:Ljava/lang/String; = "number"

.field private static final ADN_QUERY_TOKEN:I = -0x1

.field private static final CONFIRM_CPRM_KEY:Ljava/lang/String; = "*#4649#"

.field private static final FDN_NAME_COLUMN_NAME:Ljava/lang/String; = "name"

.field private static final FDN_PHONE_NUMBER_COLUMN_NAME:Ljava/lang/String; = "number"

.field private static final FDN_QUERY_TOKEN:I = -0x2

.field private static final HARD_KEY_PRESS:I = 0x2

.field static IskeystringEnaled:Z = false

.field private static KeystringBlockList:[Ljava/lang/String; = null

.field private static final LONG_PRESS:I = 0x1

.field private static final MMI_IMEI_DISPLAY:Ljava/lang/String; = "*#06#"

.field private static PersoKeystring:[Ljava/lang/String; = null

.field public static final SECRET_CODE_ACTION:Ljava/lang/String; = "android.provider.Telephony.SECRET_CODE"

.field private static final SHORT_PRESS:I = 0x0

.field private static SellOutSMS:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "SpecialCharSequenceMgr"

.field private static blockedKeystring:[Ljava/lang/String;

.field private static intentNameVendor:[Ljava/lang/String;

.field private static keystring:[Ljava/lang/String;

.field private static keystring_spr:[Ljava/lang/String;

.field private static keystring_vzw:[Ljava/lang/String;

.field private static selectedSIMID:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 81
    sput v3, Lcom/android/contacts/SpecialCharSequenceMgr;->selectedSIMID:I

    .line 83
    sput-boolean v3, Lcom/android/contacts/SpecialCharSequenceMgr;->IskeystringEnaled:Z

    .line 87
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "*#1111#"

    aput-object v1, v0, v3

    const-string v1, "*#2222#"

    aput-object v1, v0, v4

    const-string v1, "*#1234#"

    aput-object v1, v0, v5

    const-string v1, "*#99732#"

    aput-object v1, v0, v6

    const-string v1, "*2767*3855#"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "*#9900#"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "*#87976633#"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "*#2684#"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "*#4732#"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/SpecialCharSequenceMgr;->keystring:[Ljava/lang/String;

    .line 107
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "*#46744674#"

    aput-object v1, v0, v3

    const-string v1, "*#1111#"

    aput-object v1, v0, v4

    const-string v1, "*#2222#"

    aput-object v1, v0, v5

    const-string v1, "*#1234#"

    aput-object v1, v0, v6

    const-string v1, "*#12580*369#"

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/contacts/SpecialCharSequenceMgr;->blockedKeystring:[Ljava/lang/String;

    .line 111
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "*#9099#"

    aput-object v1, v0, v3

    const-string v1, "*#4238378#"

    aput-object v1, v0, v4

    const-string v1, "*#7594#"

    aput-object v1, v0, v5

    const-string v1, "*#272886#"

    aput-object v1, v0, v6

    const-string v1, "*#0002*28347#"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "*#0002*28346#"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "*#28346#"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/SpecialCharSequenceMgr;->KeystringBlockList:[Ljava/lang/String;

    .line 131
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "**33284"

    aput-object v1, v0, v3

    const-string v1, "##3282#"

    aput-object v1, v0, v4

    const-string v1, "**367738"

    aput-object v1, v0, v5

    const-string v1, "47*68#13580"

    aput-object v1, v0, v6

    const-string v1, "**87284"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "##2539#"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "##786#"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "##4772579#"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "##72786#"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "##889#"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "##25327#"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "**583"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "**7838"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "**673"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "**772"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/SpecialCharSequenceMgr;->keystring_vzw:[Ljava/lang/String;

    .line 148
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "##33284#"

    aput-object v1, v0, v3

    const-string v1, "##3282#"

    aput-object v1, v0, v4

    const-string v1, "##367738#"

    aput-object v1, v0, v5

    const-string v1, "3215987123580"

    aput-object v1, v0, v6

    const-string v1, "##3424#"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "##2539#"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "##786#"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "##4772579#"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "##72786#"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "##889#"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "##25327#"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "**583"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "**7838"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "**673"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/SpecialCharSequenceMgr;->keystring_spr:[Ljava/lang/String;

    .line 165
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "DEBUG"

    aput-object v1, v0, v3

    const-string v1, "DATA"

    aput-object v1, v0, v4

    const-string v1, "DNSSET"

    aput-object v1, v0, v5

    const-string v1, "TESTMODE"

    aput-object v1, v0, v6

    const-string v1, "PUTIL"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "AKEY"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "RTN"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "GPSCLRX"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "SCRTN"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "TTY"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "CLEAR"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "LTEMODE"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "STEALTHMODE"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "MRD"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "NAMBASIC"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/SpecialCharSequenceMgr;->intentNameVendor:[Ljava/lang/String;

    .line 183
    new-array v0, v3, [Ljava/lang/String;

    sput-object v0, Lcom/android/contacts/SpecialCharSequenceMgr;->SellOutSMS:[Ljava/lang/String;

    .line 189
    new-array v0, v3, [Ljava/lang/String;

    sput-object v0, Lcom/android/contacts/SpecialCharSequenceMgr;->PersoKeystring:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    return-void
.end method

.method static IsBlockedKeyString(Ljava/lang/String;)Z
    .locals 3
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 625
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/android/contacts/SpecialCharSequenceMgr;->blockedKeystring:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 626
    sget-object v2, Lcom/android/contacts/SpecialCharSequenceMgr;->blockedKeystring:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 627
    if-nez v0, :cond_0

    .line 628
    sput-boolean v1, Lcom/android/contacts/SpecialCharSequenceMgr;->IskeystringEnaled:Z

    .line 634
    :cond_0
    :goto_1
    return v1

    .line 625
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 634
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method static IsKeyString(Ljava/lang/String;)Z
    .locals 2
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    .line 599
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/android/contacts/SpecialCharSequenceMgr;->keystring:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 600
    sget-object v1, Lcom/android/contacts/SpecialCharSequenceMgr;->keystring:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 601
    const/4 v1, 0x1

    .line 604
    :goto_1
    return v1

    .line 599
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 604
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method static IsKeystringBlockList(Ljava/lang/String;)Z
    .locals 3
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    .line 639
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/android/contacts/SpecialCharSequenceMgr;->KeystringBlockList:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 640
    sget-object v1, Lcom/android/contacts/SpecialCharSequenceMgr;->KeystringBlockList:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/contacts/SpecialCharSequenceMgr;->KeystringBlockList:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "*#*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 646
    :cond_0
    const/4 v1, 0x1

    .line 650
    :goto_1
    return v1

    .line 639
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 650
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method static IsPersoForLock(Ljava/lang/String;)Z
    .locals 1
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    .line 673
    const-string v0, "*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 674
    const/4 v0, 0x1

    .line 676
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static IsPersoKeyString(Ljava/lang/String;)Z
    .locals 2
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    .line 663
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/android/contacts/SpecialCharSequenceMgr;->PersoKeystring:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 664
    sget-object v1, Lcom/android/contacts/SpecialCharSequenceMgr;->PersoKeystring:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 665
    const/4 v1, 0x1

    .line 668
    :goto_1
    return v1

    .line 663
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 668
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method static IsSellOutKeyString(Ljava/lang/String;)Z
    .locals 2
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    .line 654
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/android/contacts/SpecialCharSequenceMgr;->SellOutSMS:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 655
    sget-object v1, Lcom/android/contacts/SpecialCharSequenceMgr;->SellOutSMS:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 656
    const/4 v1, 0x1

    .line 659
    :goto_1
    return v1

    .line 654
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 659
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method static getIndexKeyStringSPR(Ljava/lang/String;)I
    .locals 2
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    .line 406
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/android/contacts/SpecialCharSequenceMgr;->keystring_spr:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 407
    sget-object v1, Lcom/android/contacts/SpecialCharSequenceMgr;->keystring_spr:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 411
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 406
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 411
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method static getIndexKeyStringVZW(Ljava/lang/String;)I
    .locals 2
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    .line 398
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/android/contacts/SpecialCharSequenceMgr;->keystring_vzw:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 399
    sget-object v1, Lcom/android/contacts/SpecialCharSequenceMgr;->keystring_vzw:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 403
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 398
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 403
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method static handleAdnEntry(Landroid/content/Context;Ljava/lang/String;Landroid/widget/EditText;)Z
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "textField"    # Landroid/widget/EditText;

    .prologue
    .line 692
    const-string v2, "keyguard"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/KeyguardManager;

    .line 694
    .local v13, "keyguardManager":Landroid/app/KeyguardManager;
    invoke-virtual {v13}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 695
    const/4 v2, 0x0

    .line 1040
    :goto_0
    return v2

    .line 698
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v14

    .line 699
    .local v14, "len":I
    const/4 v2, 0x1

    if-le v14, v2, :cond_8

    const/4 v2, 0x5

    if-ge v14, v2, :cond_8

    const-string v2, "#"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 700
    const-string v2, "feature_chn_duos"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 702
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "CURRENT_NETWORK"

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    .line 703
    .local v10, "currentNetwork":I
    if-nez v10, :cond_3

    .line 704
    const-string v2, "feature_chn_duos_gsm_gsm"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 705
    const-string v2, "SpecialCharSequenceMgr"

    const-string v4, "Current Network is GSM"

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "fdn_internet"

    invoke-static {v2, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 707
    .local v9, "Fdn_Enable":Ljava/lang/String;
    if-eqz v9, :cond_1

    const-string v2, "on"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 709
    const/4 v2, 0x0

    add-int/lit8 v4, v14, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 719
    .local v12, "index":I
    new-instance v1, Lcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 722
    .local v1, "handler":Lcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;
    new-instance v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;

    add-int/lit8 v2, v12, -0x1

    const/4 v4, -0x2

    invoke-direct {v3, v2, v1, v4}, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;-><init>(ILcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;I)V

    .line 726
    .local v3, "sc":Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;
    add-int/lit8 v2, v12, -0x1

    iput v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->contactNum:I

    .line 727
    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->setTextField(Landroid/widget/EditText;)V

    .line 730
    new-instance v2, Landroid/app/ProgressDialog;

    invoke-direct {v2, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    .line 731
    iget-object v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    const v4, 0x7f0e00a1

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->setTitle(I)V

    .line 732
    iget-object v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    const v4, 0x7f0e00a0

    invoke-virtual {p0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 733
    iget-object v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 734
    iget-object v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 735
    iget-object v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 736
    iget-object v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroid/view/Window;->addFlags(I)V

    .line 743
    const/4 v2, -0x2

    const-string v4, "content://icc/fdn"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "number"

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 748
    .end local v1    # "handler":Lcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;
    .end local v3    # "sc":Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;
    .end local v12    # "index":I
    :cond_1
    const/4 v2, 0x0

    add-int/lit8 v4, v14, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 758
    .restart local v12    # "index":I
    new-instance v1, Lcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 761
    .restart local v1    # "handler":Lcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;
    new-instance v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;

    add-int/lit8 v2, v12, -0x1

    const/4 v4, -0x1

    invoke-direct {v3, v2, v1, v4}, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;-><init>(ILcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;I)V

    .line 765
    .restart local v3    # "sc":Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;
    add-int/lit8 v2, v12, -0x1

    iput v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->contactNum:I

    .line 766
    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->setTextField(Landroid/widget/EditText;)V

    .line 769
    new-instance v2, Landroid/app/ProgressDialog;

    invoke-direct {v2, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    .line 770
    iget-object v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    const v4, 0x7f0e00a1

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->setTitle(I)V

    .line 771
    iget-object v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    const v4, 0x7f0e00a0

    invoke-virtual {p0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 772
    iget-object v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 773
    iget-object v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 774
    iget-object v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 775
    iget-object v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroid/view/Window;->addFlags(I)V

    .line 782
    const/4 v2, -0x1

    const-string v4, "content://icc/adn"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "number"

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 787
    .end local v1    # "handler":Lcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;
    .end local v3    # "sc":Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;
    .end local v9    # "Fdn_Enable":Ljava/lang/String;
    .end local v12    # "index":I
    :cond_2
    const-string v2, "SpecialCharSequenceMgr"

    const-string v4, "Current Network is CDMA"

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    const/4 v2, 0x0

    add-int/lit8 v4, v14, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 798
    .restart local v12    # "index":I
    new-instance v1, Lcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 801
    .restart local v1    # "handler":Lcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;
    new-instance v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;

    add-int/lit8 v2, v12, -0x1

    const/4 v4, -0x1

    invoke-direct {v3, v2, v1, v4}, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;-><init>(ILcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;I)V

    .line 805
    .restart local v3    # "sc":Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;
    add-int/lit8 v2, v12, -0x1

    iput v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->contactNum:I

    .line 806
    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->setTextField(Landroid/widget/EditText;)V

    .line 809
    new-instance v2, Landroid/app/ProgressDialog;

    invoke-direct {v2, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    .line 810
    iget-object v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    const v4, 0x7f0e00a1

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->setTitle(I)V

    .line 811
    iget-object v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    const v4, 0x7f0e00a0

    invoke-virtual {p0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 812
    iget-object v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 813
    iget-object v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 814
    iget-object v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 815
    iget-object v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroid/view/Window;->addFlags(I)V

    .line 822
    const/4 v2, -0x1

    const-string v4, "content://icc/adn"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "number"

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 824
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 829
    .end local v1    # "handler":Lcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;
    .end local v3    # "sc":Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;
    .end local v12    # "index":I
    :cond_3
    const-string v2, "SpecialCharSequenceMgr"

    const-string v4, "Current Network is GSM"

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "fdn_internet_sim2"

    invoke-static {v2, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 831
    .restart local v9    # "Fdn_Enable":Ljava/lang/String;
    if-eqz v9, :cond_4

    const-string v2, "on"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 833
    const/4 v2, 0x0

    add-int/lit8 v4, v14, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 843
    .restart local v12    # "index":I
    new-instance v1, Lcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 846
    .restart local v1    # "handler":Lcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;
    new-instance v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;

    add-int/lit8 v2, v12, -0x1

    const/4 v4, -0x2

    invoke-direct {v3, v2, v1, v4}, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;-><init>(ILcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;I)V

    .line 850
    .restart local v3    # "sc":Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;
    add-int/lit8 v2, v12, -0x1

    iput v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->contactNum:I

    .line 851
    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->setTextField(Landroid/widget/EditText;)V

    .line 854
    new-instance v2, Landroid/app/ProgressDialog;

    invoke-direct {v2, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    .line 855
    iget-object v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    const v4, 0x7f0e00a1

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->setTitle(I)V

    .line 856
    iget-object v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    const v4, 0x7f0e00a0

    invoke-virtual {p0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 857
    iget-object v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 858
    iget-object v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 859
    iget-object v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 860
    iget-object v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroid/view/Window;->addFlags(I)V

    .line 867
    const/4 v2, -0x2

    const-string v4, "content://icc2/fdn"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "number"

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 869
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 872
    .end local v1    # "handler":Lcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;
    .end local v3    # "sc":Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;
    .end local v12    # "index":I
    :cond_4
    const/4 v2, 0x0

    add-int/lit8 v4, v14, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 882
    .restart local v12    # "index":I
    new-instance v1, Lcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 885
    .restart local v1    # "handler":Lcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;
    new-instance v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;

    add-int/lit8 v2, v12, -0x1

    const/4 v4, -0x1

    invoke-direct {v3, v2, v1, v4}, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;-><init>(ILcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;I)V

    .line 889
    .restart local v3    # "sc":Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;
    add-int/lit8 v2, v12, -0x1

    iput v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->contactNum:I

    .line 890
    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->setTextField(Landroid/widget/EditText;)V

    .line 893
    new-instance v2, Landroid/app/ProgressDialog;

    invoke-direct {v2, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    .line 894
    iget-object v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    const v4, 0x7f0e00a1

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->setTitle(I)V

    .line 895
    iget-object v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    const v4, 0x7f0e00a0

    invoke-virtual {p0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 896
    iget-object v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 897
    iget-object v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 898
    iget-object v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 899
    iget-object v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroid/view/Window;->addFlags(I)V

    .line 906
    const/4 v2, -0x1

    const-string v4, "content://icc2/adn"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "number"

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 908
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 915
    .end local v1    # "handler":Lcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;
    .end local v3    # "sc":Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;
    .end local v9    # "Fdn_Enable":Ljava/lang/String;
    .end local v10    # "currentNetwork":I
    .end local v12    # "index":I
    :cond_5
    const-string v2, "feature_spr"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 916
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 919
    :cond_6
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "fdn_internet"

    invoke-static {v2, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 921
    .restart local v9    # "Fdn_Enable":Ljava/lang/String;
    if-eqz v9, :cond_9

    const-string v2, "on"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 923
    const/4 v2, 0x0

    add-int/lit8 v4, v14, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 938
    .restart local v12    # "index":I
    new-instance v1, Lcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 941
    .restart local v1    # "handler":Lcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;
    new-instance v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;

    add-int/lit8 v2, v12, -0x1

    const/4 v4, -0x2

    invoke-direct {v3, v2, v1, v4}, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;-><init>(ILcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;I)V

    .line 945
    .restart local v3    # "sc":Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;
    add-int/lit8 v2, v12, -0x1

    iput v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->contactNum:I

    .line 946
    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->setTextField(Landroid/widget/EditText;)V

    .line 949
    new-instance v2, Landroid/app/ProgressDialog;

    invoke-direct {v2, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    .line 950
    iget-object v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    const v4, 0x7f0e00a1

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->setTitle(I)V

    .line 951
    iget-object v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    const v4, 0x7f0e00a0

    invoke-virtual {p0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 953
    iget-object v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 954
    iget-object v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 955
    iget-object v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 956
    iget-object v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroid/view/Window;->addFlags(I)V

    .line 962
    const-string v2, "feature_common_dsds_support "

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 964
    const/4 v2, -0x2

    const-string v4, "content://iccmsim/fdn"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "number"

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 975
    :goto_1
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 970
    :cond_7
    const/4 v2, -0x2

    const-string v4, "content://icc/fdn"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "number"

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1032
    .end local v1    # "handler":Lcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;
    .end local v3    # "sc":Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;
    .end local v9    # "Fdn_Enable":Ljava/lang/String;
    .end local v12    # "index":I
    :catch_0
    move-exception v11

    .line 1033
    .local v11, "ex":Ljava/lang/NumberFormatException;
    const-string v2, "SpecialCharSequenceMgr"

    const-string v4, "NumberFormatException  in handleAdnEntry()"

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    .end local v11    # "ex":Ljava/lang/NumberFormatException;
    :cond_8
    :goto_2
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 978
    .restart local v9    # "Fdn_Enable":Ljava/lang/String;
    :cond_9
    const/4 v2, 0x0

    add-int/lit8 v4, v14, -0x1

    :try_start_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 993
    .restart local v12    # "index":I
    new-instance v1, Lcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 996
    .restart local v1    # "handler":Lcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;
    new-instance v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;

    add-int/lit8 v2, v12, -0x1

    const/4 v4, -0x1

    invoke-direct {v3, v2, v1, v4}, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;-><init>(ILcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;I)V

    .line 1000
    .restart local v3    # "sc":Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;
    add-int/lit8 v2, v12, -0x1

    iput v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->contactNum:I

    .line 1001
    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->setTextField(Landroid/widget/EditText;)V

    .line 1004
    new-instance v2, Landroid/app/ProgressDialog;

    invoke-direct {v2, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    .line 1005
    iget-object v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    const v4, 0x7f0e00a1

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->setTitle(I)V

    .line 1006
    iget-object v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    const v4, 0x7f0e00a0

    invoke-virtual {p0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1008
    iget-object v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1009
    iget-object v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1010
    iget-object v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1011
    iget-object v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroid/view/Window;->addFlags(I)V

    .line 1017
    const-string v2, "feature_common_dsds_support "

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1019
    const/4 v2, -0x1

    const-string v4, "content://iccmsim/adn"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "number"

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 1030
    :goto_3
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1025
    :cond_a
    const/4 v2, -0x1

    const-string v4, "content://icc/adn"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "number"

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 911
    .end local v1    # "handler":Lcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;
    .end local v3    # "sc":Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;
    .end local v9    # "Fdn_Enable":Ljava/lang/String;
    .end local v12    # "index":I
    :catch_1
    move-exception v2

    goto/16 :goto_2
.end method

.method static handleAdnEntry(Landroid/content/Context;Ljava/lang/String;Landroid/widget/EditText;IZ)Z
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "textField"    # Landroid/widget/EditText;
    .param p3, "selectedSIMID"    # I
    .param p4, "isDualSim"    # Z

    .prologue
    .line 1056
    const-string v2, "keyguard"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/KeyguardManager;

    .line 1058
    .local v13, "keyguardManager":Landroid/app/KeyguardManager;
    invoke-virtual {v13}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1059
    const/4 v2, 0x0

    .line 1293
    :goto_0
    return v2

    .line 1062
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v14

    .line 1063
    .local v14, "len":I
    const/4 v2, 0x1

    if-le v14, v2, :cond_3

    const/4 v2, 0x5

    if-ge v14, v2, :cond_3

    const-string v2, "#"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1065
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "fdn_internet"

    invoke-static {v2, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1066
    .local v9, "Fdn_Enable":Ljava/lang/String;
    const/4 v10, 0x0

    .line 1070
    .local v10, "SIM2_Fdn_Enable":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "fdn_internet_sim2"

    invoke-static {v2, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1072
    const/4 v2, 0x1

    move/from16 v0, p3

    if-ne v0, v2, :cond_4

    if-eqz v10, :cond_4

    const-string v2, "on"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1073
    const-string v2, "SpecialCharSequenceMgr"

    const-string v4, "SIM2 / FDN"

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    const/4 v2, 0x0

    add-int/lit8 v4, v14, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 1091
    .local v12, "index":I
    new-instance v1, Lcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 1094
    .local v1, "handler":Lcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;
    new-instance v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;

    add-int/lit8 v2, v12, -0x1

    const/4 v4, -0x2

    invoke-direct {v3, v2, v1, v4}, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;-><init>(ILcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;I)V

    .line 1098
    .local v3, "sc":Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;
    add-int/lit8 v2, v12, -0x1

    iput v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->contactNum:I

    .line 1099
    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->setTextField(Landroid/widget/EditText;)V

    .line 1102
    new-instance v2, Landroid/app/ProgressDialog;

    invoke-direct {v2, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    .line 1103
    iget-object v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    const v4, 0x7f0e00a1

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->setTitle(I)V

    .line 1104
    iget-object v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    const v4, 0x7f0e00a0

    invoke-virtual {p0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1106
    iget-object v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1107
    iget-object v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1108
    iget-object v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1109
    iget-object v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroid/view/Window;->addFlags(I)V

    .line 1116
    const-string v2, "feature_marvell_dsds"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "feature_common_use_multisim"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1117
    :cond_1
    const/4 v2, -0x2

    const-string v4, "content://icc2/fdn"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "number"

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 1127
    :goto_1
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1122
    :cond_2
    const/4 v2, -0x2

    const-string v4, "content://iccmsim/fdn_sub2"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "number"

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1286
    .end local v1    # "handler":Lcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;
    .end local v3    # "sc":Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;
    .end local v9    # "Fdn_Enable":Ljava/lang/String;
    .end local v10    # "SIM2_Fdn_Enable":Ljava/lang/String;
    .end local v12    # "index":I
    :catch_0
    move-exception v11

    .line 1287
    .local v11, "ex":Ljava/lang/NumberFormatException;
    const-string v2, "SpecialCharSequenceMgr"

    const-string v4, "NumberFormatException  in handleAdnEntry()"

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1293
    .end local v11    # "ex":Ljava/lang/NumberFormatException;
    :cond_3
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1128
    .restart local v9    # "Fdn_Enable":Ljava/lang/String;
    .restart local v10    # "SIM2_Fdn_Enable":Ljava/lang/String;
    :cond_4
    if-nez p3, :cond_6

    if-eqz v9, :cond_6

    :try_start_1
    const-string v2, "on"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1130
    const-string v2, "SpecialCharSequenceMgr"

    const-string v4, "SIM1 / FDN"

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    const/4 v2, 0x0

    add-int/lit8 v4, v14, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 1148
    .restart local v12    # "index":I
    new-instance v1, Lcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 1151
    .restart local v1    # "handler":Lcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;
    new-instance v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;

    add-int/lit8 v2, v12, -0x1

    const/4 v4, -0x2

    invoke-direct {v3, v2, v1, v4}, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;-><init>(ILcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;I)V

    .line 1155
    .restart local v3    # "sc":Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;
    add-int/lit8 v2, v12, -0x1

    iput v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->contactNum:I

    .line 1156
    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->setTextField(Landroid/widget/EditText;)V

    .line 1159
    new-instance v2, Landroid/app/ProgressDialog;

    invoke-direct {v2, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    .line 1160
    iget-object v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    const v4, 0x7f0e00a1

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->setTitle(I)V

    .line 1161
    iget-object v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    const v4, 0x7f0e00a0

    invoke-virtual {p0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1163
    iget-object v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1164
    iget-object v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1165
    iget-object v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1166
    iget-object v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroid/view/Window;->addFlags(I)V

    .line 1173
    const-string v2, "feature_marvell_dsds"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1175
    const/4 v2, -0x2

    const-string v4, "content://icc/fdn"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "number"

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 1185
    :goto_2
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1180
    :cond_5
    const/4 v2, -0x2

    const-string v4, "content://iccmsim/fdn"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "number"

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1188
    .end local v1    # "handler":Lcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;
    .end local v3    # "sc":Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;
    .end local v12    # "index":I
    :cond_6
    const/4 v2, 0x0

    add-int/lit8 v4, v14, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 1203
    .restart local v12    # "index":I
    new-instance v1, Lcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 1206
    .restart local v1    # "handler":Lcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;
    new-instance v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;

    add-int/lit8 v2, v12, -0x1

    const/4 v4, -0x1

    invoke-direct {v3, v2, v1, v4}, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;-><init>(ILcom/android/contacts/SpecialCharSequenceMgr$QueryHandler;I)V

    .line 1210
    .restart local v3    # "sc":Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;
    add-int/lit8 v2, v12, -0x1

    iput v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->contactNum:I

    .line 1211
    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->setTextField(Landroid/widget/EditText;)V

    .line 1214
    new-instance v2, Landroid/app/ProgressDialog;

    invoke-direct {v2, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    .line 1215
    iget-object v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    const v4, 0x7f0e00a1

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->setTitle(I)V

    .line 1216
    iget-object v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    const v4, 0x7f0e00a0

    invoke-virtual {p0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1218
    iget-object v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1219
    iget-object v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1220
    iget-object v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1221
    iget-object v2, v3, Lcom/android/contacts/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroid/view/Window;->addFlags(I)V

    .line 1255
    const-string v2, "feature_marvell_dsds"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1256
    const/4 v2, 0x1

    move/from16 v0, p3

    if-ne v0, v2, :cond_7

    .line 1257
    const-string v2, "SpecialCharSequenceMgr"

    const-string v4, "SIM2 / ADN"

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1258
    const/4 v2, -0x1

    const-string v4, "content://icc2/adn"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "number"

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 1284
    :goto_3
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1263
    :cond_7
    const-string v2, "SpecialCharSequenceMgr"

    const-string v4, "SIM1 / ADN"

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1264
    const/4 v2, -0x1

    const-string v4, "content://icc/adn"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "number"

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1270
    :cond_8
    const/4 v2, 0x1

    move/from16 v0, p3

    if-ne v0, v2, :cond_9

    .line 1271
    const-string v2, "SpecialCharSequenceMgr"

    const-string v4, "SIM2 / ADN"

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1272
    const/4 v2, -0x1

    const-string v4, "content://iccmsim/adn_sub2"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "number"

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1277
    :cond_9
    const-string v2, "SpecialCharSequenceMgr"

    const-string v4, "SIM1 / ADN"

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1278
    const/4 v2, -0x1

    const-string v4, "content://iccmsim/adn"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "number"

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

.method static handleCIQTestCode(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 201
    :try_start_0
    const-string v1, ".*#\\*47.*#$"

    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 203
    const-string v1, "SpecialCharSequenceMgr"

    const-string v2, "ciq keycode"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    const/4 v1, 0x1

    .line 209
    :goto_0
    return v1

    .line 206
    :catch_0
    move-exception v0

    .line 207
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SpecialCharSequenceMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is occured..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static handleCPRMKeyConfirm(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 1345
    const/4 v0, 0x0

    return v0
.end method

.method public static handleChars(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 222
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/android/contacts/SpecialCharSequenceMgr;->handleChars(Landroid/content/Context;Ljava/lang/String;ZLandroid/widget/EditText;)Z

    move-result v0

    return v0
.end method

.method public static handleChars(Landroid/content/Context;Ljava/lang/String;Landroid/widget/EditText;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "textField"    # Landroid/widget/EditText;

    .prologue
    .line 218
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/android/contacts/SpecialCharSequenceMgr;->handleChars(Landroid/content/Context;Ljava/lang/String;ZLandroid/widget/EditText;)Z

    move-result v0

    return v0
.end method

.method public static handleChars(Landroid/content/Context;Ljava/lang/String;Landroid/widget/EditText;IZ)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "textField"    # Landroid/widget/EditText;
    .param p3, "selectedSIMID"    # I
    .param p4, "isDualSim"    # Z

    .prologue
    .line 226
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/android/contacts/SpecialCharSequenceMgr;->handleChars(Landroid/content/Context;Ljava/lang/String;ZLandroid/widget/EditText;IZ)Z

    move-result v0

    return v0
.end method

.method public static handleChars(Landroid/content/Context;Ljava/lang/String;ZLandroid/widget/EditText;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "useSystemWindow"    # Z
    .param p3, "textField"    # Landroid/widget/EditText;

    .prologue
    const/4 v1, 0x0

    .line 233
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 235
    .local v0, "dialString":Ljava/lang/String;
    invoke-static {p0, v1, v0}, Lcom/android/contacts/SpecialCharSequenceMgr;->handleTestMode(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p0, v0}, Lcom/android/contacts/SpecialCharSequenceMgr;->handleCodeForAABUrlUpdate(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p0, v0, p2}, Lcom/android/contacts/SpecialCharSequenceMgr;->handleIMEIDisplay(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p0, v0}, Lcom/android/contacts/SpecialCharSequenceMgr;->handleCPRMKeyConfirm(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p0, v0}, Lcom/android/contacts/SpecialCharSequenceMgr;->handlePinEntry(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p0, v0, p3}, Lcom/android/contacts/SpecialCharSequenceMgr;->handleAdnEntry(Landroid/content/Context;Ljava/lang/String;Landroid/widget/EditText;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p0, v0}, Lcom/android/contacts/SpecialCharSequenceMgr;->handleSecretCode(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p0, v0}, Lcom/android/contacts/SpecialCharSequenceMgr;->handleTestmodeSecretCode(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p0, v0}, Lcom/android/contacts/SpecialCharSequenceMgr;->handleTestmodeSecretCodeVendor(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p0, v0}, Lcom/android/contacts/SpecialCharSequenceMgr;->handleCIQTestCode(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 250
    :cond_0
    const/4 v1, 0x1

    .line 253
    :cond_1
    return v1
.end method

.method static handleChars(Landroid/content/Context;Ljava/lang/String;ZLandroid/widget/EditText;IZ)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "useSystemWindow"    # Z
    .param p3, "textField"    # Landroid/widget/EditText;
    .param p4, "selectedSIMID"    # I
    .param p5, "isDualSim"    # Z

    .prologue
    const/4 v1, 0x0

    .line 260
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 263
    .local v0, "dialString":Ljava/lang/String;
    invoke-static {p0, v1, v0}, Lcom/android/contacts/SpecialCharSequenceMgr;->handleTestMode(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p0, v0}, Lcom/android/contacts/SpecialCharSequenceMgr;->handleCodeForAABUrlUpdate(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p0, v0, p2}, Lcom/android/contacts/SpecialCharSequenceMgr;->handleIMEIDisplay(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p0, v0}, Lcom/android/contacts/SpecialCharSequenceMgr;->handleCPRMKeyConfirm(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p0, v0}, Lcom/android/contacts/SpecialCharSequenceMgr;->handlePinEntry(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p0, v0, p3, p4, p5}, Lcom/android/contacts/SpecialCharSequenceMgr;->handleAdnEntry(Landroid/content/Context;Ljava/lang/String;Landroid/widget/EditText;IZ)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p0, v0}, Lcom/android/contacts/SpecialCharSequenceMgr;->handleSecretCode(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p0, v0}, Lcom/android/contacts/SpecialCharSequenceMgr;->handleTestmodeSecretCode(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p0, v0}, Lcom/android/contacts/SpecialCharSequenceMgr;->handleTestmodeSecretCodeVendor(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p0, v0}, Lcom/android/contacts/SpecialCharSequenceMgr;->handleCIQTestCode(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 278
    :cond_0
    const/4 v1, 0x1

    .line 280
    :cond_1
    return v1
.end method

.method static handleCodeForAABUrlUpdate(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 286
    const-string v1, "SpecialCharSequenceMgr"

    const-string v2, "handleCodeForAABUrlUpdate"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    const-string v1, "*#222875#"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 289
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.aab.activity.CHANGEAABURLBROADCAST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 290
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 291
    const-string v1, "SpecialCharSequenceMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleCodeForAABUrlUpdate - sendBroadcast:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    const/4 v1, 0x1

    .line 295
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static handleIMEIDisplay(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "useSystemWindow"    # Z

    .prologue
    const/4 v2, 0x1

    .line 1321
    const-string v1, "*#06#"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1322
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v0

    .line 1325
    .local v0, "phoneType":I
    if-ne v0, v2, :cond_0

    .line 1326
    invoke-static {p0, p2}, Lcom/android/contacts/SpecialCharSequenceMgr;->showIMEIPanel(Landroid/content/Context;Z)V

    move v1, v2

    .line 1334
    .end local v0    # "phoneType":I
    :goto_0
    return v1

    .line 1328
    .restart local v0    # "phoneType":I
    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1329
    invoke-static {p0, p2}, Lcom/android/contacts/SpecialCharSequenceMgr;->showMEIDPanel(Landroid/content/Context;Z)V

    move v1, v2

    .line 1330
    goto :goto_0

    .line 1334
    .end local v0    # "phoneType":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static handlePinEntry(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1297
    const-string v3, "**04"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "**05"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const-string v3, "#"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1299
    :try_start_0
    const-string v3, "feature_chn_duos_gsm_gsm"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1300
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "CURRENT_NETWORK"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1301
    .local v0, "currentNetwork":I
    if-nez v0, :cond_2

    .line 1302
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/ITelephony;->handlePinMmi(Ljava/lang/String;)Z

    move-result v2

    .line 1317
    .end local v0    # "currentNetwork":I
    :cond_1
    :goto_0
    return v2

    .line 1305
    .restart local v0    # "currentNetwork":I
    :cond_2
    const-string v3, "phone2"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/ITelephony;->handlePinMmi(Ljava/lang/String;)Z

    move-result v2

    goto :goto_0

    .line 1309
    .end local v0    # "currentNetwork":I
    :cond_3
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/ITelephony;->handlePinMmi(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 1312
    :catch_0
    move-exception v1

    .line 1313
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "SpecialCharSequenceMgr"

    const-string v4, "Failed to handlePinMmi due to remote exception"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static handleSecretCode(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x4

    const/16 v4, 0x8

    const/4 v2, 0x1

    .line 311
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 313
    .local v1, "len":I
    if-le v1, v4, :cond_0

    .line 314
    invoke-static {p1}, Lcom/android/contacts/SpecialCharSequenceMgr;->IsBlockedKeyString(Ljava/lang/String;)Z

    .line 317
    :cond_0
    if-le v1, v4, :cond_1

    const-string v3, "*#*#"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "#*#*"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p1}, Lcom/android/contacts/SpecialCharSequenceMgr;->IsKeystringBlockList(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 319
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.provider.Telephony.SECRET_CODE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "android_secret_code://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v1, -0x4

    invoke-virtual {p1, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 321
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 355
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return v2

    .line 323
    :cond_1
    if-le v1, v4, :cond_2

    const-string v3, "*#*#"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "#*#*"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {p1}, Lcom/android/contacts/SpecialCharSequenceMgr;->IsKeystringBlockList(Ljava/lang/String;)Z

    move-result v3

    if-ne v3, v2, :cond_2

    invoke-static {}, Lcom/android/contacts/SpecialCharSequenceMgr;->isKeyStringBlocked()Z

    move-result v3

    if-nez v3, :cond_2

    .line 325
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.provider.Telephony.SECRET_CODE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "android_secret_code://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v1, -0x4

    invoke-virtual {p1, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 327
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 331
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    if-le v1, v4, :cond_3

    const-string v3, "*#*#"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "#*#*"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {p1}, Lcom/android/contacts/SpecialCharSequenceMgr;->IsKeystringBlockList(Ljava/lang/String;)Z

    move-result v3

    if-ne v3, v2, :cond_3

    invoke-static {}, Lcom/android/contacts/SpecialCharSequenceMgr;->isKeyStringBlocked()Z

    move-result v3

    if-ne v3, v2, :cond_3

    sget-boolean v3, Lcom/android/contacts/SpecialCharSequenceMgr;->IskeystringEnaled:Z

    if-ne v3, v2, :cond_3

    .line 334
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.provider.Telephony.SECRET_CODE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "android_secret_code://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v1, -0x4

    invoke-virtual {p1, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 336
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 355
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_3
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method static handleTestMode(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "keyPressValue"    # I
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    .line 370
    const/4 v0, 0x0

    return v0
.end method

.method static handleTestmodeSecretCode(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x7

    const/4 v11, 0x6

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v6, 0x1

    .line 415
    const-string v5, "SpecialCharSequenceMgr"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Keystring: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    const-string v5, "phone"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 419
    .local v0, "IMEIstr":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 421
    .local v4, "len":I
    const-string v5, "*#272*"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "#"

    invoke-virtual {p1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 429
    add-int/lit8 v5, v4, -0x1

    invoke-virtual {p1, v11, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 431
    .local v2, "get":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 432
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.provider.Telephony.SECRET_CODE"

    const-string v7, "android_secret_code://83052020100812173552301071192687#"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v3, v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 434
    .local v3, "intent":Landroid/content/Intent;
    const-string v5, "SpecialCharSequenceMgr"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " intent = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    invoke-virtual {p0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    move v5, v6

    .line 595
    .end local v2    # "get":Ljava/lang/String;
    .end local v3    # "intent":Landroid/content/Intent;
    :goto_0
    return v5

    .line 441
    .restart local v2    # "get":Ljava/lang/String;
    :cond_0
    const-string v5, "62826"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "Natco"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_Setting_OperatorSpecificPreConfigKeyString"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 442
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.provider.Telephony.SECRET_CODE"

    const-string v7, "android_secret_code://83052020100812173552301071192687#"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v3, v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 444
    .restart local v3    # "intent":Landroid/content/Intent;
    const-string v5, "SpecialCharSequenceMgr"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " intent = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    invoke-virtual {p0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    move v5, v6

    .line 447
    goto :goto_0

    .line 472
    .end local v2    # "get":Ljava/lang/String;
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_1
    if-le v4, v10, :cond_2

    .line 473
    invoke-static {p1}, Lcom/android/contacts/SpecialCharSequenceMgr;->IsBlockedKeyString(Ljava/lang/String;)Z

    .line 477
    :cond_2
    if-le v4, v10, :cond_3

    invoke-static {p1}, Lcom/android/contacts/SpecialCharSequenceMgr;->IsKeyString(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 478
    const-string v5, "SpecialCharSequenceMgr"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Keystring: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.provider.Telephony.SECRET_CODE"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "android_secret_code://"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v8, v4, -0x1

    invoke-virtual {p1, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v3, v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 482
    .restart local v3    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 483
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 484
    .local v1, "action":Ljava/lang/String;
    const-string v5, "SpecialCharSequenceMgr"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Send Intent for Keystring: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    const-string v5, "SpecialCharSequenceMgr"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Intent Data: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    .line 486
    goto/16 :goto_0

    .line 489
    .end local v1    # "action":Ljava/lang/String;
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_3
    if-le v4, v12, :cond_6

    invoke-static {p1}, Lcom/android/contacts/SpecialCharSequenceMgr;->IsKeystringBlockList(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    invoke-static {p1}, Lcom/android/contacts/SpecialCharSequenceMgr;->IsPersoKeyString(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 490
    const-string v5, "SpecialCharSequenceMgr"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "perso key entered"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    const-string v5, "*#"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 493
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.provider.Telephony.SECRET_CODE"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "android_perso_get_status_code://"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v8, v4, -0x1

    invoke-virtual {p1, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v3, v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 495
    .restart local v3    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :goto_1
    move v5, v6

    .line 506
    goto/16 :goto_0

    .line 496
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_4
    const-string v5, "*"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 497
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.provider.Telephony.SECRET_CODE"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "android_perso_lock_code://"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v8, v4, -0x1

    invoke-virtual {p1, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v3, v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 499
    .restart local v3    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 501
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_5
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.provider.Telephony.SECRET_CODE"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "android_perso_unlock_code://"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v8, v4, -0x1

    invoke-virtual {p1, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v3, v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 503
    .restart local v3    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 507
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_6
    if-le v4, v12, :cond_9

    invoke-static {p1}, Lcom/android/contacts/SpecialCharSequenceMgr;->IsKeystringBlockList(Ljava/lang/String;)Z

    move-result v5

    if-ne v5, v6, :cond_9

    invoke-static {}, Lcom/android/contacts/SpecialCharSequenceMgr;->isKeyStringBlocked()Z

    move-result v5

    if-nez v5, :cond_9

    invoke-static {p1}, Lcom/android/contacts/SpecialCharSequenceMgr;->IsPersoKeyString(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 509
    const-string v5, "SpecialCharSequenceMgr"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "perso key entered"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    const-string v5, "*#"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 512
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.provider.Telephony.SECRET_CODE"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "android_perso_get_status_code://"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v8, v4, -0x1

    invoke-virtual {p1, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v3, v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 514
    .restart local v3    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :goto_2
    move v5, v6

    .line 527
    goto/16 :goto_0

    .line 515
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_7
    const-string v5, "*"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 516
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.provider.Telephony.SECRET_CODE"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "android_perso_lock_code://"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v8, v4, -0x1

    invoke-virtual {p1, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v3, v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 518
    .restart local v3    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 519
    const-string v5, "SpecialCharSequenceMgr"

    const-string v7, "Intent sent!"

    invoke-static {v5, v7}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 521
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_8
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.provider.Telephony.SECRET_CODE"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "android_perso_unlock_code://"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v8, v4, -0x1

    invoke-virtual {p1, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v3, v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 523
    .restart local v3    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 524
    const-string v5, "SpecialCharSequenceMgr"

    const-string v7, "Intent sent!"

    invoke-static {v5, v7}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 528
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_9
    if-le v4, v12, :cond_c

    invoke-static {p1}, Lcom/android/contacts/SpecialCharSequenceMgr;->IsKeystringBlockList(Ljava/lang/String;)Z

    move-result v5

    if-ne v5, v6, :cond_c

    invoke-static {}, Lcom/android/contacts/SpecialCharSequenceMgr;->isKeyStringBlocked()Z

    move-result v5

    if-ne v5, v6, :cond_c

    sget-boolean v5, Lcom/android/contacts/SpecialCharSequenceMgr;->IskeystringEnaled:Z

    if-ne v5, v6, :cond_c

    invoke-static {p1}, Lcom/android/contacts/SpecialCharSequenceMgr;->IsPersoKeyString(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 530
    const-string v5, "SpecialCharSequenceMgr"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "perso key entered"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    const-string v5, "*#"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 533
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.provider.Telephony.SECRET_CODE"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "android_perso_get_status_code://"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v8, v4, -0x1

    invoke-virtual {p1, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v3, v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 535
    .restart local v3    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :goto_3
    move v5, v6

    .line 546
    goto/16 :goto_0

    .line 536
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_a
    const-string v5, "*"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 537
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.provider.Telephony.SECRET_CODE"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "android_perso_lock_code://"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v8, v4, -0x1

    invoke-virtual {p1, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v3, v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 539
    .restart local v3    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_3

    .line 541
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_b
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.provider.Telephony.SECRET_CODE"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "android_perso_unlock_code://"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v8, v4, -0x1

    invoke-virtual {p1, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v3, v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 543
    .restart local v3    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_3

    .line 549
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_c
    if-le v4, v10, :cond_d

    invoke-static {p1}, Lcom/android/contacts/SpecialCharSequenceMgr;->IsKeystringBlockList(Ljava/lang/String;)Z

    move-result v5

    if-ne v5, v6, :cond_d

    invoke-static {}, Lcom/android/contacts/SpecialCharSequenceMgr;->isKeyStringBlocked()Z

    move-result v5

    if-nez v5, :cond_d

    .line 551
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.provider.Telephony.SECRET_CODE"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "android_secret_code://"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v8, v4, -0x1

    invoke-virtual {p1, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v3, v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 553
    .restart local v3    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    move v5, v6

    .line 554
    goto/16 :goto_0

    .line 557
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_d
    if-le v4, v10, :cond_e

    invoke-static {p1}, Lcom/android/contacts/SpecialCharSequenceMgr;->IsKeystringBlockList(Ljava/lang/String;)Z

    move-result v5

    if-ne v5, v6, :cond_e

    invoke-static {}, Lcom/android/contacts/SpecialCharSequenceMgr;->isKeyStringBlocked()Z

    move-result v5

    if-ne v5, v6, :cond_e

    sget-boolean v5, Lcom/android/contacts/SpecialCharSequenceMgr;->IskeystringEnaled:Z

    if-ne v5, v6, :cond_e

    .line 559
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.provider.Telephony.SECRET_CODE"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "android_secret_code://"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v8, v4, -0x1

    invoke-virtual {p1, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v3, v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 561
    .restart local v3    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    move v5, v6

    .line 562
    goto/16 :goto_0

    .line 575
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_e
    const/16 v5, 0xc

    if-le v4, v5, :cond_f

    invoke-static {p1}, Lcom/android/contacts/SpecialCharSequenceMgr;->IsKeystringBlockList(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_f

    invoke-static {p1}, Lcom/android/contacts/SpecialCharSequenceMgr;->IsSellOutKeyString(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 576
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.provider.Telephony.SECRET_CODE"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "android_secret_code://"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v8, v4, -0x1

    invoke-virtual {p1, v11, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v3, v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 578
    .restart local v3    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    move v5, v6

    .line 579
    goto/16 :goto_0

    .line 580
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_f
    const/16 v5, 0xc

    if-le v4, v5, :cond_10

    invoke-static {p1}, Lcom/android/contacts/SpecialCharSequenceMgr;->IsKeystringBlockList(Ljava/lang/String;)Z

    move-result v5

    if-ne v5, v6, :cond_10

    invoke-static {}, Lcom/android/contacts/SpecialCharSequenceMgr;->isKeyStringBlocked()Z

    move-result v5

    if-nez v5, :cond_10

    invoke-static {p1}, Lcom/android/contacts/SpecialCharSequenceMgr;->IsSellOutKeyString(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 582
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.provider.Telephony.SECRET_CODE"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "android_secret_code://"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v8, v4, -0x1

    invoke-virtual {p1, v11, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v3, v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 584
    .restart local v3    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    move v5, v6

    .line 585
    goto/16 :goto_0

    .line 586
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_10
    const/16 v5, 0xc

    if-le v4, v5, :cond_11

    invoke-static {p1}, Lcom/android/contacts/SpecialCharSequenceMgr;->IsKeystringBlockList(Ljava/lang/String;)Z

    move-result v5

    if-ne v5, v6, :cond_11

    invoke-static {}, Lcom/android/contacts/SpecialCharSequenceMgr;->isKeyStringBlocked()Z

    move-result v5

    if-ne v5, v6, :cond_11

    sget-boolean v5, Lcom/android/contacts/SpecialCharSequenceMgr;->IskeystringEnaled:Z

    if-ne v5, v6, :cond_11

    invoke-static {p1}, Lcom/android/contacts/SpecialCharSequenceMgr;->IsSellOutKeyString(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 588
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.provider.Telephony.SECRET_CODE"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "android_secret_code://"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v8, v4, -0x1

    invoke-virtual {p1, v11, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v3, v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 590
    .restart local v3    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    move v5, v6

    .line 591
    goto/16 :goto_0

    .line 595
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_11
    const/4 v5, 0x0

    goto/16 :goto_0
.end method

.method static handleTestmodeSecretCodeVendor(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 376
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 377
    .local v3, "len":I
    const/4 v2, -0x1

    .line 378
    .local v2, "keyStringIndex":I
    const-string v5, "ro.build.product"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 380
    .local v4, "projectName":Ljava/lang/String;
    const-string v5, "d2vzw"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "m3vzw"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "jaspervzw"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 381
    :cond_0
    invoke-static {p1}, Lcom/android/contacts/SpecialCharSequenceMgr;->getIndexKeyStringVZW(Ljava/lang/String;)I

    move-result v2

    .line 385
    :cond_1
    :goto_0
    const/4 v5, 0x3

    if-le v3, v5, :cond_4

    const/4 v5, -0x1

    if-le v2, v5, :cond_4

    .line 386
    const-string v5, "SpecialCharSequenceMgr"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LTE Keystring "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/contacts/SpecialCharSequenceMgr;->keystring_vzw:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.provider.Telephony.SECRET_CODE"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "android_secret_code://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/contacts/SpecialCharSequenceMgr;->intentNameVendor:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 389
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 390
    .local v0, "action":Ljava/lang/String;
    const-string v5, "SpecialCharSequenceMgr"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Send Intent for Keystring: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    const-string v5, "SpecialCharSequenceMgr"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Intent Data: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    const/4 v5, 0x1

    .line 395
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_1
    return v5

    .line 382
    :cond_2
    const-string v5, "d2spr"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "m3spr"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "goghspr"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 383
    :cond_3
    invoke-static {p1}, Lcom/android/contacts/SpecialCharSequenceMgr;->getIndexKeyStringSPR(Ljava/lang/String;)I

    move-result v2

    goto/16 :goto_0

    .line 395
    :cond_4
    const/4 v5, 0x0

    goto :goto_1
.end method

.method static isKeyStringBlocked()Z
    .locals 5

    .prologue
    .line 608
    const/4 v1, 0x0

    .line 610
    .local v1, "imeiBlocked":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string v3, "/factory/imei/keystr"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x20

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 614
    :goto_0
    const-string v2, "SpecialCharSequenceMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "keystr : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    const-string v2, "ON"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 616
    const-string v2, "SpecialCharSequenceMgr"

    const-string v3, "block is on"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    const/4 v2, 0x1

    .line 620
    :goto_1
    return v2

    .line 611
    :catch_0
    move-exception v0

    .line 612
    .local v0, "e1":Ljava/io/IOException;
    const-string v1, "OFF"

    goto :goto_0

    .line 619
    .end local v0    # "e1":Ljava/io/IOException;
    :cond_0
    const-string v2, "SpecialCharSequenceMgr"

    const-string v3, "block is off"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    const/4 v2, 0x0

    goto :goto_1
.end method

.method static showConfirmCPRMKeyPanel(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1366
    return-void
.end method

.method static showIMEIPanel(Landroid/content/Context;Z)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "useSystemWindow"    # Z

    .prologue
    .line 1370
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 1373
    .local v1, "imeiStr":Ljava/lang/String;
    const-string v3, "feature_att"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "feature_tmo"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1374
    :cond_0
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDeviceSoftwareVersion()Ljava/lang/String;

    move-result-object v2

    .line 1376
    .local v2, "imeisvStr":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1379
    .end local v2    # "imeisvStr":Ljava/lang/String;
    :cond_1
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0e0099

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1385
    .local v0, "alert":Landroid/app/AlertDialog;
    return-void
.end method

.method static showMEIDPanel(Landroid/content/Context;Z)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "useSystemWindow"    # Z

    .prologue
    .line 1388
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 1391
    .local v1, "meidStr":Ljava/lang/String;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0e009a

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1397
    .local v0, "alert":Landroid/app/AlertDialog;
    return-void
.end method
