.class public Lcom/sec/android/app/dialertab/calllog/GroupCount;
.super Ljava/lang/Object;
.source "GroupCount.java"


# instance fields
.field private groupCount:I

.field private groupDates:[J

.field private groupIDs:[I

.field private groupMsgIDs:[Ljava/lang/String;

.field private groupMsgTypes:[I

.field private headerID:I


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "ID"    # I

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput p1, p0, Lcom/sec/android/app/dialertab/calllog/GroupCount;->headerID:I

    .line 29
    return-void
.end method

.method constructor <init>(I[II)V
    .locals 0
    .param p1, "ID"    # I
    .param p2, "IDs"    # [I
    .param p3, "count"    # I

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Lcom/sec/android/app/dialertab/calllog/GroupCount;->headerID:I

    .line 15
    iput-object p2, p0, Lcom/sec/android/app/dialertab/calllog/GroupCount;->groupIDs:[I

    .line 16
    iput p3, p0, Lcom/sec/android/app/dialertab/calllog/GroupCount;->groupCount:I

    .line 18
    return-void
.end method

.method constructor <init>(I[II[I[Ljava/lang/String;)V
    .locals 0
    .param p1, "ID"    # I
    .param p2, "IDs"    # [I
    .param p3, "count"    # I
    .param p4, "MsgTypes"    # [I
    .param p5, "MsgIDs"    # [Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p1, p0, Lcom/sec/android/app/dialertab/calllog/GroupCount;->headerID:I

    .line 34
    iput-object p2, p0, Lcom/sec/android/app/dialertab/calllog/GroupCount;->groupIDs:[I

    .line 35
    iput p3, p0, Lcom/sec/android/app/dialertab/calllog/GroupCount;->groupCount:I

    .line 36
    iput-object p4, p0, Lcom/sec/android/app/dialertab/calllog/GroupCount;->groupMsgTypes:[I

    .line 37
    iput-object p5, p0, Lcom/sec/android/app/dialertab/calllog/GroupCount;->groupMsgIDs:[Ljava/lang/String;

    .line 38
    return-void
.end method

.method constructor <init>(I[II[J)V
    .locals 0
    .param p1, "ID"    # I
    .param p2, "IDs"    # [I
    .param p3, "count"    # I
    .param p4, "dates"    # [J

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p1, p0, Lcom/sec/android/app/dialertab/calllog/GroupCount;->headerID:I

    .line 22
    iput-object p2, p0, Lcom/sec/android/app/dialertab/calllog/GroupCount;->groupIDs:[I

    .line 23
    iput p3, p0, Lcom/sec/android/app/dialertab/calllog/GroupCount;->groupCount:I

    .line 24
    iput-object p4, p0, Lcom/sec/android/app/dialertab/calllog/GroupCount;->groupDates:[J

    .line 25
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 68
    if-nez p1, :cond_1

    .line 74
    .end local p1    # "o":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 71
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    check-cast p1, Lcom/sec/android/app/dialertab/calllog/GroupCount;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/sec/android/app/dialertab/calllog/GroupCount;->getHeaderID()I

    move-result v1

    iget v2, p0, Lcom/sec/android/app/dialertab/calllog/GroupCount;->headerID:I

    if-ne v1, v2, :cond_0

    .line 72
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/sec/android/app/dialertab/calllog/GroupCount;->groupCount:I

    return v0
.end method

.method public getGroupDates()[J
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/GroupCount;->groupDates:[J

    return-object v0
.end method

.method public getGroupIDs()[I
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/GroupCount;->groupIDs:[I

    return-object v0
.end method

.method public getGroupMsgIDs()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/GroupCount;->groupMsgIDs:[Ljava/lang/String;

    return-object v0
.end method

.method public getGroupMsgType()[I
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/GroupCount;->groupMsgTypes:[I

    return-object v0
.end method

.method public getHeaderID()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/sec/android/app/dialertab/calllog/GroupCount;->headerID:I

    return v0
.end method
