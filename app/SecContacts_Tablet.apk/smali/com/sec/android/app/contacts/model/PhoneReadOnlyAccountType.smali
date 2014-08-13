.class public Lcom/sec/android/app/contacts/model/PhoneReadOnlyAccountType;
.super Lcom/android/contacts/model/FallbackAccountType;
.source "PhoneReadOnlyAccountType.java"


# static fields
.field public static final DATA_SET:Ljava/lang/String; = "preload"

.field public static final LINK_ACCOUNT:Ljava/lang/String; = "vnd.sec.contact.phone/preload"

.field private static final TAG:Ljava/lang/String; = "PhoneReadOnlyAccountType"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resPackageName"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/model/FallbackAccountType;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 31
    const-string v0, "preload"

    iput-object v0, p0, Lcom/android/contacts/model/AccountType;->dataSet:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public static getSelectionClauseToExcludeProload()Ljava/lang/String;
    .locals 3

    .prologue
    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "link_accounts != \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "vnd.sec.contact.phone/preload"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public areContactsWritable()Z
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    return v0
.end method
