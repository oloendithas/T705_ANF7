.class public Lcom/diotek/ime/framework/emoticon/EmoticonInfo;
.super Ljava/lang/Object;
.source "EmoticonInfo.java"


# instance fields
.field private mCategoryID:I

.field private mEmoticonCode:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "categoryID"    # I
    .param p2, "EmocitonCode"    # Ljava/lang/String;

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/4 v0, 0x0

    iput v0, p0, Lcom/diotek/ime/framework/emoticon/EmoticonInfo;->mCategoryID:I

    .line 6
    const-string v0, ""

    iput-object v0, p0, Lcom/diotek/ime/framework/emoticon/EmoticonInfo;->mEmoticonCode:Ljava/lang/String;

    .line 9
    iput p1, p0, Lcom/diotek/ime/framework/emoticon/EmoticonInfo;->mCategoryID:I

    .line 10
    iput-object p2, p0, Lcom/diotek/ime/framework/emoticon/EmoticonInfo;->mEmoticonCode:Ljava/lang/String;

    .line 11
    return-void
.end method


# virtual methods
.method public getCategoryID()I
    .locals 1

    .prologue
    .line 14
    iget v0, p0, Lcom/diotek/ime/framework/emoticon/EmoticonInfo;->mCategoryID:I

    return v0
.end method

.method public getEmoticonCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/diotek/ime/framework/emoticon/EmoticonInfo;->mEmoticonCode:Ljava/lang/String;

    return-object v0
.end method
