.class public Lcom/sec/android/app/contacts/group/GroupInfo;
.super Ljava/lang/Object;
.source "GroupInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sec/android/app/contacts/group/GroupInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final accountName:Ljava/lang/String;

.field private final accountType:Ljava/lang/String;

.field private final dataSet:Ljava/lang/String;

.field private final groupId:J

.field private final systemId:Ljava/lang/String;

.field private final title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 116
    new-instance v0, Lcom/sec/android/app/contacts/group/GroupInfo$1;

    invoke-direct {v0}, Lcom/sec/android/app/contacts/group/GroupInfo$1;-><init>()V

    sput-object v0, Lcom/sec/android/app/contacts/group/GroupInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "accountType"    # Ljava/lang/String;
    .param p2, "accountName"    # Ljava/lang/String;
    .param p3, "dataSet"    # Ljava/lang/String;
    .param p4, "groupId"    # J
    .param p6, "title"    # Ljava/lang/String;
    .param p7, "systemId"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/sec/android/app/contacts/group/GroupInfo;->accountType:Ljava/lang/String;

    .line 44
    iput-object p2, p0, Lcom/sec/android/app/contacts/group/GroupInfo;->accountName:Ljava/lang/String;

    .line 45
    iput-object p3, p0, Lcom/sec/android/app/contacts/group/GroupInfo;->dataSet:Ljava/lang/String;

    .line 46
    iput-wide p4, p0, Lcom/sec/android/app/contacts/group/GroupInfo;->groupId:J

    .line 47
    iput-object p6, p0, Lcom/sec/android/app/contacts/group/GroupInfo;->title:Ljava/lang/String;

    .line 48
    iput-object p7, p0, Lcom/sec/android/app/contacts/group/GroupInfo;->systemId:Ljava/lang/String;

    .line 49
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 77
    instance-of v2, p1, Lcom/sec/android/app/contacts/group/GroupInfo;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 78
    check-cast v0, Lcom/sec/android/app/contacts/group/GroupInfo;

    .line 79
    .local v0, "otherGroupInfo":Lcom/sec/android/app/contacts/group/GroupInfo;
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupInfo;->accountType:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/group/GroupInfo;->getAccountType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupInfo;->accountName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/group/GroupInfo;->getAccountName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupInfo;->dataSet:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/group/GroupInfo;->getDataSet()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupInfo;->title:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/group/GroupInfo;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupInfo;->systemId:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/group/GroupInfo;->getSystemId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 86
    .end local v0    # "otherGroupInfo":Lcom/sec/android/app/contacts/group/GroupInfo;
    :cond_0
    return v1
.end method

.method public getAccountName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupInfo;->accountName:Ljava/lang/String;

    return-object v0
.end method

.method public getAccountType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupInfo;->accountType:Ljava/lang/String;

    return-object v0
.end method

.method public getDataSet()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupInfo;->dataSet:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupId()J
    .locals 2

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/sec/android/app/contacts/group/GroupInfo;->groupId:J

    return-wide v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupInfo;->systemId:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupInfo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 91
    const/16 v0, 0x11

    .line 92
    .local v0, "result":I
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupInfo;->accountType:Ljava/lang/String;

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    add-int/lit16 v0, v1, 0x20f

    .line 93
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupInfo;->accountName:Ljava/lang/String;

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    add-int v0, v3, v1

    .line 94
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupInfo;->dataSet:Ljava/lang/String;

    if-nez v1, :cond_2

    move v1, v2

    :goto_2
    add-int v0, v3, v1

    .line 95
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupInfo;->title:Ljava/lang/String;

    if-nez v1, :cond_3

    move v1, v2

    :goto_3
    add-int v0, v3, v1

    .line 96
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/sec/android/app/contacts/group/GroupInfo;->systemId:Ljava/lang/String;

    if-nez v3, :cond_4

    :goto_4
    add-int v0, v1, v2

    .line 97
    return v0

    .line 92
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupInfo;->accountType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    .line 93
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupInfo;->accountName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1

    .line 94
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupInfo;->dataSet:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_2

    .line 95
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupInfo;->title:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_3

    .line 96
    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupInfo;->systemId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_4
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 108
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupInfo;->accountName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupInfo;->accountType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupInfo;->dataSet:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 111
    iget-wide v0, p0, Lcom/sec/android/app/contacts/group/GroupInfo;->groupId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 112
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupInfo;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupInfo;->systemId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 114
    return-void
.end method
