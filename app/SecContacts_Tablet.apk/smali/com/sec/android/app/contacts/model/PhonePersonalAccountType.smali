.class public Lcom/sec/android/app/contacts/model/PhonePersonalAccountType;
.super Lcom/android/contacts/model/FallbackAccountType;
.source "PhonePersonalAccountType.java"


# static fields
.field public static final ACCOUNT_NAME:Ljava/lang/String; = "vnd.sec.contact.phone_personal"

.field public static final ACCOUNT_TYPE:Ljava/lang/String; = "vnd.sec.contact.phone_personal"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resPackageName"    # Ljava/lang/String;

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/model/FallbackAccountType;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 15
    const-string v0, "vnd.sec.contact.phone_personal"

    iput-object v0, p0, Lcom/android/contacts/model/AccountType;->accountType:Ljava/lang/String;

    .line 16
    const v0, 0x7f030002

    iput v0, p0, Lcom/android/contacts/model/AccountType;->iconRes:I

    .line 17
    return-void
.end method


# virtual methods
.method public areContactsWritable()Z
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    return v0
.end method
