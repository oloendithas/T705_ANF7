.class public Lcom/android/contacts/model/AccountType$EditType;
.super Ljava/lang/Object;
.source "AccountType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/model/AccountType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EditType"
.end annotation


# instance fields
.field public customColumn:Ljava/lang/String;

.field public labelRes:I

.field public rawValue:I

.field public secondary:Z

.field public specificMax:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "rawValue"    # I
    .param p2, "labelRes"    # I

    .prologue
    .line 379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 380
    iput p1, p0, Lcom/android/contacts/model/AccountType$EditType;->rawValue:I

    .line 381
    iput p2, p0, Lcom/android/contacts/model/AccountType$EditType;->labelRes:I

    .line 382
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/contacts/model/AccountType$EditType;->specificMax:I

    .line 383
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 402
    instance-of v2, p1, Lcom/android/contacts/model/AccountType$EditType;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 403
    check-cast v0, Lcom/android/contacts/model/AccountType$EditType;

    .line 404
    .local v0, "other":Lcom/android/contacts/model/AccountType$EditType;
    iget v2, v0, Lcom/android/contacts/model/AccountType$EditType;->rawValue:I

    iget v3, p0, Lcom/android/contacts/model/AccountType$EditType;->rawValue:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 406
    .end local v0    # "other":Lcom/android/contacts/model/AccountType$EditType;
    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 411
    iget v0, p0, Lcom/android/contacts/model/AccountType$EditType;->rawValue:I

    return v0
.end method

.method public setCustomColumn(Ljava/lang/String;)Lcom/android/contacts/model/AccountType$EditType;
    .locals 0
    .param p1, "customColumn"    # Ljava/lang/String;

    .prologue
    .line 396
    iput-object p1, p0, Lcom/android/contacts/model/AccountType$EditType;->customColumn:Ljava/lang/String;

    .line 397
    return-object p0
.end method

.method public setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;
    .locals 0
    .param p1, "secondary"    # Z

    .prologue
    .line 386
    iput-boolean p1, p0, Lcom/android/contacts/model/AccountType$EditType;->secondary:Z

    .line 387
    return-object p0
.end method

.method public setSpecificMax(I)Lcom/android/contacts/model/AccountType$EditType;
    .locals 0
    .param p1, "specificMax"    # I

    .prologue
    .line 391
    iput p1, p0, Lcom/android/contacts/model/AccountType$EditType;->specificMax:I

    .line 392
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 416
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " rawValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/contacts/model/AccountType$EditType;->rawValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " labelRes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/contacts/model/AccountType$EditType;->labelRes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " secondary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/contacts/model/AccountType$EditType;->secondary:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " specificMax="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/contacts/model/AccountType$EditType;->specificMax:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " customColumn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/model/AccountType$EditType;->customColumn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
