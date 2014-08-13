.class public Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;
.super Ljava/lang/Object;
.source "CategoryServiceInternal.java"

# interfaces
.implements Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionary;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/internal/CategoryServiceInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AddonDictionaryImpl"
.end annotation


# instance fields
.field private final category:Ljava/lang/String;

.field private final dictionary:Ljava/lang/String;

.field private final id:I

.field private final language:I

.field private final name:Ljava/lang/String;

.field private revertStatus:Ljava/lang/String;

.field private status:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "dictionary"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "category"    # Ljava/lang/String;
    .param p5, "language"    # I

    .prologue
    .line 496
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 497
    iput p2, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;->id:I

    .line 498
    iput-object p3, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;->name:Ljava/lang/String;

    .line 499
    iput-object p4, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;->category:Ljava/lang/String;

    .line 500
    iput p5, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;->language:I

    .line 501
    iput-object p1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;->dictionary:Ljava/lang/String;

    .line 502
    return-void
.end method


# virtual methods
.method download()V
    .locals 1

    .prologue
    .line 565
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;->status:Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;->revertStatus:Ljava/lang/String;

    .line 566
    const-string v0, "STATUS_DOWNLOADING"

    iput-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;->status:Ljava/lang/String;

    .line 567
    return-void
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 511
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;->category:Ljava/lang/String;

    return-object v0
.end method

.method public getDictionary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 553
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;->dictionary:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 521
    iget v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;->id:I

    return v0
.end method

.method public getLanguage()I
    .locals 1

    .prologue
    .line 516
    iget v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;->language:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 506
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 525
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;->status:Ljava/lang/String;

    return-object v0
.end method

.method public hasUpdate()Z
    .locals 2

    .prologue
    .line 548
    const-string v0, "STATUS_INSTALLED_WITH_UPDATE"

    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isInstalled()Z
    .locals 2

    .prologue
    .line 542
    const-string v0, "STATUS_INSTALLED"

    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "STATUS_INSTALLED_WITH_UPDATE"

    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSubscribed()Z
    .locals 2

    .prologue
    .line 537
    const-string v0, "STATUS_AVAILABLE"

    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method revert()V
    .locals 1

    .prologue
    .line 557
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;->revertStatus:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 558
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;->revertStatus:Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;->status:Ljava/lang/String;

    .line 562
    :goto_0
    return-void

    .line 560
    :cond_0
    const-string v0, "STATUS_AVAILABLE"

    iput-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;->status:Ljava/lang/String;

    goto :goto_0
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 1
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 529
    if-eqz p1, :cond_0

    const-string v0, "STATUS_UNINSTALL_PENDING"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 530
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;->revertStatus:Ljava/lang/String;

    .line 532
    :cond_0
    iput-object p1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;->status:Ljava/lang/String;

    .line 533
    return-void
.end method

.method wasInstalled()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 570
    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;->revertStatus:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 571
    const-string v1, "STATUS_INSTALLED"

    iget-object v2, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;->revertStatus:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "STATUS_INSTALLED_WITH_UPDATE"

    iget-object v2, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;->revertStatus:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 574
    :cond_1
    return v0
.end method
