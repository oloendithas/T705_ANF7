.class public Lcom/diotek/ime/framework/engine/dhwr/HwrRectInfomation;
.super Ljava/lang/Object;
.source "HwrRectInfomation.java"


# static fields
.field public static final RECOGNIZED_STRING:I = 0x1

.field public static final STROKE:I


# instance fields
.field mIndex:I

.field mString:Ljava/lang/String;

.field mType:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Landroid/graphics/RectF;I)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "str"    # Ljava/lang/String;
    .param p3, "rect"    # Landroid/graphics/RectF;
    .param p4, "index"    # I

    .prologue
    const/4 v1, -0x1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput v1, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrRectInfomation;->mType:I

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrRectInfomation;->mString:Ljava/lang/String;

    .line 11
    iput v1, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrRectInfomation;->mIndex:I

    .line 14
    iput p1, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrRectInfomation;->mType:I

    .line 15
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 16
    iput-object p2, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrRectInfomation;->mString:Ljava/lang/String;

    .line 18
    :cond_0
    iput p4, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrRectInfomation;->mIndex:I

    .line 19
    return-void
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrRectInfomation;->mIndex:I

    return v0
.end method

.method public getString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrRectInfomation;->mString:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/diotek/ime/framework/engine/dhwr/HwrRectInfomation;->mType:I

    return v0
.end method
