.class public final enum Lcom/nuance/connect/internal/common/Document$DocumentType;
.super Ljava/lang/Enum;
.source "Document.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/internal/common/Document;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DocumentType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/connect/internal/common/Document$DocumentType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nuance/connect/internal/common/Document$DocumentType;

.field public static final enum DATA_OPT_IN:Lcom/nuance/connect/internal/common/Document$DocumentType;

.field public static final enum EULA:Lcom/nuance/connect/internal/common/Document$DocumentType;

.field public static final enum PRIVACY_POLICY:Lcom/nuance/connect/internal/common/Document$DocumentType;

.field public static final enum TERMS_OF_SERVICE:Lcom/nuance/connect/internal/common/Document$DocumentType;


# instance fields
.field private documentClass:I

.field private id:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 36
    new-instance v0, Lcom/nuance/connect/internal/common/Document$DocumentType;

    const-string v1, "TERMS_OF_SERVICE"

    invoke-direct {v0, v1, v5, v2, v2}, Lcom/nuance/connect/internal/common/Document$DocumentType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/nuance/connect/internal/common/Document$DocumentType;->TERMS_OF_SERVICE:Lcom/nuance/connect/internal/common/Document$DocumentType;

    .line 38
    new-instance v0, Lcom/nuance/connect/internal/common/Document$DocumentType;

    const-string v1, "EULA"

    invoke-direct {v0, v1, v2, v3, v2}, Lcom/nuance/connect/internal/common/Document$DocumentType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/nuance/connect/internal/common/Document$DocumentType;->EULA:Lcom/nuance/connect/internal/common/Document$DocumentType;

    .line 40
    new-instance v0, Lcom/nuance/connect/internal/common/Document$DocumentType;

    const-string v1, "PRIVACY_POLICY"

    invoke-direct {v0, v1, v3, v4, v2}, Lcom/nuance/connect/internal/common/Document$DocumentType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/nuance/connect/internal/common/Document$DocumentType;->PRIVACY_POLICY:Lcom/nuance/connect/internal/common/Document$DocumentType;

    .line 42
    new-instance v0, Lcom/nuance/connect/internal/common/Document$DocumentType;

    const-string v1, "DATA_OPT_IN"

    invoke-direct {v0, v1, v4, v6, v2}, Lcom/nuance/connect/internal/common/Document$DocumentType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/nuance/connect/internal/common/Document$DocumentType;->DATA_OPT_IN:Lcom/nuance/connect/internal/common/Document$DocumentType;

    .line 35
    new-array v0, v6, [Lcom/nuance/connect/internal/common/Document$DocumentType;

    sget-object v1, Lcom/nuance/connect/internal/common/Document$DocumentType;->TERMS_OF_SERVICE:Lcom/nuance/connect/internal/common/Document$DocumentType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nuance/connect/internal/common/Document$DocumentType;->EULA:Lcom/nuance/connect/internal/common/Document$DocumentType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nuance/connect/internal/common/Document$DocumentType;->PRIVACY_POLICY:Lcom/nuance/connect/internal/common/Document$DocumentType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nuance/connect/internal/common/Document$DocumentType;->DATA_OPT_IN:Lcom/nuance/connect/internal/common/Document$DocumentType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/nuance/connect/internal/common/Document$DocumentType;->$VALUES:[Lcom/nuance/connect/internal/common/Document$DocumentType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .param p3, "id"    # I
    .param p4, "documentClass"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 48
    iput p3, p0, Lcom/nuance/connect/internal/common/Document$DocumentType;->id:I

    .line 49
    iput p4, p0, Lcom/nuance/connect/internal/common/Document$DocumentType;->documentClass:I

    .line 50
    return-void
.end method

.method public static fromId(II)Lcom/nuance/connect/internal/common/Document$DocumentType;
    .locals 5
    .param p0, "id"    # I
    .param p1, "classId"    # I

    .prologue
    .line 61
    invoke-static {}, Lcom/nuance/connect/internal/common/Document$DocumentType;->values()[Lcom/nuance/connect/internal/common/Document$DocumentType;

    move-result-object v0

    .local v0, "arr$":[Lcom/nuance/connect/internal/common/Document$DocumentType;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 62
    .local v1, "doc":Lcom/nuance/connect/internal/common/Document$DocumentType;
    invoke-virtual {v1}, Lcom/nuance/connect/internal/common/Document$DocumentType;->getDocTypeId()I

    move-result v4

    if-ne v4, p0, :cond_0

    invoke-virtual {v1}, Lcom/nuance/connect/internal/common/Document$DocumentType;->getDocumentClassId()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 66
    .end local v1    # "doc":Lcom/nuance/connect/internal/common/Document$DocumentType;
    :goto_1
    return-object v1

    .line 61
    .restart local v1    # "doc":Lcom/nuance/connect/internal/common/Document$DocumentType;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 66
    .end local v1    # "doc":Lcom/nuance/connect/internal/common/Document$DocumentType;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/connect/internal/common/Document$DocumentType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 35
    const-class v0, Lcom/nuance/connect/internal/common/Document$DocumentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/internal/common/Document$DocumentType;

    return-object v0
.end method

.method public static values()[Lcom/nuance/connect/internal/common/Document$DocumentType;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/nuance/connect/internal/common/Document$DocumentType;->$VALUES:[Lcom/nuance/connect/internal/common/Document$DocumentType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/connect/internal/common/Document$DocumentType;

    return-object v0
.end method


# virtual methods
.method public getDocTypeId()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/nuance/connect/internal/common/Document$DocumentType;->id:I

    return v0
.end method

.method public getDocumentClassId()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/nuance/connect/internal/common/Document$DocumentType;->documentClass:I

    return v0
.end method
