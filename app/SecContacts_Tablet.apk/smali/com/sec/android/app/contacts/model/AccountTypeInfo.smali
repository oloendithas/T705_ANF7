.class public Lcom/sec/android/app/contacts/model/AccountTypeInfo;
.super Ljava/lang/Object;
.source "AccountTypeInfo.java"


# static fields
.field public static final ACCOUNT_ISP_SEVEN_AOL:Ljava/lang/String; = "aol"

.field public static final ACCOUNT_ISP_SEVEN_EE_WE:Ljava/lang/String; = "work"

.field public static final ACCOUNT_ISP_SEVEN_GMAIL:Ljava/lang/String; = "gmail"

.field public static final ACCOUNT_ISP_SEVEN_IMAP:Ljava/lang/String; = "imapisp"

.field public static final ACCOUNT_ISP_SEVEN_MSN:Ljava/lang/String; = "msn"

.field public static final ACCOUNT_ISP_SEVEN_TNET:Ljava/lang/String; = "tent"

.field public static final ACCOUNT_ISP_SEVEN_YAHOO:Ljava/lang/String; = "yahoo"

.field public static final ACCOUNT_NAME_AGG:Ljava/lang/String; = "vnd.sec.contact.agg.account_name"

.field public static final ACCOUNT_NAME_SIM:Ljava/lang/String; = "primary.sim.account_name"

.field public static final ACCOUNT_NAME_SIM2:Ljava/lang/String; = "primary.sim2.account_name"

.field public static final ACCOUNT_SELECT_AIM:Ljava/lang/String; = "AIM"

.field public static final ACCOUNT_SELECT_GOOGLE_TALK:Ljava/lang/String; = "Google Talk"

.field public static final ACCOUNT_SELECT_ICQ:Ljava/lang/String; = "ICQ"

.field public static final ACCOUNT_SELECT_JABBER:Ljava/lang/String; = "Jabber"

.field public static final ACCOUNT_SELECT_QQ:Ljava/lang/String; = "QQ"

.field public static final ACCOUNT_SELECT_SKYPE:Ljava/lang/String; = "Skype"

.field public static final ACCOUNT_SELECT_WINDOWS_LIEVE:Ljava/lang/String; = "Windows Live"

.field public static final ACCOUNT_SELECT_YAHOO:Ljava/lang/String; = "Yahoo"

.field public static final ACCOUNT_TYPE_AGG:Ljava/lang/String; = "vnd.sec.contact.agg.account_type"

.field public static final ACCOUNT_TYPE_AUID:Ljava/lang/String; = "com.kddi.ast.auoneid"

.field public static final ACCOUNT_TYPE_BUA:Ljava/lang/String; = "com.fusionone.android.sync.baclient.account"

.field public static final ACCOUNT_TYPE_CHATON:Ljava/lang/String; = "com.sec.chaton"

.field public static final ACCOUNT_TYPE_DCM:Ljava/lang/String; = "com.android.nttdocomo"

.field public static final ACCOUNT_TYPE_EXCHANGE:Ljava/lang/String; = "com.android.exchange"

.field public static final ACCOUNT_TYPE_FACEBOOK:Ljava/lang/String; = "com.sec.android.app.snsaccountfacebook.account_type"

.field public static final ACCOUNT_TYPE_FACEBOOK_JPN:Ljava/lang/String; = "com.facebook.auth.login"

.field public static final ACCOUNT_TYPE_GOOGLE:Ljava/lang/String; = "com.google"

.field public static final ACCOUNT_TYPE_LDAP:Ljava/lang/String; = "com.android.ldap"

.field public static final ACCOUNT_TYPE_LDAP_KNOX:Ljava/lang/String; = "sec_container_1.com.android.ldap"

.field public static final ACCOUNT_TYPE_LINKEDIN:Ljava/lang/String; = "com.sec.android.app.snsaccountlinkedin.account_type"

.field public static final ACCOUNT_TYPE_ME2DAY:Ljava/lang/String; = "com.sec.android.app.snsaccountme2day.account_type"

.field public static final ACCOUNT_TYPE_MIXI:Ljava/lang/String; = "com.sec.android.app.snsaccountmixi.account_type"

.field public static final ACCOUNT_TYPE_MSN:Ljava/lang/String; = "com.seven.Z7.msn"

.field public static final ACCOUNT_TYPE_MYPHONEBOOK:Ljava/lang/String; = "com.android.tmo_myphonebook"

.field public static final ACCOUNT_TYPE_MYPROFILE:Ljava/lang/String; = "vnd.sec.contact.my_profile"

.field public static final ACCOUNT_TYPE_MYSPACE:Ljava/lang/String; = "com.sec.android.app.snsaccountmyspace.account_type"

.field public static final ACCOUNT_TYPE_PHONE:Ljava/lang/String; = "vnd.sec.contact.phone"

.field public static final ACCOUNT_TYPE_PHONE_KNOX:Ljava/lang/String; = "vnd.sec.contact.phone_knox"

.field public static final ACCOUNT_TYPE_PHONE_KNOX2:Ljava/lang/String; = "vnd.sec.contact.phone_knox2"

.field public static final ACCOUNT_TYPE_PHONE_PERSONAL:Ljava/lang/String; = "vnd.sec.contact.phone_personal"

.field public static final ACCOUNT_TYPE_QIK:Ljava/lang/String; = "com.qik.android.account"

.field public static final ACCOUNT_TYPE_QZONE:Ljava/lang/String; = "com.qzone.account"

.field public static final ACCOUNT_TYPE_SEVEN_EXCHANGE:Ljava/lang/String; = "com.seven.Z7.work"

.field public static final ACCOUNT_TYPE_SEVEN_GOOGLE:Ljava/lang/String; = "com.seven.Z7.gmail"

.field public static final ACCOUNT_TYPE_SEVEN_Z7:Ljava/lang/String; = "com.seven.Z7"

.field public static final ACCOUNT_TYPE_SIM:Ljava/lang/String; = "vnd.sec.contact.sim"

.field public static final ACCOUNT_TYPE_SIM2:Ljava/lang/String; = "vnd.sec.contact.sim2"

.field public static final ACCOUNT_TYPE_SKYPE_JPN:Ljava/lang/String; = "com.skype.contacts.sync"

.field public static final ACCOUNT_TYPE_TMO:Ljava/lang/String; = "vnd.tmobileus.contact.phone"

.field public static final ACCOUNT_TYPE_TWITTER:Ljava/lang/String; = "com.sec.android.app.snsaccounttwitter.account_type"

.field public static final ACCOUNT_TYPE_TWITTER_JPN:Ljava/lang/String; = "com.twitter.android.auth.login"

.field public static final ACCOUNT_TYPE_V_APP:Ljava/lang/String; = "com.coolots.chaton"

.field public static final ACCOUNT_TYPE_WECHAT:Ljava/lang/String; = "com.tencent.mm.account"

.field public static final ACCOUNT_TYPE_YAHOO:Ljava/lang/String; = "com.seven.Z7.yahoo"

.field private static mAccountsType:Lcom/sec/android/app/contacts/model/AccountTypeInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/contacts/model/AccountTypeInfo;->mAccountsType:Lcom/sec/android/app/contacts/model/AccountTypeInfo;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    return-void
.end method

.method public static getAccountTypeConstants()Lcom/sec/android/app/contacts/model/AccountTypeInfo;
    .locals 1

    .prologue
    .line 100
    sget-object v0, Lcom/sec/android/app/contacts/model/AccountTypeInfo;->mAccountsType:Lcom/sec/android/app/contacts/model/AccountTypeInfo;

    if-nez v0, :cond_0

    .line 101
    new-instance v0, Lcom/sec/android/app/contacts/model/AccountTypeInfo;

    invoke-direct {v0}, Lcom/sec/android/app/contacts/model/AccountTypeInfo;-><init>()V

    sput-object v0, Lcom/sec/android/app/contacts/model/AccountTypeInfo;->mAccountsType:Lcom/sec/android/app/contacts/model/AccountTypeInfo;

    .line 103
    :cond_0
    sget-object v0, Lcom/sec/android/app/contacts/model/AccountTypeInfo;->mAccountsType:Lcom/sec/android/app/contacts/model/AccountTypeInfo;

    return-object v0
.end method

.method public static isDeviceLocalAccount(Ljava/lang/String;)Z
    .locals 2
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 139
    if-nez p0, :cond_1

    .line 147
    :cond_0
    :goto_0
    return v0

    .line 141
    :cond_1
    const-string v1, "vnd.sec.contact.phone"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "vnd.sec.contact.sim"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "vnd.sec.contact.sim2"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "vnd.sec.contact.my_profile"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 145
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isPhonePersonalAccount(Ljava/lang/String;)Z
    .locals 2
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 163
    if-nez p0, :cond_1

    .line 168
    :cond_0
    :goto_0
    return v0

    .line 165
    :cond_1
    const-string v1, "vnd.sec.contact.phone_personal"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isSimAccount(Ljava/lang/String;)Z
    .locals 2
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 152
    if-nez p0, :cond_1

    .line 158
    :cond_0
    :goto_0
    return v0

    .line 154
    :cond_1
    const-string v1, "vnd.sec.contact.sim"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "vnd.sec.contact.sim2"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 156
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isSnsAccount(Ljava/lang/String;)Z
    .locals 2
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 123
    if-nez p0, :cond_1

    .line 134
    :cond_0
    :goto_0
    return v0

    .line 127
    :cond_1
    const-string v1, "com.sec.android.app.snsaccountfacebook.account_type"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.sec.android.app.snsaccountme2day.account_type"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.sec.android.app.snsaccounttwitter.account_type"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.sec.android.app.snsaccountmyspace.account_type"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.sec.android.app.snsaccountlinkedin.account_type"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 132
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public isWebAccount(Ljava/lang/String;)Z
    .locals 2
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 107
    if-nez p1, :cond_1

    .line 118
    :cond_0
    :goto_0
    return v0

    .line 109
    :cond_1
    const-string v1, "com.android.exchange"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.google"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.seven.Z7.msn"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.seven.Z7.work"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.seven.Z7.gmail"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.seven.Z7.yahoo"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "vnd.tmobileus.contact.phone"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 116
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method
