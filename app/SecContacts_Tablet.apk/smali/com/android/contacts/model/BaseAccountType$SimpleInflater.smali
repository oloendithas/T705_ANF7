.class public Lcom/android/contacts/model/BaseAccountType$SimpleInflater;
.super Ljava/lang/Object;
.source "BaseAccountType.java"

# interfaces
.implements Lcom/android/contacts/model/AccountType$StringInflater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/model/BaseAccountType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleInflater"
.end annotation


# instance fields
.field private final mColumnName:Ljava/lang/String;

.field private final mStringRes:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "stringRes"    # I

    .prologue
    .line 556
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;-><init>(ILjava/lang/String;)V

    .line 557
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "stringRes"    # I
    .param p2, "columnName"    # Ljava/lang/String;

    .prologue
    .line 563
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 564
    iput p1, p0, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;->mStringRes:I

    .line 565
    iput-object p2, p0, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;->mColumnName:Ljava/lang/String;

    .line 566
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    .line 560
    const/4 v0, -0x1

    invoke-direct {p0, v0, p1}, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;-><init>(ILjava/lang/String;)V

    .line 561
    return-void
.end method


# virtual methods
.method public getColumnNameForTest()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/android/contacts/test/NeededForTesting;
    .end annotation

    .prologue
    .line 615
    iget-object v0, p0, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;->mColumnName:Ljava/lang/String;

    return-object v0
.end method

.method public inflateUsing(Landroid/content/Context;Landroid/content/ContentValues;)Ljava/lang/CharSequence;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 589
    iget-object v7, p0, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;->mColumnName:Ljava/lang/String;

    invoke-virtual {p2, v7}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    .line 590
    .local v2, "validColumn":Z
    iget v7, p0, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;->mStringRes:I

    if-lez v7, :cond_1

    move v3, v5

    .line 592
    .local v3, "validString":Z
    :goto_0
    if-eqz v3, :cond_2

    iget v7, p0, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;->mStringRes:I

    invoke-virtual {p1, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 593
    .local v1, "stringValue":Ljava/lang/CharSequence;
    :goto_1
    if-eqz v2, :cond_3

    iget-object v7, p0, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;->mColumnName:Ljava/lang/String;

    invoke-virtual {p2, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 595
    .local v0, "columnValue":Ljava/lang/CharSequence;
    :goto_2
    if-eqz v3, :cond_4

    if-eqz v2, :cond_4

    .line 596
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 602
    .end local v1    # "stringValue":Ljava/lang/CharSequence;
    :cond_0
    :goto_3
    return-object v1

    .end local v0    # "columnValue":Ljava/lang/CharSequence;
    .end local v3    # "validString":Z
    :cond_1
    move v3, v6

    .line 590
    goto :goto_0

    .restart local v3    # "validString":Z
    :cond_2
    move-object v1, v4

    .line 592
    goto :goto_1

    .restart local v1    # "stringValue":Ljava/lang/CharSequence;
    :cond_3
    move-object v0, v4

    .line 593
    goto :goto_2

    .line 597
    .restart local v0    # "columnValue":Ljava/lang/CharSequence;
    :cond_4
    if-nez v3, :cond_0

    .line 599
    if-eqz v2, :cond_5

    move-object v1, v0

    .line 600
    goto :goto_3

    :cond_5
    move-object v1, v4

    .line 602
    goto :goto_3
.end method

.method public inflateUsing(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 570
    iget-object v9, p0, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;->mColumnName:Ljava/lang/String;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;->mColumnName:Ljava/lang/String;

    invoke-interface {p2, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 571
    .local v1, "index":I
    :goto_0
    iget v9, p0, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;->mStringRes:I

    if-lez v9, :cond_2

    move v4, v7

    .line 572
    .local v4, "validString":Z
    :goto_1
    if-eq v1, v5, :cond_3

    move v3, v7

    .line 574
    .local v3, "validColumn":Z
    :goto_2
    if-eqz v4, :cond_4

    iget v5, p0, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;->mStringRes:I

    invoke-virtual {p1, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 575
    .local v2, "stringValue":Ljava/lang/CharSequence;
    :goto_3
    if-eqz v3, :cond_5

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 577
    .local v0, "columnValue":Ljava/lang/CharSequence;
    :goto_4
    if-eqz v4, :cond_6

    if-eqz v3, :cond_6

    .line 578
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    aput-object v0, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 584
    .end local v2    # "stringValue":Ljava/lang/CharSequence;
    :cond_0
    :goto_5
    return-object v2

    .end local v0    # "columnValue":Ljava/lang/CharSequence;
    .end local v1    # "index":I
    .end local v3    # "validColumn":Z
    .end local v4    # "validString":Z
    :cond_1
    move v1, v5

    .line 570
    goto :goto_0

    .restart local v1    # "index":I
    :cond_2
    move v4, v8

    .line 571
    goto :goto_1

    .restart local v4    # "validString":Z
    :cond_3
    move v3, v8

    .line 572
    goto :goto_2

    .restart local v3    # "validColumn":Z
    :cond_4
    move-object v2, v6

    .line 574
    goto :goto_3

    .restart local v2    # "stringValue":Ljava/lang/CharSequence;
    :cond_5
    move-object v0, v6

    .line 575
    goto :goto_4

    .line 579
    .restart local v0    # "columnValue":Ljava/lang/CharSequence;
    :cond_6
    if-nez v4, :cond_0

    .line 581
    if-eqz v3, :cond_7

    move-object v2, v0

    .line 582
    goto :goto_5

    :cond_7
    move-object v2, v6

    .line 584
    goto :goto_5
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 608
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mStringRes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;->mStringRes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mColumnName"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;->mColumnName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
