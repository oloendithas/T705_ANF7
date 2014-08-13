.class public Lcom/sec/android/app/contacts/util/ContactsUtilDsds;
.super Ljava/lang/Object;
.source "ContactsUtilDsds.java"


# static fields
.field public static final SIM_SLOT_1:I = 0x0

.field public static final SIM_SLOT_2:I = 0x1

.field private static TAG:Ljava/lang/String;


# instance fields
.field public final NAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const-string v0, "ContactsUtilDsds"

    sput-object v0, Lcom/sec/android/app/contacts/util/ContactsUtilDsds;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const-string v0, "DSDS"

    iput-object v0, p0, Lcom/sec/android/app/contacts/util/ContactsUtilDsds;->NAME:Ljava/lang/String;

    return-void
.end method

.method public static getAdnLikesInfo(II)[I
    .locals 2
    .param p0, "efid"    # I
    .param p1, "simId"    # I

    .prologue
    .line 103
    sget-object v0, Lcom/sec/android/app/contacts/util/ContactsUtilDsds;->TAG:Ljava/lang/String;

    const-string v1, "[DS] getAdnLikesInfo : temp"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getAdnLikesSimStatusInfo(II)I
    .locals 2
    .param p0, "efid"    # I
    .param p1, "simId"    # I

    .prologue
    .line 83
    sget-object v0, Lcom/sec/android/app/contacts/util/ContactsUtilDsds;->TAG:Ljava/lang/String;

    const-string v1, "[DS] getAdnLikesSimStatusInfo : temp"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public static getAdnUri(I)Ljava/lang/String;
    .locals 2
    .param p0, "simId"    # I

    .prologue
    .line 63
    sget-object v0, Lcom/sec/android/app/contacts/util/ContactsUtilDsds;->TAG:Ljava/lang/String;

    const-string v1, "[DS] getAdnUri : temp"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    const-string v0, ""

    return-object v0
.end method

.method public static getCompleteVoiceMailNumber(I)Ljava/lang/String;
    .locals 2
    .param p0, "simId"    # I

    .prologue
    .line 113
    sget-object v0, Lcom/sec/android/app/contacts/util/ContactsUtilDsds;->TAG:Ljava/lang/String;

    const-string v1, "[DS] getCompleteVoiceMailNumber : temp"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const-string v0, ""

    return-object v0
.end method

.method public static getDefaultSimForVoiceCalls()I
    .locals 2

    .prologue
    .line 118
    sget-object v0, Lcom/sec/android/app/contacts/util/ContactsUtilDsds;->TAG:Ljava/lang/String;

    const-string v1, "[DS] getDefaultSimForVoiceCalls()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    const/4 v0, 0x0

    return v0
.end method

.method public static getIccFdnEnabled(I)Z
    .locals 2
    .param p0, "simId"    # I

    .prologue
    .line 88
    sget-object v0, Lcom/sec/android/app/contacts/util/ContactsUtilDsds;->TAG:Ljava/lang/String;

    const-string v1, "[DS] getIccFdnEnabled : temp"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method public static getLine1Number(I)Ljava/lang/String;
    .locals 2
    .param p0, "simId"    # I

    .prologue
    .line 78
    sget-object v0, Lcom/sec/android/app/contacts/util/ContactsUtilDsds;->TAG:Ljava/lang/String;

    const-string v1, "[DS] getLine1Number : temp"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    const-string v0, ""

    return-object v0
.end method

.method public static getSdnUri(I)Ljava/lang/String;
    .locals 2
    .param p0, "simId"    # I

    .prologue
    .line 68
    sget-object v0, Lcom/sec/android/app/contacts/util/ContactsUtilDsds;->TAG:Ljava/lang/String;

    const-string v1, "[DS] getSdnUri : temp"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    const-string v0, ""

    return-object v0
.end method

.method public static getSimState(I)I
    .locals 2
    .param p0, "simId"    # I

    .prologue
    .line 73
    sget-object v0, Lcom/sec/android/app/contacts/util/ContactsUtilDsds;->TAG:Ljava/lang/String;

    const-string v1, "[DS] getSimState : temp"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method public static getUsimPBCapaInfo(I)Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;
    .locals 2
    .param p0, "simId"    # I

    .prologue
    .line 108
    sget-object v0, Lcom/sec/android/app/contacts/util/ContactsUtilDsds;->TAG:Ljava/lang/String;

    const-string v1, "[DS] getUsimPBCapaInfo : temp"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    const/4 v0, 0x0

    return-object v0
.end method

.method public static hasIccCard()Z
    .locals 2

    .prologue
    .line 93
    sget-object v0, Lcom/sec/android/app/contacts/util/ContactsUtilDsds;->TAG:Ljava/lang/String;

    const-string v1, "[DS] hasIccCard : temp"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method public static hasIccCard(I)Z
    .locals 2
    .param p0, "simId"    # I

    .prologue
    .line 98
    sget-object v0, Lcom/sec/android/app/contacts/util/ContactsUtilDsds;->TAG:Ljava/lang/String;

    const-string v1, "[DS] hasIccCard : temp"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    const/4 v0, 0x0

    return v0
.end method
