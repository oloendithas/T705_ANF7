.class public Lsstream/lib/objs/StoryItem;
.super Ljava/lang/Object;
.source "StoryItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsstream/lib/objs/StoryItem$StoryType;
    }
.end annotation


# instance fields
.field private appPackage:Ljava/lang/String;

.field private author:Lsstream/lib/objs/Author;

.field private body:Ljava/lang/String;

.field private category:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private image:Lsstream/lib/objs/Image;

.field private more:I

.field private source:Ljava/lang/String;

.field private streamId:Ljava/lang/String;

.field private timestamp:J

.field private title:Ljava/lang/String;

.field private type:Lsstream/lib/objs/StoryItem$StoryType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsstream/lib/objs/StoryItem$StoryType;Lsstream/lib/objs/Author;Lsstream/lib/objs/Image;JILjava/lang/String;)V
    .locals 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "streamId"    # Ljava/lang/String;
    .param p3, "category"    # Ljava/lang/String;
    .param p4, "appPackage"    # Ljava/lang/String;
    .param p5, "title"    # Ljava/lang/String;
    .param p6, "body"    # Ljava/lang/String;
    .param p7, "type"    # Lsstream/lib/objs/StoryItem$StoryType;
    .param p8, "author"    # Lsstream/lib/objs/Author;
    .param p9, "image"    # Lsstream/lib/objs/Image;
    .param p10, "timeStamp"    # J
    .param p12, "more"    # I
    .param p13, "source"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p4, :cond_1

    .line 69
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 71
    :cond_1
    const-string v1, "samsung.media"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "samsung.personal"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "samsung.here.and.now"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "flipboard.temporary.will.change.later.news"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "flipboard.temporary.will.change.later.social"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 72
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Not a valid streamId: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 74
    :cond_2
    iput-object p1, p0, Lsstream/lib/objs/StoryItem;->id:Ljava/lang/String;

    .line 75
    iput-object p2, p0, Lsstream/lib/objs/StoryItem;->streamId:Ljava/lang/String;

    .line 76
    iput-object p3, p0, Lsstream/lib/objs/StoryItem;->category:Ljava/lang/String;

    .line 77
    iput-object p4, p0, Lsstream/lib/objs/StoryItem;->appPackage:Ljava/lang/String;

    .line 78
    iput-object p8, p0, Lsstream/lib/objs/StoryItem;->author:Lsstream/lib/objs/Author;

    .line 79
    iput-object p5, p0, Lsstream/lib/objs/StoryItem;->title:Ljava/lang/String;

    .line 80
    iput-object p6, p0, Lsstream/lib/objs/StoryItem;->body:Ljava/lang/String;

    .line 81
    if-nez p7, :cond_3

    sget-object p7, Lsstream/lib/objs/StoryItem$StoryType;->ARTICLE:Lsstream/lib/objs/StoryItem$StoryType;

    .end local p7    # "type":Lsstream/lib/objs/StoryItem$StoryType;
    :cond_3
    iput-object p7, p0, Lsstream/lib/objs/StoryItem;->type:Lsstream/lib/objs/StoryItem$StoryType;

    .line 82
    iput-wide p10, p0, Lsstream/lib/objs/StoryItem;->timestamp:J

    .line 83
    iput-object p9, p0, Lsstream/lib/objs/StoryItem;->image:Lsstream/lib/objs/Image;

    .line 84
    move/from16 v0, p12

    iput v0, p0, Lsstream/lib/objs/StoryItem;->more:I

    .line 85
    move-object/from16 v0, p13

    iput-object v0, p0, Lsstream/lib/objs/StoryItem;->source:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsstream/lib/objs/StoryItem$StoryType;Lsstream/lib/objs/Author;Lsstream/lib/objs/Image;JILjava/lang/String;)V
    .locals 14
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "streamId"    # Ljava/lang/String;
    .param p3, "appPackage"    # Ljava/lang/String;
    .param p4, "title"    # Ljava/lang/String;
    .param p5, "body"    # Ljava/lang/String;
    .param p6, "type"    # Lsstream/lib/objs/StoryItem$StoryType;
    .param p7, "author"    # Lsstream/lib/objs/Author;
    .param p8, "image"    # Lsstream/lib/objs/Image;
    .param p9, "timeStamp"    # J
    .param p11, "more"    # I
    .param p12, "source"    # Ljava/lang/String;

    .prologue
    .line 63
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-wide/from16 v10, p9

    move/from16 v12, p11

    move-object/from16 v13, p12

    invoke-direct/range {v0 .. v13}, Lsstream/lib/objs/StoryItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsstream/lib/objs/StoryItem$StoryType;Lsstream/lib/objs/Author;Lsstream/lib/objs/Image;JILjava/lang/String;)V

    .line 64
    return-void
.end method

.method public static getTypeFromString(Ljava/lang/String;)Lsstream/lib/objs/StoryItem$StoryType;
    .locals 1
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    .line 170
    sget-object v0, Lsstream/lib/objs/StoryItem$StoryType;->CALENDAR:Lsstream/lib/objs/StoryItem$StoryType;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    sget-object v0, Lsstream/lib/objs/StoryItem$StoryType;->CALENDAR:Lsstream/lib/objs/StoryItem$StoryType;

    .line 177
    :goto_0
    return-object v0

    .line 172
    :cond_0
    sget-object v0, Lsstream/lib/objs/StoryItem$StoryType;->CALL:Lsstream/lib/objs/StoryItem$StoryType;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 173
    sget-object v0, Lsstream/lib/objs/StoryItem$StoryType;->CALL:Lsstream/lib/objs/StoryItem$StoryType;

    goto :goto_0

    .line 174
    :cond_1
    sget-object v0, Lsstream/lib/objs/StoryItem$StoryType;->MESSAGE:Lsstream/lib/objs/StoryItem$StoryType;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 175
    sget-object v0, Lsstream/lib/objs/StoryItem$StoryType;->MESSAGE:Lsstream/lib/objs/StoryItem$StoryType;

    goto :goto_0

    .line 177
    :cond_2
    sget-object v0, Lsstream/lib/objs/StoryItem$StoryType;->MESSAGE:Lsstream/lib/objs/StoryItem$StoryType;

    goto :goto_0
.end method


# virtual methods
.method public getAppPackage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lsstream/lib/objs/StoryItem;->appPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthor()Lsstream/lib/objs/Author;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lsstream/lib/objs/StoryItem;->author:Lsstream/lib/objs/Author;

    return-object v0
.end method

.method public getBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lsstream/lib/objs/StoryItem;->body:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsstream/lib/objs/StoryItem;->body:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lsstream/lib/objs/StoryItem;->category:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lsstream/lib/objs/StoryItem;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getImage()Lsstream/lib/objs/Image;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lsstream/lib/objs/StoryItem;->image:Lsstream/lib/objs/Image;

    return-object v0
.end method

.method public getMore()I
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lsstream/lib/objs/StoryItem;->more:I

    return v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lsstream/lib/objs/StoryItem;->source:Ljava/lang/String;

    return-object v0
.end method

.method public getStreamId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lsstream/lib/objs/StoryItem;->streamId:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 115
    iget-wide v0, p0, Lsstream/lib/objs/StoryItem;->timestamp:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lsstream/lib/objs/StoryItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lsstream/lib/objs/StoryItem$StoryType;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lsstream/lib/objs/StoryItem;->type:Lsstream/lib/objs/StoryItem$StoryType;

    return-object v0
.end method

.method public isValid()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 150
    iget-object v1, p0, Lsstream/lib/objs/StoryItem;->id:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lsstream/lib/objs/StoryItem;->streamId:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lsstream/lib/objs/StoryItem;->appPackage:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lsstream/lib/objs/StoryItem;->author:Lsstream/lib/objs/Author;

    if-nez v1, :cond_1

    .line 156
    :cond_0
    :goto_0
    return v0

    .line 153
    :cond_1
    iget-object v1, p0, Lsstream/lib/objs/StoryItem;->streamId:Ljava/lang/String;

    const-string v2, "samsung.media"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lsstream/lib/objs/StoryItem;->streamId:Ljava/lang/String;

    const-string v2, "samsung.personal"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lsstream/lib/objs/StoryItem;->streamId:Ljava/lang/String;

    const-string v2, "samsung.here.and.now"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lsstream/lib/objs/StoryItem;->streamId:Ljava/lang/String;

    const-string v2, "flipboard.temporary.will.change.later.news"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lsstream/lib/objs/StoryItem;->streamId:Ljava/lang/String;

    const-string v2, "flipboard.temporary.will.change.later.social"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 156
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 162
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lsstream/lib/objs/StoryItem;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    iget-object v1, p0, Lsstream/lib/objs/StoryItem;->image:Lsstream/lib/objs/Image;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lsstream/lib/objs/StoryItem;->image:Lsstream/lib/objs/Image;

    invoke-virtual {v1}, Lsstream/lib/objs/Image;->getLocation()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 164
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
