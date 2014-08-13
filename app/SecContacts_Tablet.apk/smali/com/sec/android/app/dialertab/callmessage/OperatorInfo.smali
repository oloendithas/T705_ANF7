.class public Lcom/sec/android/app/dialertab/callmessage/OperatorInfo;
.super Ljava/lang/Object;
.source "OperatorInfo.java"


# static fields
.field public static final OPERATOR_DEFAULT:I = 0x1000

.field public static final OPERATOR_KTT:I = 0x1003

.field public static final OPERATOR_LGT:I = 0x1002

.field public static final OPERATOR_SKT:I = 0x1001

.field private static mOperatorObject:Lcom/sec/android/app/dialertab/callmessage/OperatorInfo;


# instance fields
.field private mCurrentOperator:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/sec/android/app/dialertab/callmessage/OperatorInfo;

    invoke-direct {v0}, Lcom/sec/android/app/dialertab/callmessage/OperatorInfo;-><init>()V

    sput-object v0, Lcom/sec/android/app/dialertab/callmessage/OperatorInfo;->mOperatorObject:Lcom/sec/android/app/dialertab/callmessage/OperatorInfo;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/16 v0, 0x1000

    iput v0, p0, Lcom/sec/android/app/dialertab/callmessage/OperatorInfo;->mCurrentOperator:I

    .line 32
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/callmessage/OperatorInfo;->readOpeartor()V

    .line 33
    return-void
.end method

.method public static getInstance()Lcom/sec/android/app/dialertab/callmessage/OperatorInfo;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/sec/android/app/dialertab/callmessage/OperatorInfo;->mOperatorObject:Lcom/sec/android/app/dialertab/callmessage/OperatorInfo;

    return-object v0
.end method

.method private readOpeartor()V
    .locals 2

    .prologue
    .line 40
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, "salesCode":Ljava/lang/String;
    const-string v1, "SKT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SKC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 42
    :cond_0
    const/16 v1, 0x1001

    iput v1, p0, Lcom/sec/android/app/dialertab/callmessage/OperatorInfo;->mCurrentOperator:I

    .line 48
    :cond_1
    :goto_0
    return-void

    .line 43
    :cond_2
    const-string v1, "KTT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "KTC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 44
    :cond_3
    const/16 v1, 0x1003

    iput v1, p0, Lcom/sec/android/app/dialertab/callmessage/OperatorInfo;->mCurrentOperator:I

    goto :goto_0

    .line 45
    :cond_4
    const-string v1, "LGT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "LUC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 46
    :cond_5
    const/16 v1, 0x1002

    iput v1, p0, Lcom/sec/android/app/dialertab/callmessage/OperatorInfo;->mCurrentOperator:I

    goto :goto_0
.end method


# virtual methods
.method public getCurrentOpeartor()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/sec/android/app/dialertab/callmessage/OperatorInfo;->mCurrentOperator:I

    return v0
.end method
