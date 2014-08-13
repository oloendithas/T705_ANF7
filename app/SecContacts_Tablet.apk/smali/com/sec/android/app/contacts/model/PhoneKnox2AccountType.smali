.class public Lcom/sec/android/app/contacts/model/PhoneKnox2AccountType;
.super Lcom/android/contacts/model/FallbackAccountType;
.source "PhoneKnox2AccountType.java"


# static fields
.field public static final ACCOUNT_NAME:Ljava/lang/String; = "vnd.sec.contact.phone_knox101"

.field public static final ACCOUNT_TYPE:Ljava/lang/String; = "vnd.sec.contact.phone_knox2"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resPackageName"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/model/FallbackAccountType;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 17
    const-string v0, "vnd.sec.contact.phone_knox2"

    iput-object v0, p0, Lcom/android/contacts/model/AccountType;->accountType:Ljava/lang/String;

    .line 18
    const v0, 0x7f0e0132

    iput v0, p0, Lcom/android/contacts/model/AccountType;->titleRes:I

    .line 19
    const v0, 0x7f02080e

    iput v0, p0, Lcom/android/contacts/model/AccountType;->iconRes:I

    .line 20
    return-void
.end method


# virtual methods
.method public areContactsWritable()Z
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    return v0
.end method
