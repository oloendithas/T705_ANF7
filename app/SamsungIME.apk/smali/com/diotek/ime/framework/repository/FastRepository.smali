.class public Lcom/diotek/ime/framework/repository/FastRepository;
.super Ljava/lang/Object;
.source "FastRepository.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/diotek/ime/framework/repository/FastRepository$KeyStringFR;,
        Lcom/diotek/ime/framework/repository/FastRepository$KeyBooleanFR;,
        Lcom/diotek/ime/framework/repository/FastRepository$KeyIntFR;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/diotek/ime/framework/repository/FastRepository;


# instance fields
.field private mBooleanArray:[Z

.field private mIntegerArray:[I

.field private mStringArray:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5
    const/4 v0, 0x0

    sput-object v0, Lcom/diotek/ime/framework/repository/FastRepository;->sInstance:Lcom/diotek/ime/framework/repository/FastRepository;

    return-void
.end method

.method private constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-static {}, Lcom/diotek/ime/framework/repository/FastRepository$KeyIntFR;->values()[Lcom/diotek/ime/framework/repository/FastRepository$KeyIntFR;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    iput-object v4, p0, Lcom/diotek/ime/framework/repository/FastRepository;->mIntegerArray:[I

    .line 22
    invoke-static {}, Lcom/diotek/ime/framework/repository/FastRepository$KeyIntFR;->values()[Lcom/diotek/ime/framework/repository/FastRepository$KeyIntFR;

    move-result-object v0

    .local v0, "arr$":[Lcom/diotek/ime/framework/repository/FastRepository$KeyIntFR;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 23
    .local v1, "e":Lcom/diotek/ime/framework/repository/FastRepository$KeyIntFR;
    iget-object v4, p0, Lcom/diotek/ime/framework/repository/FastRepository;->mIntegerArray:[I

    invoke-virtual {v1}, Lcom/diotek/ime/framework/repository/FastRepository$KeyIntFR;->getIndex()I

    move-result v5

    aput v6, v4, v5

    .line 22
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 26
    .end local v1    # "e":Lcom/diotek/ime/framework/repository/FastRepository$KeyIntFR;
    :cond_0
    invoke-static {}, Lcom/diotek/ime/framework/repository/FastRepository$KeyBooleanFR;->values()[Lcom/diotek/ime/framework/repository/FastRepository$KeyBooleanFR;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [Z

    iput-object v4, p0, Lcom/diotek/ime/framework/repository/FastRepository;->mBooleanArray:[Z

    .line 27
    invoke-static {}, Lcom/diotek/ime/framework/repository/FastRepository$KeyBooleanFR;->values()[Lcom/diotek/ime/framework/repository/FastRepository$KeyBooleanFR;

    move-result-object v0

    .local v0, "arr$":[Lcom/diotek/ime/framework/repository/FastRepository$KeyBooleanFR;
    array-length v3, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 28
    .local v1, "e":Lcom/diotek/ime/framework/repository/FastRepository$KeyBooleanFR;
    iget-object v4, p0, Lcom/diotek/ime/framework/repository/FastRepository;->mBooleanArray:[Z

    invoke-virtual {v1}, Lcom/diotek/ime/framework/repository/FastRepository$KeyBooleanFR;->getIndex()I

    move-result v5

    aput-boolean v6, v4, v5

    .line 27
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 31
    .end local v1    # "e":Lcom/diotek/ime/framework/repository/FastRepository$KeyBooleanFR;
    :cond_1
    invoke-static {}, Lcom/diotek/ime/framework/repository/FastRepository$KeyStringFR;->values()[Lcom/diotek/ime/framework/repository/FastRepository$KeyStringFR;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [Ljava/lang/String;

    iput-object v4, p0, Lcom/diotek/ime/framework/repository/FastRepository;->mStringArray:[Ljava/lang/String;

    .line 32
    invoke-static {}, Lcom/diotek/ime/framework/repository/FastRepository$KeyStringFR;->values()[Lcom/diotek/ime/framework/repository/FastRepository$KeyStringFR;

    move-result-object v0

    .local v0, "arr$":[Lcom/diotek/ime/framework/repository/FastRepository$KeyStringFR;
    array-length v3, v0

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    .line 33
    .local v1, "e":Lcom/diotek/ime/framework/repository/FastRepository$KeyStringFR;
    iget-object v4, p0, Lcom/diotek/ime/framework/repository/FastRepository;->mStringArray:[Ljava/lang/String;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/repository/FastRepository$KeyStringFR;->getIndex()I

    move-result v5

    const-string v6, ""

    aput-object v6, v4, v5

    .line 32
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 35
    .end local v1    # "e":Lcom/diotek/ime/framework/repository/FastRepository$KeyStringFR;
    :cond_2
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/diotek/ime/framework/repository/FastRepository;
    .locals 2

    .prologue
    .line 12
    const-class v1, Lcom/diotek/ime/framework/repository/FastRepository;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/diotek/ime/framework/repository/FastRepository;->sInstance:Lcom/diotek/ime/framework/repository/FastRepository;

    if-nez v0, :cond_0

    .line 13
    new-instance v0, Lcom/diotek/ime/framework/repository/FastRepository;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/FastRepository;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/FastRepository;->sInstance:Lcom/diotek/ime/framework/repository/FastRepository;

    .line 16
    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/FastRepository;->sInstance:Lcom/diotek/ime/framework/repository/FastRepository;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 12
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getData(Lcom/diotek/ime/framework/repository/FastRepository$KeyIntFR;)I
    .locals 3
    .param p1, "key"    # Lcom/diotek/ime/framework/repository/FastRepository$KeyIntFR;

    .prologue
    .line 83
    const/4 v0, 0x0

    .line 85
    .local v0, "retVal":I
    iget-object v1, p0, Lcom/diotek/ime/framework/repository/FastRepository;->mIntegerArray:[I

    if-eqz v1, :cond_0

    .line 86
    iget-object v1, p0, Lcom/diotek/ime/framework/repository/FastRepository;->mIntegerArray:[I

    invoke-virtual {p1}, Lcom/diotek/ime/framework/repository/FastRepository$KeyIntFR;->getIndex()I

    move-result v2

    aget v0, v1, v2

    .line 89
    :cond_0
    return v0
.end method

.method public getData(Lcom/diotek/ime/framework/repository/FastRepository$KeyStringFR;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Lcom/diotek/ime/framework/repository/FastRepository$KeyStringFR;

    .prologue
    .line 103
    const-string v0, ""

    .line 105
    .local v0, "retVal":Ljava/lang/String;
    iget-object v1, p0, Lcom/diotek/ime/framework/repository/FastRepository;->mStringArray:[Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 106
    iget-object v1, p0, Lcom/diotek/ime/framework/repository/FastRepository;->mStringArray:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/diotek/ime/framework/repository/FastRepository$KeyStringFR;->getIndex()I

    move-result v2

    aget-object v0, v1, v2

    .line 109
    :cond_0
    return-object v0
.end method

.method public getData(Lcom/diotek/ime/framework/repository/FastRepository$KeyBooleanFR;)Z
    .locals 3
    .param p1, "key"    # Lcom/diotek/ime/framework/repository/FastRepository$KeyBooleanFR;

    .prologue
    .line 93
    const/4 v0, 0x0

    .line 95
    .local v0, "retVal":Z
    iget-object v1, p0, Lcom/diotek/ime/framework/repository/FastRepository;->mBooleanArray:[Z

    if-eqz v1, :cond_0

    .line 96
    iget-object v1, p0, Lcom/diotek/ime/framework/repository/FastRepository;->mBooleanArray:[Z

    invoke-virtual {p1}, Lcom/diotek/ime/framework/repository/FastRepository$KeyBooleanFR;->getIndex()I

    move-result v2

    aget-boolean v0, v1, v2

    .line 99
    :cond_0
    return v0
.end method

.method public setData(Lcom/diotek/ime/framework/repository/FastRepository$KeyBooleanFR;Z)V
    .locals 2
    .param p1, "key"    # Lcom/diotek/ime/framework/repository/FastRepository$KeyBooleanFR;
    .param p2, "value"    # Z

    .prologue
    .line 119
    iget-object v0, p0, Lcom/diotek/ime/framework/repository/FastRepository;->mBooleanArray:[Z

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/diotek/ime/framework/repository/FastRepository;->mBooleanArray:[Z

    invoke-virtual {p1}, Lcom/diotek/ime/framework/repository/FastRepository$KeyBooleanFR;->getIndex()I

    move-result v1

    aput-boolean p2, v0, v1

    .line 122
    :cond_0
    return-void
.end method

.method public setData(Lcom/diotek/ime/framework/repository/FastRepository$KeyIntFR;I)V
    .locals 2
    .param p1, "key"    # Lcom/diotek/ime/framework/repository/FastRepository$KeyIntFR;
    .param p2, "value"    # I

    .prologue
    .line 113
    iget-object v0, p0, Lcom/diotek/ime/framework/repository/FastRepository;->mIntegerArray:[I

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/diotek/ime/framework/repository/FastRepository;->mIntegerArray:[I

    invoke-virtual {p1}, Lcom/diotek/ime/framework/repository/FastRepository$KeyIntFR;->getIndex()I

    move-result v1

    aput p2, v0, v1

    .line 116
    :cond_0
    return-void
.end method

.method public setData(Lcom/diotek/ime/framework/repository/FastRepository$KeyStringFR;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Lcom/diotek/ime/framework/repository/FastRepository$KeyStringFR;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/diotek/ime/framework/repository/FastRepository;->mStringArray:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/diotek/ime/framework/repository/FastRepository;->mStringArray:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/diotek/ime/framework/repository/FastRepository$KeyStringFR;->getIndex()I

    move-result v1

    aput-object p2, v0, v1

    .line 128
    :cond_0
    return-void
.end method
