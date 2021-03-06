.class Lcom/android/server/ssrm/PredictedSurfaceTemperature;
.super Ljava/lang/Object;
.source "PredictedSurfaceTemperature.java"


# static fields
.field static final DEBUG:Z

.field private static final DEFAULT_TEMP:I = 0x12c

.field private static DEFAULT_WINDOW_SIZE:I = 0x0

.field private static LONG_RANGE_TEMP:I = 0x0

.field private static LONG_WINDOW_SIZE:I = 0x0

.field static final TAG:Ljava/lang/String; = "TemperatureCalculator"

.field private static initNumber:I

.field private static initWindowSize:Z

.field private static isInitComplete:Z

.field private static mCalculatedTemperature:I

.field private static mPST:I

.field private static wMean:[I

.field private static windowSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 27
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->DEBUG:Z

    .line 31
    const/16 v0, 0x1ea

    sput v0, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->LONG_RANGE_TEMP:I

    .line 33
    const/16 v0, 0x1e

    sput v0, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->LONG_WINDOW_SIZE:I

    .line 35
    const/16 v0, 0xa

    sput v0, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->DEFAULT_WINDOW_SIZE:I

    .line 37
    sget v0, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->DEFAULT_WINDOW_SIZE:I

    new-array v0, v0, [I

    sput-object v0, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->wMean:[I

    .line 39
    sput v2, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->initNumber:I

    .line 41
    sget v0, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->DEFAULT_WINDOW_SIZE:I

    sput v0, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->windowSize:I

    .line 43
    sput v2, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->mCalculatedTemperature:I

    .line 45
    sput v2, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->mPST:I

    .line 47
    sput-boolean v2, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->isInitComplete:Z

    .line 49
    sput-boolean v2, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->initWindowSize:Z

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/ssrm_v2.pst_init"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->changePstInitalValues()V

    .line 55
    :cond_0
    return-void
.end method

.method public static checkNeedToChangeWindowSize(I)V
    .locals 6
    .param p0, "mPST"    # I

    .prologue
    const/4 v5, 0x0

    .line 97
    sget v2, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->LONG_RANGE_TEMP:I

    if-lt p0, v2, :cond_3

    .line 98
    sget v2, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->windowSize:I

    sget v3, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->LONG_WINDOW_SIZE:I

    if-eq v2, v3, :cond_2

    .line 99
    sget v2, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->LONG_WINDOW_SIZE:I

    sput v2, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->windowSize:I

    .line 100
    sget v2, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->DEFAULT_WINDOW_SIZE:I

    new-array v1, v2, [I

    .line 101
    .local v1, "wMeanPrev":[I
    sget-object v2, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->wMean:[I

    invoke-virtual {v2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "wMeanPrev":[I
    check-cast v1, [I

    .line 102
    .restart local v1    # "wMeanPrev":[I
    sput v5, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->mCalculatedTemperature:I

    .line 103
    sget v2, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->LONG_WINDOW_SIZE:I

    new-array v2, v2, [I

    sput-object v2, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->wMean:[I

    .line 104
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v2, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->LONG_WINDOW_SIZE:I

    if-ge v0, v2, :cond_1

    .line 105
    sget v2, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->DEFAULT_WINDOW_SIZE:I

    if-ge v0, v2, :cond_0

    .line 106
    sget-object v2, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->wMean:[I

    aget v3, v1, v0

    aput v3, v2, v0

    .line 110
    :goto_1
    sget v2, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->mCalculatedTemperature:I

    sget-object v3, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->wMean:[I

    aget v3, v3, v0

    add-int/2addr v2, v3

    sput v2, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->mCalculatedTemperature:I

    .line 104
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 108
    :cond_0
    sget-object v2, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->wMean:[I

    aput p0, v2, v0

    goto :goto_1

    .line 112
    :cond_1
    sput v5, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->initNumber:I

    .line 128
    .end local v0    # "i":I
    .end local v1    # "wMeanPrev":[I
    :cond_2
    :goto_2
    return-void

    .line 115
    :cond_3
    sget v2, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->windowSize:I

    sget v3, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->DEFAULT_WINDOW_SIZE:I

    if-eq v2, v3, :cond_2

    .line 116
    sget v2, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->DEFAULT_WINDOW_SIZE:I

    sput v2, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->windowSize:I

    .line 117
    sget v2, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->LONG_WINDOW_SIZE:I

    new-array v1, v2, [I

    .line 118
    .restart local v1    # "wMeanPrev":[I
    sget-object v2, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->wMean:[I

    invoke-virtual {v2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "wMeanPrev":[I
    check-cast v1, [I

    .line 119
    .restart local v1    # "wMeanPrev":[I
    sput v5, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->mCalculatedTemperature:I

    .line 120
    sget v2, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->DEFAULT_WINDOW_SIZE:I

    new-array v2, v2, [I

    sput-object v2, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->wMean:[I

    .line 121
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    sget v2, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->DEFAULT_WINDOW_SIZE:I

    if-ge v0, v2, :cond_4

    .line 122
    sget-object v2, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->wMean:[I

    sget v3, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->LONG_WINDOW_SIZE:I

    sget v4, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->DEFAULT_WINDOW_SIZE:I

    sub-int/2addr v3, v4

    add-int/2addr v3, v0

    aget v3, v1, v3

    aput v3, v2, v0

    .line 123
    sget v2, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->mCalculatedTemperature:I

    sget-object v3, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->wMean:[I

    aget v3, v3, v0

    add-int/2addr v2, v3

    sput v2, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->mCalculatedTemperature:I

    .line 121
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 125
    :cond_4
    sput v5, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->initNumber:I

    goto :goto_2
.end method


# virtual methods
.method public WeightedMean(I)I
    .locals 6
    .param p1, "temper"    # I

    .prologue
    const/4 v5, 0x1

    .line 58
    const/16 v1, -0x64

    .line 59
    .local v1, "mTemperature":I
    if-lez p1, :cond_0

    const/16 v2, 0x3e8

    if-lt p1, v2, :cond_1

    .line 60
    :cond_0
    const/16 v2, 0x12c

    .line 93
    :goto_0
    return v2

    .line 63
    :cond_1
    sget-boolean v2, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->isInitComplete:Z

    if-nez v2, :cond_5

    .line 64
    sget-boolean v2, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->initWindowSize:Z

    if-nez v2, :cond_3

    .line 65
    sget v2, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->DEFAULT_WINDOW_SIZE:I

    new-array v2, v2, [I

    sput-object v2, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->wMean:[I

    .line 66
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget v2, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->DEFAULT_WINDOW_SIZE:I

    if-ge v0, v2, :cond_2

    .line 67
    sget-object v2, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->wMean:[I

    aput p1, v2, v0

    .line 68
    sget v2, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->mCalculatedTemperature:I

    sget-object v3, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->wMean:[I

    aget v3, v3, v0

    add-int/2addr v2, v3

    sput v2, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->mCalculatedTemperature:I

    .line 66
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 70
    :cond_2
    sput-boolean v5, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->initWindowSize:Z

    .line 72
    .end local v0    # "i":I
    :cond_3
    sget v2, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->mCalculatedTemperature:I

    sget-object v3, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->wMean:[I

    sget v4, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->initNumber:I

    aget v3, v3, v4

    sub-int/2addr v2, v3

    sput v2, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->mCalculatedTemperature:I

    .line 73
    sget-object v2, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->wMean:[I

    sget v3, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->initNumber:I

    aput p1, v2, v3

    .line 74
    sget v2, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->mCalculatedTemperature:I

    add-int/2addr v2, p1

    sput v2, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->mCalculatedTemperature:I

    .line 75
    sget v2, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->initNumber:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->initNumber:I

    .line 76
    sget v2, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->initNumber:I

    sget v3, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->windowSize:I

    if-ne v2, v3, :cond_4

    .line 77
    sput-boolean v5, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->isInitComplete:Z

    .line 79
    :cond_4
    sget v2, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->mCalculatedTemperature:I

    sget v3, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->windowSize:I

    div-int/2addr v2, v3

    goto :goto_0

    .line 82
    :cond_5
    sget v2, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->initNumber:I

    sget v3, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->windowSize:I

    if-ne v2, v3, :cond_6

    .line 83
    const/4 v2, 0x0

    sput v2, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->initNumber:I

    .line 86
    :cond_6
    sget-object v2, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->wMean:[I

    sget v3, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->initNumber:I

    aget v1, v2, v3

    .line 87
    sget-object v2, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->wMean:[I

    sget v3, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->initNumber:I

    aput p1, v2, v3

    .line 88
    sget v2, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->mCalculatedTemperature:I

    sub-int/2addr v2, v1

    sput v2, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->mCalculatedTemperature:I

    .line 89
    sget v2, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->mCalculatedTemperature:I

    add-int/2addr v2, p1

    sput v2, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->mCalculatedTemperature:I

    .line 90
    sget v2, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->initNumber:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->initNumber:I

    .line 91
    sget v2, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->mCalculatedTemperature:I

    sget v3, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->windowSize:I

    div-int/2addr v2, v3

    sput v2, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->mPST:I

    .line 92
    sget v2, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->mPST:I

    invoke-static {v2}, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->checkNeedToChangeWindowSize(I)V

    .line 93
    sget v2, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->mPST:I

    goto/16 :goto_0
.end method

.method changePstInitalValues()V
    .locals 6

    .prologue
    .line 131
    const/4 v2, 0x0

    .line 132
    .local v2, "strTemp":Ljava/lang/String;
    const/4 v0, 0x0

    .line 134
    .local v0, "buf":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    const-string v4, "/data/system/ssrm_v2.pst_init"

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 135
    .end local v0    # "buf":Ljava/io/BufferedReader;
    .local v1, "buf":Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 136
    const-string v3, "long_range_temp"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 137
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sput v3, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->LONG_RANGE_TEMP:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 144
    :catch_0
    move-exception v3

    move-object v0, v1

    .line 147
    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v0    # "buf":Ljava/io/BufferedReader;
    :goto_1
    if-eqz v0, :cond_1

    .line 148
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 153
    :cond_1
    :goto_2
    const-string v3, "TemperatureCalculator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "INIT Value change :: LONG_RANGE_TEMP = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->LONG_RANGE_TEMP:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , LONG_WINDOW_SIZE = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->LONG_WINDOW_SIZE:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , DEFAULT_WINDOW_SIZE = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->DEFAULT_WINDOW_SIZE:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    return-void

    .line 138
    .end local v0    # "buf":Ljava/io/BufferedReader;
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    :cond_2
    :try_start_3
    const-string v3, "long_window_size"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 139
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sput v3, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->LONG_WINDOW_SIZE:I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 146
    :catchall_0
    move-exception v3

    move-object v0, v1

    .line 147
    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v0    # "buf":Ljava/io/BufferedReader;
    :goto_3
    if-eqz v0, :cond_3

    .line 148
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 146
    :cond_3
    :goto_4
    throw v3

    .line 140
    .end local v0    # "buf":Ljava/io/BufferedReader;
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    :cond_4
    :try_start_5
    const-string v3, "default_window_size"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 141
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sput v3, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->DEFAULT_WINDOW_SIZE:I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 147
    :cond_5
    if-eqz v1, :cond_6

    .line 148
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :cond_6
    :goto_5
    move-object v0, v1

    .line 152
    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v0    # "buf":Ljava/io/BufferedReader;
    goto :goto_2

    .line 150
    :catch_1
    move-exception v3

    goto :goto_2

    :catch_2
    move-exception v4

    goto :goto_4

    .end local v0    # "buf":Ljava/io/BufferedReader;
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    :catch_3
    move-exception v3

    goto :goto_5

    .line 146
    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v0    # "buf":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v3

    goto :goto_3

    .line 144
    :catch_4
    move-exception v3

    goto :goto_1
.end method

.method resetTemperature(I)V
    .locals 4
    .param p1, "t"    # I

    .prologue
    const/4 v3, 0x0

    .line 159
    const-string v0, "TemperatureCalculator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetTemperature:: t = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    sput-boolean v3, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->isInitComplete:Z

    .line 161
    sput-boolean v3, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->initWindowSize:Z

    .line 162
    sput v3, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->mCalculatedTemperature:I

    .line 163
    return-void
.end method
