.class Lcom/android/contacts/SplitAggregateView$RawContactInfo;
.super Ljava/lang/Object;
.source "SplitAggregateView.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/SplitAggregateView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RawContactInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/contacts/SplitAggregateView$RawContactInfo;",
        ">;"
    }
.end annotation


# instance fields
.field accountType:Ljava/lang/String;

.field dataSet:Ljava/lang/String;

.field email:Ljava/lang/String;

.field name:Ljava/lang/String;

.field nickname:Ljava/lang/String;

.field phone:Ljava/lang/String;

.field final rawContactId:J


# direct methods
.method public constructor <init>(J)V
    .locals 0
    .param p1, "rawContactId"    # J

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iput-wide p1, p0, Lcom/android/contacts/SplitAggregateView$RawContactInfo;->rawContactId:J

    .line 129
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/contacts/SplitAggregateView$RawContactInfo;)I
    .locals 3
    .param p1, "another"    # Lcom/android/contacts/SplitAggregateView$RawContactInfo;

    .prologue
    .line 148
    iget-object v2, p0, Lcom/android/contacts/SplitAggregateView$RawContactInfo;->accountType:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/android/contacts/SplitAggregateView$RawContactInfo;->accountType:Ljava/lang/String;

    .line 149
    .local v1, "thisAccount":Ljava/lang/String;
    :goto_0
    iget-object v2, p1, Lcom/android/contacts/SplitAggregateView$RawContactInfo;->accountType:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v0, p1, Lcom/android/contacts/SplitAggregateView$RawContactInfo;->accountType:Ljava/lang/String;

    .line 150
    .local v0, "thatAccount":Ljava/lang/String;
    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    return v2

    .line 148
    .end local v0    # "thatAccount":Ljava/lang/String;
    .end local v1    # "thisAccount":Ljava/lang/String;
    :cond_0
    const-string v1, ""

    goto :goto_0

    .line 149
    .restart local v1    # "thisAccount":Ljava/lang/String;
    :cond_1
    const-string v0, ""

    goto :goto_1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 118
    check-cast p1, Lcom/android/contacts/SplitAggregateView$RawContactInfo;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/contacts/SplitAggregateView$RawContactInfo;->compareTo(Lcom/android/contacts/SplitAggregateView$RawContactInfo;)I

    move-result v0

    return v0
.end method

.method public getAdditionalData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/contacts/SplitAggregateView$RawContactInfo;->nickname:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/android/contacts/SplitAggregateView$RawContactInfo;->nickname:Ljava/lang/String;

    .line 144
    :goto_0
    return-object v0

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/SplitAggregateView$RawContactInfo;->email:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/android/contacts/SplitAggregateView$RawContactInfo;->email:Ljava/lang/String;

    goto :goto_0

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/SplitAggregateView$RawContactInfo;->phone:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 141
    iget-object v0, p0, Lcom/android/contacts/SplitAggregateView$RawContactInfo;->phone:Ljava/lang/String;

    goto :goto_0

    .line 144
    :cond_2
    const-string v0, ""

    goto :goto_0
.end method
