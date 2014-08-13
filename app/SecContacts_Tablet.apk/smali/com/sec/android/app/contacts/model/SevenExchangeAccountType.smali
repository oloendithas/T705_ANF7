.class public Lcom/sec/android/app/contacts/model/SevenExchangeAccountType;
.super Lcom/android/contacts/model/FallbackAccountType;
.source "SevenExchangeAccountType.java"


# static fields
.field public static final ACCOUNT_TYPE:Ljava/lang/String; = "sec_container_1.com.seven.Z7.work"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resPackageName"    # Ljava/lang/String;

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/model/FallbackAccountType;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 13
    const-string v0, "sec_container_1.com.seven.Z7.work"

    iput-object v0, p0, Lcom/android/contacts/model/AccountType;->accountType:Ljava/lang/String;

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/model/AccountType;->resourcePackageName:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/android/contacts/model/AccountType;->syncAdapterPackageName:Ljava/lang/String;

    .line 16
    return-void
.end method


# virtual methods
.method public areContactsWritable()Z
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x1

    return v0
.end method
