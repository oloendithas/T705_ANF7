.class public Landroid/telephony/MultiSimPhoneNumberUtils;
.super Landroid/telephony/PhoneNumberUtils;
.source "MultiSimPhoneNumberUtils.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "MultiSimPhoneNumberUtils"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 76
    invoke-direct {p0}, Landroid/telephony/PhoneNumberUtils;-><init>()V

    return-void
.end method

.method public static cdmaCheckAndProcessPlusCode(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3
    .param p0, "dialStr"    # Ljava/lang/String;
    .param p1, "simSlot"    # I

    .prologue
    .line 639
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->cdmaCheckAndProcessPlusCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getEmergencyServiceCategory(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "simSlot"    # I

    .prologue
    .line 296
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->getEmergencyServiceCategory(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNumberFromIntent(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 91
    invoke-static {p0, p1}, Landroid/telephony/PhoneNumberUtils;->getNumberFromIntent(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isEmergencyNumber(Ljava/lang/String;I)Z
    .registers 3
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "simSlot"    # I

    .prologue
    .line 272
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isEmergencyNumber(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 4
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "defaultCountryIso"    # Ljava/lang/String;
    .param p2, "simSlot"    # I

    .prologue
    .line 447
    invoke-static {p0, p1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static isEmergencyNumberInternal(Ljava/lang/String;Ljava/lang/String;ZI)Z
    .registers 5
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "defaultCountryIso"    # Ljava/lang/String;
    .param p2, "useExactMatch"    # Z
    .param p3, "simSlot"    # I

    .prologue
    .line 476
    invoke-static {p0, p1, p2}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumberInternal(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static isEmergencyNumberInternal(Ljava/lang/String;ZI)Z
    .registers 4
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "useExactMatch"    # Z
    .param p2, "simSlot"    # I

    .prologue
    .line 206
    invoke-static {p0, p1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumberInternal(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;I)Z
    .registers 4
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "simSlot"    # I

    .prologue
    .line 516
    invoke-static {p0, p1}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private static isLocalEmergencyNumberInternal(Ljava/lang/String;Landroid/content/Context;ZI)Z
    .registers 5
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "useExactMatch"    # Z
    .param p3, "simSlot"    # I

    .prologue
    .line 545
    invoke-static {p0, p1, p2}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumberInternal(Ljava/lang/String;Landroid/content/Context;Z)Z

    move-result v0

    return v0
.end method

.method public static isPotentialEmergencyNumber(Ljava/lang/String;I)Z
    .registers 3
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "simSlot"    # I

    .prologue
    .line 198
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isPotentialEmergencyNumber(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isPotentialEmergencyNumber(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 4
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "defaultCountryIso"    # Ljava/lang/String;
    .param p2, "simSlot"    # I

    .prologue
    .line 465
    invoke-static {p0, p1}, Landroid/telephony/PhoneNumberUtils;->isPotentialEmergencyNumber(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isPotentialLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;I)Z
    .registers 4
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "simSlot"    # I

    .prologue
    .line 534
    invoke-static {p0, p1}, Landroid/telephony/PhoneNumberUtils;->isPotentialLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static isVoiceMailNumber(Ljava/lang/String;)Z
    .registers 2
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 578
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isVoiceMailNumber(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isVoiceMailNumber(Ljava/lang/String;I)Z
    .registers 3
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "simSlot"    # I

    .prologue
    .line 609
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isVoiceMailNumber(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected static log(Ljava/lang/String;)V
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 658
    const-string v0, "MultiSimPhoneNumberUtils"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    return-void
.end method
